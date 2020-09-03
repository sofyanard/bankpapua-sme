<%@ Page language="c#" Codebehind="M21M22PerubahanJaminan.aspx.cs" AutoEventWireup="True" Inherits="SME.RejectMaintenanceDE.StrucCreditDetailM22" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>StrucCreditDetailM22</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../style.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<TABLE id="Table1" cellSpacing="2" cellPadding="2" width="100%">
				<tr>
					<td class="tdHeader1" align="center" width="100%" colSpan="2"><asp:label id="LBL_CU_REF" runat="server" Visible="False"></asp:label><asp:label id="LBL_APPTYPE" runat="server" Visible="False"></asp:label><asp:label id="LBL_REGNO" runat="server" Visible="False"></asp:label><asp:label id="LBL_PRODID" runat="server" Visible="False"></asp:label><asp:label id="LBL_PRODUCT" runat="server" Font-Bold="True"></asp:label>
						<asp:label id="LBL_PROD_SEQ" runat="server" Font-Bold="True"></asp:label></td>
				</tr>
				<TR>
					<TD vAlign="top" width="50%">
						<FIELDSET>
							<TABLE id="Table2" cellSpacing="0" cellPadding="0" width="100%">
								<TR>
									<TD class="TDBGColor1" width="170">Jenis Pengajuan</TD>
									<TD style="WIDTH: 15px"></TD>
									<TD class="TDBGColorValue"><asp:textbox id="TXT_APPTYPE" runat="server" Width="168px" ReadOnly="True"></asp:textbox></TD>
								</TR>
								<TR>
									<TD class="TDBGColor1">Jenis Kredit</TD>
									<TD style="WIDTH: 1px"></TD>
									<TD class="TDBGColorValue"><asp:textbox id="TXT_PRODUCT" runat="server" Width="168px" ReadOnly="True" AutoPostBack="True"></asp:textbox></TD>
								</TR>
								<TR>
									<TD class="TDBGColor1">
										Pembentukan</TD>
									<TD style="WIDTH: 1px"></TD>
									<TD class="TDBGColorValue"><asp:textbox id="TXT_REVOLVING" runat="server" Width="168px" ReadOnly="True" AutoPostBack="True"></asp:textbox></TD>
								</TR>
								<TR>
									<TD class="TDBGColor1">Limit
										<asp:label id="LBL_CURRENCY" runat="server"></asp:label></TD>
									<TD style="WIDTH: 1px"></TD>
									<TD class="TDBGColorValue"><asp:textbox id="TXT_CP_LIMIT" runat="server" Width="168px" ReadOnly="True" CssClass="angka"></asp:textbox></TD>
								</TR>
								<TR>
									<TD class="TDBGColor1">AA NO</TD>
									<TD style="WIDTH: 1px"></TD>
									<TD class="TDBGColorValue">
										<asp:textbox id="TXT_AA_NO" runat="server" Width="168px"></asp:textbox></TD>
								</TR>
								<TR>
									<TD class="TDBGColor1">ACC SEQ</TD>
									<TD style="WIDTH: 1px"></TD>
									<TD class="TDBGColorValue">
										<asp:textbox id="TXT_ACCSEQ" runat="server" Width="168px"></asp:textbox></TD>
								</TR>
							</TABLE>
						</FIELDSET>
					</TD>
					<TD vAlign="top" width="50%">
						<FIELDSET>
							<TABLE id="Table3" cellSpacing="0" cellPadding="0" width="100%">
								<TR>
									<TD class="TDBGColor1" width="170" style="HEIGHT: 22px">Tenor</TD>
									<TD style="WIDTH: 15px; HEIGHT: 22px"></TD>
									<TD class="TDBGColorValue" style="HEIGHT: 22px"><asp:textbox id="TXT_JANGKAWAKTU" runat="server" CssClass="angka" MaxLength="2" Columns="4" ReadOnly="True"></asp:textbox>&nbsp;
										<asp:label id="LBL_TENORCODE" runat="server"></asp:label></TD>
								</TR>
								<TR>
									<TD class="TDBGColor1">Keterangan</TD>
									<TD></TD>
									<TD class="TDBGColorValue"><asp:textbox id="TXT_CP_KETERANGAN" runat="server" Width="100%" TextMode="MultiLine" Height="60px"></asp:textbox></TD>
								</TR>
							</TABLE>
						</FIELDSET>
					</TD>
				</TR>
				<TR>
					<TD class="TDBGColor2" vAlign="top" width="50%" colSpan="2">
						<asp:button id="update" runat="server" Width="75px" CssClass="Button1" Text="Save" onclick="update_Click"></asp:button></TD>
				</TR>
				<tr>
					<td class="tdHeader1" align="center" width="100%" colSpan="2">Jaminan Yang Diubah</td>
				</tr>
				<TR>
					<td align="center" colSpan="2"><ASP:DATAGRID id="DatGrd" runat="server" Width="70%" HorizontalAlign="Center" PageSize="3" AllowPaging="True"
							AutoGenerateColumns="False" CellPadding="1">
							<AlternatingItemStyle CssClass="TblAlternating"></AlternatingItemStyle>
							<Columns>
								<asp:BoundColumn DataField="cl_desc" HeaderText="Collateral Description">
									<HeaderStyle CssClass="tdSmallHeader"></HeaderStyle>
									<ItemStyle HorizontalAlign="Center"></ItemStyle>
								</asp:BoundColumn>
								<asp:BoundColumn DataField="coltypedesc" HeaderText="Collateral Type">
									<HeaderStyle Width="20%" CssClass="tdSmallHeader"></HeaderStyle>
									<ItemStyle HorizontalAlign="Center"></ItemStyle>
								</asp:BoundColumn>
								<asp:BoundColumn DataField="cl_percent" HeaderText="% of Use">
									<HeaderStyle Width="15%" CssClass="tdSmallHeader"></HeaderStyle>
									<ItemStyle HorizontalAlign="Right"></ItemStyle>
								</asp:BoundColumn>
								<asp:BoundColumn DataField="cl_value" HeaderText="Start Nomial">
									<HeaderStyle Width="15%" CssClass="tdSmallHeader"></HeaderStyle>
									<ItemStyle HorizontalAlign="Right"></ItemStyle>
								</asp:BoundColumn>
								<asp:BoundColumn HeaderText="End Nominal">
									<HeaderStyle Width="15%" CssClass="tdSmallHeader"></HeaderStyle>
									<ItemStyle HorizontalAlign="Right"></ItemStyle>
								</asp:BoundColumn>
							</Columns>
							<PagerStyle Mode="NumericPages"></PagerStyle>
						</ASP:DATAGRID></td>
				</TR>
				<TR>
					<TD colSpan="2"></TD>
				</TR>
				<tr>
					<td class="tdHeader1" align="center" colSpan="2">Jaminan Pengganti</td>
				</tr>
				<TR>
					<td align="center" colSpan="2"><ASP:DATAGRID id="DatGrd1" runat="server" Width="90%" HorizontalAlign="Center" PageSize="3" AllowPaging="True"
							AutoGenerateColumns="False" CellPadding="1">
							<AlternatingItemStyle CssClass="TblAlternating"></AlternatingItemStyle>
							<Columns>
								<asp:BoundColumn Visible="False" DataField="CL_SEQ"></asp:BoundColumn>
								<asp:BoundColumn DataField="cl_desc" HeaderText="Collateral Description">
									<HeaderStyle CssClass="tdSmallHeader"></HeaderStyle>
									<ItemStyle HorizontalAlign="Center"></ItemStyle>
								</asp:BoundColumn>
								<asp:BoundColumn DataField="coltypedesc" HeaderText="Collateral Type">
									<HeaderStyle Width="20%" CssClass="tdSmallHeader"></HeaderStyle>
									<ItemStyle HorizontalAlign="Center"></ItemStyle>
								</asp:BoundColumn>
								<asp:BoundColumn DataField="lc_percentage" HeaderText="% of Use">
									<HeaderStyle Width="15%" CssClass="tdSmallHeader"></HeaderStyle>
									<ItemStyle HorizontalAlign="right"></ItemStyle>
								</asp:BoundColumn>
								<asp:BoundColumn DataField="cl_value" HeaderText="Start Nomial">
									<HeaderStyle Width="15%" CssClass="tdSmallHeader"></HeaderStyle>
									<ItemStyle HorizontalAlign="right"></ItemStyle>
								</asp:BoundColumn>
								<asp:BoundColumn DataField="lc_value" HeaderText="End Nominal">
									<HeaderStyle Width="15%" CssClass="tdSmallHeader"></HeaderStyle>
									<ItemStyle HorizontalAlign="right"></ItemStyle>
								</asp:BoundColumn>
								<asp:BoundColumn DataField="ACTION" HeaderText="Action">
									<HeaderStyle Width="10%" CssClass="tdSmallHeader"></HeaderStyle>
									<ItemStyle HorizontalAlign="center"></ItemStyle>
								</asp:BoundColumn>
								<asp:ButtonColumn Text="Delete" HeaderText="Function" CommandName="Delete">
									<HeaderStyle Width="10%" CssClass="tdSmallHeader"></HeaderStyle>
									<ItemStyle HorizontalAlign="Center"></ItemStyle>
								</asp:ButtonColumn>
							</Columns>
							<PagerStyle Mode="NumericPages"></PagerStyle>
						</ASP:DATAGRID></td>
				</TR>
				<TR>
					<TD class="td" vAlign="top" align="center" width="50%">
						<TABLE id="Table4" cellSpacing="0" cellPadding="0" width="100%">
							<TR>
								<TD class="TDBGColor1" width="129">Collateral Description</TD>
								<TD style="WIDTH: 15px"></TD>
								<TD class="TDBGColorValue"><asp:dropdownlist id="DDL_CL_ID" runat="server" AutoPostBack="True" onselectedindexchanged="DDL_CL_ID_SelectedIndexChanged"></asp:dropdownlist></TD>
							</TR>
							<TR>
								<TD class="TDBGColor1">Collateral Type</TD>
								<TD></TD>
								<TD class="TDBGColorValue"><asp:textbox id="TXT_CL_DESC" runat="server" Width="200px" ReadOnly="True"></asp:textbox></TD>
							</TR>
							<TR>
								<TD class="TDBGColor1">Start Nominal</TD>
								<TD></TD>
								<TD class="TDBGColorValue"><asp:textbox id="TXT_LC_VALUE" runat="server" ReadOnly="True" CssClass="angka"></asp:textbox></TD>
							</TR>
						</TABLE>
					</TD>
					<TD class="td" vAlign="top" align="center">
						<TABLE id="Table3" cellSpacing="0" cellPadding="0" width="100%">
							<TR>
								<TD class="TDBGColor1" width="129">% of Use</TD>
								<TD style="WIDTH: 15px"></TD>
								<TD class="TDBGColorValue"><asp:textbox id="TXT_LC_PERCENTAGE" runat="server" Width="48px" ReadOnly="True" AutoPostBack="True"
										CssClass="angka" ontextchanged="TXT_LC_PERCENTAGE_TextChanged"></asp:textbox></TD>
							</TR>
							<TR>
								<TD class="TDBGColor1">End Nominal</TD>
								<TD></TD>
								<TD class="TDBGColorValue"><asp:textbox id="TXT_ENDVALUE" runat="server" ReadOnly="True" CssClass="angka"></asp:textbox></TD>
							</TR>
							<TR>
								<TD class="TDBGColor1">Action</TD>
								<TD></TD>
								<TD class="TDBGColorValue"><asp:radiobuttonlist id="rdoAction" runat="server" Width="224px" RepeatDirection="Horizontal">
										<asp:ListItem Value="1" Selected="True">Add</asp:ListItem>
										<asp:ListItem Value="2">Remove</asp:ListItem>
										<asp:ListItem Value="3">Re-Appraise</asp:ListItem>
									</asp:radiobuttonlist></TD>
							</TR>
						</TABLE>
					</TD>
				</TR>
				<TR runat="server">
					<TD class="TDBGColor2" align="center" colSpan="2">&nbsp;
						<asp:button id="Button1" runat="server" Text="insert" onclick="insert_Click"></asp:button></TD>
				</TR>
			</TABLE>
		</form>
	</body>
</HTML>
