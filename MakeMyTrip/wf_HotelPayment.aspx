<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wf_HotelPayment.aspx.cs" Inherits="MakeMyTrip.wf_HotelPayment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
         .TextStyle
        {
        font-weight:bold;color:#000000;
        letter-spacing:0pt;word-spacing:0pt;
        font-size:23px;text-align:justify;
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
            width: 26cm;
            position: absolute;
            margin-left: 5cm;
             background-image: url(space.jpg);
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

    </style>
</head>
<body>
    <form id="form1" runat="server" class="Bottom">
    <div style="height: 483px; width: 897px;">
    
        <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 321px; top: 238px; position: absolute; height: 31px;" Text="Tax Amount" CssClass="TextStyle"></asp:Label>
        <asp:Label ID="Label_TotalTaxAmount" runat="server" style="z-index: 1; left: 486px; top: 240px; position: absolute; height: 24px; width: 272px" Text="Value:" CssClass="TextStyle"></asp:Label>

        <asp:Label ID="Label22" runat="server" style="z-index: 1; left: 315px; top: 77px; position: absolute; height: 29px;" Text="Total Amount" CssClass="TextStyle"></asp:Label>
       <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 315px; top: 77px; position: absolute; height: 29px;" Text="Total Amount" CssClass="TextStyle"></asp:Label>
         <asp:Label ID="Label_TotalWithDiscount" runat="server" style="z-index: 1; left: 486px; top: 181px; position: absolute; height: 26px; width: 159px" Text="Value:" CssClass="TextStyle"></asp:Label>

        <asp:Label ID="Label_GrandTotal" runat="server" style="z-index: 1; left: 509px; top: 369px; position: absolute; height: 19px; width: 215px" Text="Value:" CssClass="TextStyle"></asp:Label>


        <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 329px; top: 128px; position: absolute; height: 29px;" Text="Discount " CssClass="TextStyle"></asp:Label>
        <asp:Label ID="Label_Amount" runat="server" style="z-index: 1; left: 486px; top: 77px; position: absolute; height: 19px; width: 127px; bottom: 387px;" Text="Value:" CssClass="TextStyle"></asp:Label>

        <asp:Label ID="Label33" runat="server" style="z-index: 1; left: 275px; top: 366px; position: absolute; height: 19px;" Text="Amount to be Paid" CssClass="TextStyle"></asp:Label>
        <asp:Label ID="Label_DiscountPct" runat="server" style="z-index: 1; left: 486px; top: 129px; position: absolute; height: 19px; width: 175px" Text="Value:" CssClass="TextStyle"></asp:Label>



    
        <asp:Label ID="Label34" runat="server" CssClass="TextStyle" style="z-index: 1; left: 252px; top: 182px; position: absolute; height: 40px;" Text="Total with discount"></asp:Label>
        <asp:Label ID="Label35" runat="server" CssClass="TextStyle" style="z-index: 1; left: 242px; top: 318px; position: absolute" Text="__________________________________________"></asp:Label>



    
        <asp:Button ID="Button_MakePayment" runat="server" BackColor="#66FFFF" BorderColor="#33CCFF" Font-Bold="True" Font-Size="X-Large" style="z-index: 1; left: 279px; top: 398px; position: absolute; width: 307px; height: 50px" Text="Make Payment" OnClick="Button_MakePayment_Click" CssClass="GreenButton" />



    
    </div>
    </form>
</body>
</html>
