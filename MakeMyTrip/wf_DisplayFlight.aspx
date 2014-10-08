<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wf_DisplayFlight.aspx.cs" Inherits="MakeMyTrip.wf_DisplayFlight" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-weight: bold;
        }

         .TextStyle
        {
        font-weight:bold;color:#000000;
        letter-spacing:0pt;word-spacing:0pt;
        font-size:17px;text-align:justify;
        font-family:helvetica, sans-serif;
        line-height:1;
        color:white;
        }

         .Bottom {
             border-radius: 10px 10px 10px 10px;
            -moz-border-radius: 10px 10px 10px 10px;
            -webkit-border-radius: 10px 10px 10px 10px;
            border: 2px solid #008bf5;
            -webkit-box-shadow: 11px 11px 24px 6px rgba(0,0,0,0.67);
            -moz-box-shadow: 11px 11px 24px 6px rgba(0,0,0,0.67);
            box-shadow: 11px 11px 24px 6px rgba(0,0,0,0.67);
            width: 30cm;
            position: absolute;
            margin-left: 5cm;
             background-image: url(plane.jpg);
        }
         .HeaderText {
             font-weight:bold;color:#000000;
        letter-spacing:0pt;word-spacing:0pt;
        font-size:18px;text-align:justify;
        font-family:helvetica, sans-serif;
        line-height:1;
        color:white;
        font-size:18pt;
       text-shadow: -2px -1px 0px rgba(0, 0, 0, 1);
        }

         .PurpleButton {
	-moz-box-shadow:inset 0px 1px 0px 0px #e184f3;
	-webkit-box-shadow:inset 0px 1px 0px 0px #e184f3;
	box-shadow:inset 0px 1px 0px 0px #e184f3;
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #c123de), color-stop(1, #a20dbd));
	background:-moz-linear-gradient(top, #c123de 5%, #a20dbd 100%);
	background:-webkit-linear-gradient(top, #c123de 5%, #a20dbd 100%);
	background:-o-linear-gradient(top, #c123de 5%, #a20dbd 100%);
	background:-ms-linear-gradient(top, #c123de 5%, #a20dbd 100%);
	background:linear-gradient(to bottom, #c123de 5%, #a20dbd 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#c123de', endColorstr='#a20dbd',GradientType=0);
	background-color:#c123de;
	-moz-border-radius:6px;
	-webkit-border-radius:6px;
	border-radius:6px;
	border:1px solid #a511c0;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:arial;
	font-size:11px;
	font-weight:bold;
	padding:8px 33px;
	text-decoration:none;
	text-shadow:0px 1px 0px #9b14b3;
}
.PurpleButton:hover {
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #a20dbd), color-stop(1, #c123de));
	background:-moz-linear-gradient(top, #a20dbd 5%, #c123de 100%);
	background:-webkit-linear-gradient(top, #a20dbd 5%, #c123de 100%);
	background:-o-linear-gradient(top, #a20dbd 5%, #c123de 100%);
	background:-ms-linear-gradient(top, #a20dbd 5%, #c123de 100%);
	background:linear-gradient(to bottom, #a20dbd 5%, #c123de 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#a20dbd', endColorstr='#c123de',GradientType=0);
	background-color:#a20dbd;
}
.PurpleButton:active {
	position:relative;
	top:1px;
}

    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 634px" class ="Bottom">
    
        <asp:Label ID="Label_From" runat="server" CssClass="TextStyle" style="z-index: 1; left: 266px; top: 37px; position: absolute; " Text="Label"></asp:Label>
        <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 400px; top: 112px; position: absolute" Text="To" CssClass="TextStyle"></asp:Label>
        <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 321px; top: 37px; position: absolute; width: 20px" Text="To: " CssClass="TextStyle"></asp:Label>
        <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 705px; top: 34px; position: absolute" Text="Children" Visible="False" CssClass="TextStyle"></asp:Label>
        <asp:Label ID="Label_NoOfAfdults" runat="server" style="z-index: 1; left: 603px; top: 36px; position: absolute; width: 8px; font-weight: 700" Text="0" CssClass="TextStyle"></asp:Label>
        <asp:Label ID="Label6" runat="server" style="z-index: 1; left: 82px; top: 105px; position: absolute" Text="Departure time between: " CssClass="HeaderText"></asp:Label>
        <asp:Label ID="Label_NoOfChildren" runat="server" style="z-index: 1; left: 678px; top: 35px; position: absolute; font-weight: 700; width: 8px; right: 259px;" Text="0" Visible="False" CssClass="TextStyle"></asp:Label>
        <asp:Label ID="Label8" runat="server" style="z-index: 1; left: 115px; top: 70px; position: absolute" Text="Departure date:" CssClass="HeaderText"></asp:Label>
        <asp:Label ID="Label_DepartureDate" runat="server" style="z-index: 1; left: 298px; top: 76px; position: absolute; font-weight: 700" Text="Label" CssClass="TextStyle"></asp:Label>
        <asp:Label ID="Label_TimeEnd" runat="server" style="z-index: 1; left: 454px; top: 113px; position: absolute; font-weight: 700" Text="0" CssClass="TextStyle"></asp:Label>
        <asp:Label ID="Label11" runat="server" style="z-index: 1; left: 626px; top: 35px; position: absolute" Text="Adults" CssClass="TextStyle"></asp:Label>
        <asp:Label ID="Label_To" runat="server" CssClass="TextStyle" style="z-index: 1; left: 374px; top: 38px; position: absolute" Text="Label"></asp:Label>
        <asp:Label ID="Label13" runat="server" style="z-index: 1; left: 123px; top: 30px; position: absolute; right: 822px" Text="Ticket from: " CssClass="HeaderText"></asp:Label>
        <asp:Label ID="Label_TimeStart" runat="server" style="z-index: 1; left: 368px; top: 112px; position: absolute; font-weight: 700; width: 8px;" Text="0" CssClass="TextStyle"></asp:Label>
        <asp:Label ID="Label15" runat="server" style="z-index: 1; left: 476px; top: 30px; position: absolute" Text="Travellers | " CssClass="HeaderText"></asp:Label>
        <asp:GridView ID="GridView_VuelosDisponibles" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowCancelingEdit="GridView_VuelosDisponibles_RowCancelingEdit" OnSelectedIndexChanged="GridView_VuelosDisponibles_SelectedIndexChanged" style="z-index: 1; left: 29px; top: 145px; position: absolute; height: 224px; width: 751px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:ButtonField ButtonType="Button" CommandName="Cancel" Text="Choose this flight" >
                <ControlStyle CssClass="PurpleButton" />
                </asp:ButtonField>
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <asp:Label ID="Label_NoRecordsFound" runat="server" Font-Bold="True" Font-Size="XX-Large" style="z-index: 1; left: 364px; top: 421px; position: absolute; font-weight: 700; height: 23px;" Text="No records found" Visible="False" ForeColor="Red"></asp:Label>
    
    </div>
    </form>
</body>
</html>
