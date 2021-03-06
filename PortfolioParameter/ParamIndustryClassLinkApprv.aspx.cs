using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using DMS.CuBESCore;
using DMS.DBConnection;
using System.Configuration;
namespace SME.PortfolioParameter
{
	/// <summary>
	/// Summary description for ParamIndustryClassLinkApprv.
	/// </summary>
	public partial class ParamIndustryClassLinkApprv : System.Web.UI.Page
	{
	
		protected Connection conn = new Connection(System.Configuration.ConfigurationSettings.AppSettings["connectionString"]);
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			if (!IsPostBack)
			{
				bindData();
			}
			DTG_APPR.PageIndexChanged += new DataGridPageChangedEventHandler(this.Grid_Change);
		}

		private void bindData()
		{
			conn.QueryString = "select BI_SEQ, BI_DESC,PD_KSEBMCD, PENDINGSTATUS, (select PD_KSEBMDESC from PD_RF_KSEBM B where A.PD_KSEBMCD = B.PD_KSEBMCD)PD_KSEBMDESC, A.PD_INDUSTRY_NAMECD, (select C.PD_INDUSTRY_NAME from PD_RF_INDUSTRY_CLASS C where A.PD_INDUSTRY_NAMECD = C.PD_INDUSTRY_NAMECD)PD_INDUSTRY_NAME, E.PD_INDUSTRY_CLASSCD, (select D.PD_INDUSTRY_CLASS from PD_RF_INDUSTRY_CLASS_CAP D where D.PD_INDUSTRY_CLASSCD = E.PD_INDUSTRY_CLASSCD)PD_INDUSTRY_CLASS, F.PD_RATIO_LIMIT from PD_PENDING_RF_INDUSTRYCLASS_LINK A left join PD_RF_INDUSTRY_CLASS E on A.PD_INDUSTRY_NAMECD = E.PD_INDUSTRY_NAMECD left join PD_RF_INDUSTRY_CLASS_CAP F on E.PD_INDUSTRY_CLASSCD = F.PD_INDUSTRY_CLASSCD where A.ACTIVE='1'";
			conn.ExecuteQuery();
			
			DataTable dt = new DataTable();
			dt = conn.GetDataTable().Copy();
			DTG_APPR.DataSource = dt;
			try
			{
				this.DTG_APPR.DataBind();
			}
			catch
			{
				try
				{
					this.DTG_APPR.CurrentPageIndex = DTG_APPR.CurrentPageIndex - 1;
					this.DTG_APPR.DataBind();
				}
				catch{}
			}


			for (int i = 0; i < DTG_APPR.Items.Count; i++)
			{
				if (DTG_APPR.Items[i].Cells[9].Text.Trim() == "0")
				{
					DTG_APPR.Items[i].Cells[9].Text = "UPDATE";
				}
				else if (DTG_APPR.Items[i].Cells[9].Text.Trim() == "1")
				{
					DTG_APPR.Items[i].Cells[9].Text = "INSERT";
				}
				else if (DTG_APPR.Items[i].Cells[9].Text.Trim() == "2")
				{
					DTG_APPR.Items[i].Cells[9].Text = "DELETE";
				}
			}
		}

		
		private void performRequest(int row)
		{
			try 
			{
				string c = DTG_APPR.Items[row].Cells[0].Text.Trim();
				string d = DTG_APPR.Items[row].Cells[5].Text.Trim();

				conn.QueryString = "exec PARAM_PORTFOLIO_RFINDUSTRYCLASSLINK_APPRV '" + c + "','"+d+"', '1', '" + Session["UserID"].ToString() + "'";
				conn.ExecuteNonQuery();				
			} 
			catch {}
		}

