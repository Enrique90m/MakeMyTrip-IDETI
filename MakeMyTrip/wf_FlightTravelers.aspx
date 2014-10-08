<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wf_FlightTravelers.aspx.cs" Inherits="MakeMyTrip.wf_FlightTravelers" %>

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
            width: 27cm;
            position: absolute;
            margin-left: 5cm;
             background-image: url(plane.jpg);
            top: 15px;
            left: 10px;
            height: 460px;
        }
           .myButton {
	-moz-box-shadow: 11px 12px 14px -7px #276873;
	-webkit-box-shadow: 11px 12px 14px -7px #276873;
	box-shadow: 11px 12px 14px -7px #276873;
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #599bb3), color-stop(1, #408c99));
	background:-moz-linear-gradient(top, #599bb3 5%, #408c99 100%);
	background:-webkit-linear-gradient(top, #599bb3 5%, #408c99 100%);
	background:-o-linear-gradient(top, #599bb3 5%, #408c99 100%);
	background:-ms-linear-gradient(top, #599bb3 5%, #408c99 100%);
	background:linear-gradient(to bottom, #599bb3 5%, #408c99 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#599bb3', endColorstr='#408c99',GradientType=0);
	background-color:#599bb3;
	-moz-border-radius:18px;
	-webkit-border-radius:18px;
	border-radius:18px;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:arial;
	font-size:19px;
	font-weight:bold;
	padding:15px 36px;
	text-decoration:none;
	text-shadow:0px 2px 0px #3d768a;
}
.myButton:hover {
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #408c99), color-stop(1, #599bb3));
	background:-moz-linear-gradient(top, #408c99 5%, #599bb3 100%);
	background:-webkit-linear-gradient(top, #408c99 5%, #599bb3 100%);
	background:-o-linear-gradient(top, #408c99 5%, #599bb3 100%);
	background:-ms-linear-gradient(top, #408c99 5%, #599bb3 100%);
	background:linear-gradient(to bottom, #408c99 5%, #599bb3 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#408c99', endColorstr='#599bb3',GradientType=0);
	background-color:#408c99;
}
.myButton:active {
	position:relative;
	top:1px;
}

.FinishButton {
	-moz-box-shadow:inset 0px 0px 0px -8px #a4e271;
	-webkit-box-shadow:inset 0px 0px 0px -8px #a4e271;
	box-shadow:inset 0px 0px 0px -8px #a4e271;
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #89c403), color-stop(1, #77a809));
	background:-moz-linear-gradient(top, #89c403 5%, #77a809 100%);
	background:-webkit-linear-gradient(top, #89c403 5%, #77a809 100%);
	background:-o-linear-gradient(top, #89c403 5%, #77a809 100%);
	background:-ms-linear-gradient(top, #89c403 5%, #77a809 100%);
	background:linear-gradient(to bottom, #89c403 5%, #77a809 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#89c403', endColorstr='#77a809',GradientType=0);
	background-color:#89c403;
	-moz-border-radius:6px;
	-webkit-border-radius:6px;
	border-radius:6px;
	border:1px solid #74b807;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:arial;
	font-size:20px;
	font-weight:bold;
	padding:8px 28px;
	text-decoration:none;
	text-shadow:0px 1px 0px #528009;
}
.FinishButton:hover {
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #77a809), color-stop(1, #89c403));
	background:-moz-linear-gradient(top, #77a809 5%, #89c403 100%);
	background:-webkit-linear-gradient(top, #77a809 5%, #89c403 100%);
	background:-o-linear-gradient(top, #77a809 5%, #89c403 100%);
	background:-ms-linear-gradient(top, #77a809 5%, #89c403 100%);
	background:linear-gradient(to bottom, #77a809 5%, #89c403 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#77a809', endColorstr='#89c403',GradientType=0);
	background-color:#77a809;
}
.FinishButton:active {
	position:relative;
	top:1px;
}


    </style>
</head>
<body style="" >
    <form id="form1" runat="server" class="Bottom">
    <div>
    
    </div>
        <asp:Label ID="Label_CustomerFname" runat="server" style="z-index: 1; left: 390px; top: 64px; position: absolute" Text="Label" CssClass="TextStyle"></asp:Label>
        <asp:Label ID="Label_CustomerLname" runat="server" style="z-index: 1; left: 631px; top: 66px; position: absolute" Text="Label" CssClass="TextStyle"></asp:Label>
        <asp:Label ID="Label_CustomerAdress" runat="server" style="z-index: 1; left: 364px; top: 116px; position: absolute" Text="Label" CssClass="TextStyle"></asp:Label>
        <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 273px; top: 34px; position: absolute; font-weight: 700" Text="Customer information" CssClass="TextStyle"></asp:Label>
        <asp:Label ID="Label5" runat="server" CssClass="TextStyle" style="z-index: 1; left: 293px; top: 66px; position: absolute; right: 527px" Text="First name: " Font-Bold="True"></asp:Label>
        <asp:Label ID="Label6" runat="server" CssClass="TextStyle" style="z-index: 1; left: 291px; top: 117px; position: absolute; right: 553px" Text="Adress: " Font-Bold="True"></asp:Label>
        <asp:Label ID="Label7" runat="server" CssClass="TextStyle" style="z-index: 1; left: 540px; top: 65px; position: absolute; right: 281px" Text="Last name: " Font-Bold="True"></asp:Label>
        <asp:Label ID="Label8" runat="server" CssClass="TextStyle" style="z-index: 1; left: 268px; top: 169px; position: absolute" Text="Traveler details" Font-Bold="True"></asp:Label>
        <asp:Label ID="Label9" runat="server" style="z-index: 1; left: 277px; top: 309px; position: absolute; height: 20px" Text="Last name" CssClass="TextStyle"></asp:Label>
        <asp:Label ID="Label10" runat="server" style="z-index: 1; left: 277px; top: 266px; position: absolute" Text="First name" CssClass="TextStyle"></asp:Label>
        <asp:Button ID="Button_Next" runat="server" OnClick="Button_Next_Click" style="z-index: 1; left: 454px; top: 337px; position: absolute; width: 142px; height: 55px;" Text="Next" CssClass="myButton" />
        <asp:Label ID="Label11" runat="server" CssClass="TextStyle" style="z-index: 1; left: 328px; top: 197px; position: absolute" Text="Adults" Font-Bold="True"></asp:Label>
        <asp:Label ID="Label12" runat="server" height="19px" style="z-index: 1; left: 277px; top: 222px; position: absolute" Text="Title" CssClass="TextStyle"></asp:Label>
        <asp:TextBox ID="TextBox_AdultLname" runat="server" style="z-index: 1; left: 361px; top: 308px; position: absolute" AutoPostBack="True" OnTextChanged="TextBox_AdultLname_TextChanged"></asp:TextBox>
        <asp:TextBox ID="TextBox_AdultFname" runat="server" style="z-index: 1; left: 363px; top: 264px; position: absolute" AutoPostBack="True" OnTextChanged="TextBox_AdultFname_TextChanged"></asp:TextBox>
        <asp:Label ID="Label13" runat="server" style="z-index: 1; left: 628px; top: 222px; position: absolute" Text="First name" Visible="False" CssClass="TextStyle"></asp:Label>
        <asp:Label ID="Label14" runat="server" height="19px" style="z-index: 1; left: 715px; top: 192px; position: absolute; font-weight: 700" Text="Children" Visible="False" CssClass="TextStyle"></asp:Label>
        <asp:Label ID="Label15" runat="server" style="z-index: 1; left: 628px; top: 257px; position: absolute" Text="Last name" Visible="False" CssClass="TextStyle"></asp:Label>
        <asp:TextBox ID="TextBox_ChildrenLname" runat="server" style="z-index: 1; left: 713px; top: 253px; position: absolute" Visible="False" AutoPostBack="True" OnTextChanged="TextBox_ChildrenLname_TextChanged"></asp:TextBox>
        <asp:TextBox ID="TextBox_ChildrenFname" runat="server" style="z-index: 1; left: 712px; top: 221px; position: absolute" Visible="False" AutoPostBack="True" OnTextChanged="TextBox_ChildrenFname_TextChanged"></asp:TextBox>
        <asp:Button ID="Button_Continue" runat="server" style="z-index: 1; left: 644px; top: 401px; position: absolute; width: 317px; height: 46px;" Text="Finish and make payment" Enabled="False" OnClick="Button_Continue_Click" CssClass="FinishButton" Visible="False" />
        <asp:DropDownList ID="DropDownList_AdultTitle" runat="server" style="z-index: 1; left: 351px; top: 222px; position: absolute">
            <asp:ListItem>Mr</asp:ListItem>
            <asp:ListItem Value="Ms"></asp:ListItem>
        </asp:DropDownList>
        <asp:Label ID="Label_Indice" runat="server" style="z-index: 1; left: 399px; top: 167px; position: absolute" CssClass="TextStyle" Font-Bold="True" ForeColor="#00CC00"></asp:Label>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
