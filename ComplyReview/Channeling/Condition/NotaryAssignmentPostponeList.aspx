<%@ Page language="c#" Codebehind="NotaryAssignmentPostponeList.aspx.cs" AutoEventWireup="True" Inherits="SME.ComplyReview.Channeling.Condition.NotaryAssignmentPostponeList" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
  <HEAD>
		<title>NotaryAssignmentPostponeList</title>
<meta content="Microsoft Visual Studio .NET 7.1" name=GENERATOR>
<meta content=C# name=CODE_LANGUAGE>
<meta content=JavaScript name=vs_defaultClientScript>
<meta content=http://schemas.microsoft.com/intellisense/ie5 name=vs_targetSchema><LINK href="../../../style.css" type=text/css rel=stylesheet >
<script language=javascript>
			function continueconfirm()
			{
				conf = confirm("Are you sure you want to continue this facility to Notary and Insurance process?");
				if (conf)
				{
					return true;
				}
				else
				{
					return false;
				}
			}
		</script>
</HEAD>
<body MS_POSITIONING="GridLayout">
<form id=Form1 method=post runat="server">
<center>
<TABLE id=Table1 cellSpacing=2 cellPadding=2 width="100%" 
  >
  <TR>
    <TD class=tdNoBorder><!--<img src="../Image/HeaderDetailDataEntry.jpg">-->
      <TABLE id=Table2>
        <TR>
          <TD class=tdBGColor2 style="WIDTH: 400px" align=center 
          ><B>Notary Assignment 
            Postpone List</B></TD></TR></TABLE></TD>
    <TD class=tdNoBorder align=right><A href="../../../Body.aspx" ><IMG src="/SME/Image/MainMenu.jpg" ></A><A href="../../../Logout.aspx" target=_top ><IMG src="/SME/Image/Logout.jpg" ></A></TD></TR>
  <TR>
    <TD align=center colSpan=2><STRONG 
      >
      <TABLE class=td id=Table3 style="WIDTH: 590px; HEIGHT: 200px" 
      cellSpacing=1 cellPadding=1 width=590 border=1>
        <TR>
          <TD class=tdHeader1>Search Creteria</TD></TR>
        <TR>
          <TD vAlign=top>
            <TABLE id=Table4 cellSpacing=0 cellPadding=0 width="100%" border=0 
            >
              <TR>
                <TD class=TDBGColor1 width=160>Nama 
                  Pemohon</TD>
                <TD width=17></TD>
                <TD class=TDBGColorValue style="WIDTH: 342px" width=342 
                ><asp:textbox onkeypress="return kutip_satu()" id=TXT_CU_NAME runat="server" MaxLength="50"></asp:textbox></TD></TR>
              <TR>
                <TD class=TDBGColor1>Application No.</TD>
                <TD></TD>
                <TD class=TDBGColorValue style="WIDTH: 342px" 
                ><asp:textbox onkeypress="return kutip_satu()" id=TXT_AP_REGNO runat="server" MaxLength="20"></asp:textbox></TD></TR>
              <TR>
                <TD class=TDBGColor1>KTP&nbsp;No. / TDP 
                  No.</TD>
                <TD></TD>
                <TD class=TDBGColorValue style="WIDTH: 342px" 
                ><asp:textbox onkeypress="return kutip_satu()" id=TXT_IDCARD runat="server" MaxLength="30"></asp:textbox></TD></TR>
              <TR>
                <TD class=TDBGColor1 style="HEIGHT: 20px" 
                  >NPWP</TD>
                <TD style="HEIGHT: 20px"></TD>
                <TD style="WIDTH: 342px; HEIGHT: 20px"><asp:textbox onkeypress="return kutip_satu()" id=TXT_NPWP runat="server" MaxLength="25"></asp:textbox></TD></TR>
              <TR>
                <TD class=TDBGColor1 style="HEIGHT: 18px" 
                  >Dari Tanggal s/d Tanggal</TD>
                <TD style="HEIGHT: 18px"></TD>
                <TD style="WIDTH: 400px; HEIGHT: 18px">
                  <P class=TDBGColorValue><asp:textbox onkeypress="return numbersonly();" id=TXT_STARTDATE_DAY runat="server" MaxLength="2" Columns="3"></asp:textbox><asp:dropdownlist id=DDL_STARTDATE_MONTH runat="server"></asp:dropdownlist><asp:textbox onkeypress="return numbersonly();" id=TXT_STARTDATE_YEAR runat="server" MaxLength="4" Columns="3"></asp:textbox>&nbsp;s/d 