		private void deleteData(int row)
		{
			try 
			{
				string c = DTG_APPR.Items[row].Cells[0].Text.Trim();
				string d = DTG_APPR.Items[row].Cells[5].Text.Trim();
				
				conn.QueryString = "exec PARAM_PORTFOLIO_RFINDUSTRYCLASSLINK_APPRV '" + c + "','"+d+"', '1', '" + Session["UserID"].ToString() + "'";
				conn.ExecuteNonQuery();
			} 
			catch {}
		}

		#region Web Form Designer generated code
		override protected void OnInit(EventArgs e)
		{
			//
			// CODEGEN: This call is required by the ASP.NET Web Form Designer.
			//
			InitializeComponent();
			base.OnInit(e);
		}
		
		/// <summary>
		/// Required method for Designer support - do not modify
		/// the contents of this method with the code editor.
		/// </summary>
		private void InitializeComponent()
		{    
			this.DTG_APPR.ItemCommand += new System.Web.UI.WebControls.DataGridCommandEventHandler(this.DTG_APPR_ItemCommand);

		}
		#endregion

		void Grid_Change(Object sender, DataGridPageChangedEventArgs e) 
		{
			DTG_APPR.CurrentPageIndex = e.NewPageIndex;
			bindData();	
		}

		protected void BTN_BACK_Click(object sender, System.Web.UI.ImageClickEventArgs e)
		{
			Response.Redirect("PDParamApprv.aspx?mc="+Request.QueryString["mc"]+"&moduleId=01");
		}

		protected void BTN_SUBMIT_Click(object sender, System.EventArgs e)
		{
			for (int i = 0; i < DTG_APPR.Items.Count; i++)
			{
				try
					
				{
					RadioButton rbA = (RadioButton) DTG_APPR.Items[i].FindControl("Radiobutton1"),
						rbR = (RadioButton) DTG_APPR.Items[i].FindControl("Radiobutton2");
					if (rbA.Checked)
					{
						performRequest(i);
					}
					else if (rbR.Checked)
					{
						deleteData(i);
					}
				} 
				catch {}
			}
			bindData();
		}

		private void DTG_APPR_ItemCommand(object source, System.Web.UI.WebControls.DataGridCommandEventArgs e)
		{
			int i;
			switch(((LinkButton)e.CommandSource).CommandName)
			{
				case "allAppr":
					for (i = 0; i < DTG_APPR.PageSize; i++)
					{
						try
						{
							RadioButton rbA = (RadioButton) DTG_APPR.Items[i].FindControl("Radiobutton1"),
								rbB = (RadioButton) DTG_APPR.Items[i].FindControl("Radiobutton2"),
								rbC = (RadioButton) DTG_APPR.Items[i].FindControl("Radiobutton3");
							rbB.Checked = false;
							rbC.Checked = false;
							rbA.Checked = true;
						} 
						catch {}
					}
					break;
				case "allReject":
					for (i = 0; i < DTG_APPR.PageSize; i++)
					{
						try
						{
							RadioButton rbA = (RadioButton) DTG_APPR.Items[i].FindControl("Radiobutton1"),
								rbB = (RadioButton) DTG_APPR.Items[i].FindControl("Radiobutton2"),
								rbC = (RadioButton) DTG_APPR.Items[i].FindControl("Radiobutton3");
							rbA.Checked = false;
							rbC.Checked = false;
							rbB.Checked = true;
						} 
						catch {}
					}
					break;
				case "allPend":
					for (i = 0; i < DTG_APPR.PageSize; i++)
					{
						try
						{
							RadioButton rbA = (RadioButton) DTG_APPR.Items[i].FindControl("Radiobutton1"),
								rbB = (RadioButton) DTG_APPR.Items[i].FindControl("Radiobutton2"),
								rbC = (RadioButton) DTG_APPR.Items[i].FindControl("Radiobutton3");
							rbA.Checked = false;
							rbB.Checked = false;
							rbC.Checked = true;
						} 
						catch {}
					}
					break;
				default:
					// Do nothing.
					break;
			}
		}	
	}
}
