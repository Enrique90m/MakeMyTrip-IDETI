<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wf_FlightPayment.aspx.cs" Inherits="MakeMyTrip.wf_FlightPayment" %>

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
            height: 496px;
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

.RedButton {
	-moz-box-shadow:inset 0px 1px 0px 0px #f5978e;
	-webkit-box-shadow:inset 0px 1px 0px 0px #f5978e;
	box-shadow:inset 0px 1px 0px 0px #f5978e;
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #f24537), color-stop(1, #c62d1f));
	background:-moz-linear-gradient(top, #f24537 5%, #c62d1f 100%);
	background:-webkit-linear-gradient(top, #f24537 5%, #c62d1f 100%);
	background:-o-linear-gradient(top, #f24537 5%, #c62d1f 100%);
	background:-ms-linear-gradient(top, #f24537 5%, #c62d1f 100%);
	background:linear-gradient(to bottom, #f24537 5%, #c62d1f 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#f24537', endColorstr='#c62d1f',GradientType=0);
	background-color:#f24537;
	-moz-border-radius:12px;
	-webkit-border-radius:12px;
	border-radius:12px;
	border:1px solid #d02718;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:arial;
	font-size:20px;
	font-weight:bold;
	padding:6px 39px;
	text-decoration:none;
	text-shadow:0px 1px 0px #810e05;
}
.RedButton:hover {
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #c62d1f), color-stop(1, #f24537));
	background:-moz-linear-gradient(top, #c62d1f 5%, #f24537 100%);
	background:-webkit-linear-gradient(top, #c62d1f 5%, #f24537 100%);
	background:-o-linear-gradient(top, #c62d1f 5%, #f24537 100%);
	background:-ms-linear-gradient(top, #c62d1f 5%, #f24537 100%);
	background:linear-gradient(to bottom, #c62d1f 5%, #f24537 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#c62d1f', endColorstr='#f24537',GradientType=0);
	background-color:#c62d1f;
}
.RedButton:active {
	position:relative;
	top:1px;
}

.GreenButton {
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
	-moz-border-radius:11px;
	-webkit-border-radius:11px;
	border-radius:11px;
	border:1px solid #74b807;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:arial;
	font-size:20px;
	font-weight:bold;
	padding:11px 38px;
	text-decoration:none;
	text-shadow:0px 1px 0px #528009;
}
.GreenButton:hover {
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #77a809), color-stop(1, #89c403));
	background:-moz-linear-gradient(top, #77a809 5%, #89c403 100%);
	background:-webkit-linear-gradient(top, #77a809 5%, #89c403 100%);
	background:-o-linear-gradient(top, #77a809 5%, #89c403 100%);
	background:-ms-linear-gradient(top, #77a809 5%, #89c403 100%);
	background:linear-gradient(to bottom, #77a809 5%, #89c403 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#77a809', endColorstr='#89c403',GradientType=0);
	background-color:#77a809;
}
.GreenButton:active {
	position:relative;
	top:1px;
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
	font-size:18px;
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

.div_text_shadow 
{
    text-shadow: 0px 0px 4px rgba(0, 0, 0, 0.75);
    color: #FFA100;
    font-size: 25px;
    font-weight:bold;

}
    </style>
</head>
<body>
    <form id="form1" runat="server" class="Bottom">
    <div>
    
    </div>
        <asp:Label ID="Label1" runat="server" CssClass="TextStyle" style="z-index: 1; left: 238px; top: 252px; position: absolute" Text="Total children fare" Font-Bold="True" Font-Size="14pt" Font-Strikeout="False" Font-Underline="False" ForeColor="#663300"></asp:Label>
        <asp:Label ID="Label_Tax" runat="server" style="z-index: 1; left: 362px; top: 294px; position: absolute" Text="Label" CssClass="TextStyle"></asp:Label>
        <asp:Label ID="Label_TotalChildrenFare" runat="server" style="z-index: 1; left: 414px; top: 253px; position: absolute" Text="Label" CssClass="TextStyle"></asp:Label>
        <asp:Label ID="Label_Total" runat="server" style="z-index: 1; left: 369px; top: 335px; position: absolute" Text="Label" CssClass="TextStyle"></asp:Label>
        <asp:Label ID="Label5" runat="server" CssClass="TextStyle" style="z-index: 1; left: 240px; top: 332px; position: absolute" Text="Total amount" Font-Bold="True" Font-Size="14pt" Font-Strikeout="False" Font-Underline="False" ForeColor="#663300"></asp:Label>
        <asp:Label ID="Label6" runat="server" CssClass="TextStyle" style="z-index: 1; left: 240px; top: 293px; position: absolute" Text="Tax amount" Font-Bold="True" Font-Size="14pt" Font-Strikeout="False" Font-Underline="False" ForeColor="#663300"></asp:Label>
        <asp:Label ID="Label_Source" runat="server" style="z-index: 1; top: 70px; position: absolute; height: 19px; right: 579px; width: 42px;" Text="Label" CssClass="TextStyle"></asp:Label>
        <asp:Label ID="Label_TotalAdultFare" runat="server" style="z-index: 1; left: 387px; top: 208px; position: absolute" Text="Label" CssClass="TextStyle"></asp:Label>
        <asp:Label ID="Label_NoOfChildren" runat="server" style="z-index: 1; left: 328px; top: 160px; position: absolute; height: 18px" Text="Label" CssClass="TextStyle"></asp:Label>
        <asp:Label ID="Label10" runat="server" CssClass="TextStyle" style="z-index: 1; left: 240px; top: 161px; position: absolute" Text="Children" Font-Bold="True" Font-Size="14pt" Font-Strikeout="False" Font-Underline="False" ForeColor="#663300"></asp:Label>
        <asp:Label ID="Label11" runat="server" CssClass="TextStyle" style="z-index: 1; left: 240px; top: 207px; position: absolute" Text="Total adult fare" Font-Bold="True" Font-Size="14pt" Font-Strikeout="False" Font-Underline="False" ForeColor="#663300"></asp:Label>
        <asp:Label ID="Label_Destination" runat="server" style="z-index: 1; left: 524px; top: 70px; position: absolute" Text="Label" CssClass="TextStyle"></asp:Label>
        <asp:Label ID="Label13" runat="server" CssClass="TextStyle" style="z-index: 1; left: 240px; top: 116px; position: absolute; bottom: 356px; right: 610px" Text="Adults" Font-Bold="True" Font-Size="14pt" Font-Strikeout="False" Font-Underline="False" ForeColor="#663300"></asp:Label>
        <asp:Label ID="Label_NoOfAdults" runat="server" style="z-index: 1; left: 310px; top: 118px; position: absolute; " Text="Label" CssClass="TextStyle"></asp:Label>
        <asp:Label ID="Label15" runat="server" CssClass="TextStyle" style="z-index: 1; top: 70px; position: absolute; height: 16px; width: 17px; right: 534px" Text="to"></asp:Label>
        <asp:Label ID="Label16" runat="server" CssClass="TextStyle" style="z-index: 1; left: 242px; top: 70px; position: absolute; width: 218px;" Text="Ticket from" Font-Bold="True" Font-Size="14pt" Font-Strikeout="False" Font-Underline="False" ForeColor="#663300"></asp:Label>
        <asp:Button ID="Button_MakePayment" runat="server" style="z-index: 1; left: 245px; top: 373px; position: absolute; height: 47px; width: 209px" Text="Make payment" OnClick="Button_MakePayment_Click" CssClass="GreenButton" />
        <asp:Button ID="Button_Cancel" runat="server" style="z-index: 1; left: 545px; top: 376px; position: absolute; height: 41px; width: 191px" Text="Cancel" OnClick="Button_Cancel_Click" CssClass="RedButton" />
        <asp:Button ID="Button_BookHotel" runat="server" style="z-index: 1; left: 247px; top: 442px; position: absolute; height: 42px; width: 208px" Text="Book hotel" Visible="False" OnClick="Button_BookHotel_Click" CssClass="PurpleButton" />
    </form>
</body>
</html>
