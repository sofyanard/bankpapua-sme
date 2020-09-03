<%@ Register TagPrefix="cc1" Namespace="Microsoft.Samples.ReportingServices" Assembly="ReportViewer" %>
<%@ Page language="c#" Codebehind="RptCollateralCoverage.aspx.cs" AutoEventWireup="True" Inherits="SME.SourceSMEReport.ILPDashBoard.RptCollateralCoverage" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>RptCollateralCoverage</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="../style.css" type="text/css" rel="stylesheet">
		<script language="javascript">
		function Batal()
		{
			document.Form1.DDL_BUSINESSUNIT.value	= "";
			document.Form1.DDL_AREA.value	= "";
			document.Form1.DDL_BRANCH.value	= "";
		}
		</script>
		<!-- #include file="../../include/cek_all.html"-->
		<!-- #include file="../../include/cek_mandatoryOnly.html" -->
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<center>
				<TABLE id="Table11" cellSpacing="2" cellPadding="2" width="100%">
					<TR>
						<TD width="20%" height="35"></TD>
						<td align="right"><asp:imagebutton id="btn_back" runat="server" ImageUrl="../../image/back.jpg" onclick="btn_back_Click"></asp:imagebutton><A href="../../Body.aspx"><IMG src="../../Image/MainMenu.jpg"></A><A href="../../Logout.aspx" target="_top"><IMG src="../../Image/Logout.jpg"></A></td>
					</TR>
					<TR>
						<TD style="HEIGHT: 124px" vAlign="top" align="center" colSpan="2" height="124">
							<TABLE id="Table1" cellSpacing="2" cellPadding="2" width="400" style="HEIGHT: 167px">
								<TR>
									<TD class="tdHeader1" colSpan="2">COLLATERAL COVERAGE&nbsp;
										<asp:label id="Label1" runat="server" Visible="False">Label</asp:label><asp:label id="LBL_BU" runat="server" Visible="False">LBL_BU</asp:label></TD>
								</TR>
								<TR>
									<TD class="td" style="HEIGHT: 36px" vAlign="top" width="70%">
										<TABLE id="Table6" cellSpacing="0" cellPadding="0" width="500">
											<TR>
												<TD class="TDBGColor1" style="WIDTH: 171px">Segment</TD>
												<TD style="WIDTH: 1px"></TD>
												<TD class="TDBGColorValue"><asp:dropdownlist id="DDL_BUSINESSUNIT" runat="server" AutoPostBack="false"></asp:dropdownlist></TD>
											</TR>
											<TR>
												<TD class="TDBGColor1" style="WIDTH: 171px">Region/Group</TD>
												<TD style="WIDTH: 1px"></TD>
												<TD class="TDBGColorValue"><asp:dropdownlist id="DDL_AREA" runat="server" AutoPostBack="True" onselectedindexchanged="DDL_AREA_SelectedIndexChanged"></asp:dropdownlist></TD>
											</TR>
											<TR>
												<TD class="TDBGColor1" style="WIDTH: 171px">unit</TD>
												<TD style="WIDTH: 1px"></TD>
												<TD class="TDBGColorValue"><asp:dropdownlist id="DDL_BRANCH" runat="server" AutoPostBack="false"></asp:dropdownlist></TD>
											</TR>
											<!-- Additional Field : Right -->
										</TABLE>
									</TD>
								</TR>
								<TR>
									<TD class="TDBGColor2" vAlign="top" align="center" width="50%" colSpan="2"><asp:button id="BTN_LIHAT" runat="server" CssClass="Button1" Text="Find" onclick="BTN_LIHAT_Click"></asp:button>&nbsp;
										<input class="Button1" id="Button2" onclick="Batal()" type="button" value="Cancel" name="Button2">&nbsp;<asp:button id="BTN_PRINT" runat="server" CssClass="Button1" Text="Print" onclick="BTN_PRINT_Click"></asp:button>&nbsp;
									</TD>
								</TR>
							</TABLE>
						</TD>
					</TR>
					<TR align="center">
						<TD colSpan="2"><cc1:reportviewer id="ReportViewer1" runat="server" Width="100%" Height="510px" Parameters="False"></cc1:reportviewer></TD>
					</TR>
				</TABLE>
			</center>
		</form>
	</body>
</HTML>