<asp:textbox onkeypress="return numbersonly();" id=TXT_ENDDATE_DAY runat="server" MaxLength="2" Columns="3"></asp:textbox><asp:dropdownlist id=DDL_ENDDATE_MONTH runat="server"></asp:dropdownlist><asp:textbox onkeypress="return numbersonly();" id=TXT_ENDDATE_YEAR runat="server" MaxLength="4" Columns="3"></asp:textbox></P></TD></TR>
              <TR>
                <TD style="WIDTH: 521px" vAlign=top align=center colSpan=3 
                ></TD></TR>
              <TR>
                <TD style="WIDTH: 521px" vAlign=top align=center colSpan=3 
                ><asp:button id=btn_Find runat="server" CssClass="button1" Width="75px" Text="Find" onclick="btn_Find_Click"></asp:button></TD></TR></TABLE></TD></TR></TABLE></STRONG></TD></TR>
  <tr>
    <TD vAlign=top align=center colSpan=2><asp:datagrid id=DataGrid1 runat="server" Width="100%" AllowPaging="True" AutoGenerateColumns="False">
								<Columns>
									<asp:BoundColumn DataField="AP_REGNO_INDUK" HeaderText="Plafond No.">
										<HeaderStyle CssClass="tdSmallHeader"></HeaderStyle>
										<ItemStyle HorizontalAlign="Center"></ItemStyle>
									</asp:BoundColumn>
									<asp:BoundColumn DataField="OWNER_NAME" HeaderText="Plafond Owner">
										<HeaderStyle CssClass="tdSmallHeader"></HeaderStyle>
										<ItemStyle HorizontalAlign="Center"></ItemStyle>
									</asp:BoundColumn>
									<asp:BoundColumn DataField="AP_REGNO" HeaderText="Application No.">
										<HeaderStyle CssClass="tdSmallHeader"></HeaderStyle>
										<ItemStyle HorizontalAlign="Center"></ItemStyle>
									</asp:BoundColumn>
									<asp:BoundColumn DataField="PRODUCTID" Visible="False"></asp:BoundColumn>
									<asp:BoundColumn DataField="APPTYPE" Visible="False"></asp:BoundColumn>
									<asp:BoundColumn DataField="PROD_SEQ" Visible="False"></asp:BoundColumn>
									<asp:BoundColumn DataField="END_USER_NAME" HeaderText="Nama Pemohon">
										<HeaderStyle CssClass="tdSmallHeader"></HeaderStyle>
									</asp:BoundColumn>
									<asp:BoundColumn DataField="AP_RECVDATE" HeaderText="Tanggal Aplikasi" DataFormatString="{0:dd-MMM-yyyy}">
										<HeaderStyle CssClass="tdSmallHeader"></HeaderStyle>
										<ItemStyle HorizontalAlign="Center"></ItemStyle>
									</asp:BoundColumn>
									<asp:BoundColumn DataField="FACILITY" HeaderText="Fasilitas">
										<HeaderStyle CssClass="tdSmallHeader"></HeaderStyle>
										<ItemStyle HorizontalAlign="Left"></ItemStyle>
									</asp:BoundColumn>
									<asp:BoundColumn DataField="LIMIT" HeaderText="Limit">
										<HeaderStyle CssClass="tdSmallHeader"></HeaderStyle>
										<ItemStyle HorizontalAlign="Right"></ItemStyle>
									</asp:BoundColumn>
									<asp:TemplateColumn HeaderText="Function">
										<HeaderStyle CssClass="tdSmallHeader"></HeaderStyle>
										<ItemStyle HorizontalAlign="Center"></ItemStyle>
										<ItemTemplate>
											&nbsp;
											<asp:LinkButton id="LB_CONTINUE" runat="server" CommandName="Continue">Continue</asp:LinkButton>
										</ItemTemplate>
									</asp:TemplateColumn>
								</Columns>
								<PagerStyle Mode="NumericPages"></PagerStyle>
							</asp:DataGrid></TD></TR></TABLE></CENTER></FORM>
	</body>
</HTML>
