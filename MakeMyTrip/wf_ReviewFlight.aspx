<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wf_ReviewFlight.aspx.cs" Inherits="MakeMyTrip.wf_ReviewFlight" %>

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

       .Header {
             font-weight:bold;color:#000000;
        letter-spacing:0pt;word-spacing:0pt;
        font-size:18px;text-align:justify;
        font-family:helvetica, sans-serif;
        line-height:1;
        color:white;
        font-size:18pt;
       text-shadow: -2px -1px 0px rgba(0, 0, 0, 1);
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
       #form1 {
           height: 482px;
           top: 0px;
           left: 0px;
       }
    </style>
</head>
<body style="z-index: 1; left: 0px; top: 0px; position: absolute; height: 493px; width: 1018px" >
    <form id="form1" runat="server" class="Bottom" >
    <div>
    
    </div>
        <asp:Label ID="Label1" runat="server" CssClass="auto-style1" style="z-index: 1; left: 429px; top: 424px; position: absolute" Text="____________________________________"></asp:Label>
        <asp:Label ID="Label_ChildrenFare" runat="server" style="z-index: 1; left: 426px; top: 343px; position: absolute; width: 179px;" Text="Label" CssClass="TextStyle"></asp:Label>
        <asp:Label ID="Label3" runat="server" CssClass="TextStyle" style="z-index: 1; left: 353px; top: 399px; position: absolute; height: 38px; right: 481px;" Text="Grand total: " Font-Bold="True" Font-Size="25pt" ForeColor="#663300"></asp:Label>
        <asp:Label ID="Label4" runat="server" CssClass="auto-style1" style="z-index: 1; left: 429px; top: 369px; position: absolute" Text="____________________________________"></asp:Label>
        <asp:Label ID="Label_TotalChildren" runat="server" style="z-index: 1; left: 913px; top: 334px; position: absolute" Text="Label" CssClass="TextStyle"></asp:Label>
        <asp:Label ID="Label_ChildrenTax" runat="server" style="z-index: 1; left: 623px; top: 337px; position: absolute; height: 19px; width: 260px;" Text="Label" CssClass="TextStyle"></asp:Label>
        <asp:Label ID="Label8" runat="server" style="z-index: 1; left: 216px; top: 343px; position: absolute; right: 626px" Text="Children" CssClass="TextStyle"></asp:Label>
        <asp:Label ID="Label9" runat="server" CssClass="TextStyle" style="z-index: 1; left: 802px; top: 255px; position: absolute; width: 200px;" Text="Total incluiding taxes" Font-Bold="True" Font-Size="14pt" ForeColor="#663300"></asp:Label>
        <asp:Label ID="Label_AdultTax" runat="server" style="z-index: 1; left: 623px; top: 299px; position: absolute; height: 18px; width: 244px;" Text="Label" CssClass="TextStyle"></asp:Label>
        <asp:Label ID="Label12" runat="server" style="z-index: 1; left: 215px; top: 300px; position: absolute" Text="Adults" CssClass="TextStyle"></asp:Label>
        <asp:Label ID="Label_TotalAdults" runat="server" style="z-index: 1; left: 915px; top: 290px; position: absolute" Text="Label" CssClass="TextStyle"></asp:Label>
        <asp:Label ID="Label_AdultFare" runat="server" style="z-index: 1; left: 426px; top: 300px; position: absolute; right: 448px" Text="Label" CssClass="TextStyle"></asp:Label>
        <asp:Label ID="Label15" runat="server" CssClass="TextStyle" style="z-index: 1; left: 791px; top: 135px; position: absolute" Text="Arrival" Font-Bold="True" Font-Size="14pt" ForeColor="#663300"></asp:Label>
        <asp:Label ID="Label17" runat="server" CssClass="TextStyle" style="z-index: 1; left: 168px; top: 224px; position: absolute" Text="Review fare details" Font-Bold="True" Font-Size="14pt" ForeColor="#663300"></asp:Label>
        <asp:Label ID="Label18" runat="server" CssClass="TextStyle" style="z-index: 1; left: 627px; top: 264px; position: absolute; width: 34px; height: 19px;" Text="Taxes" Font-Bold="True" Font-Size="14pt" ForeColor="#663300"></asp:Label>
        <asp:Label ID="Label33" runat="server" Font-Bold="True" style="z-index: 1; left: 424px; top: 66px; position: absolute" Text="Departure date" CssClass="TextStyle" Font-Size="14pt" ForeColor="#663300"></asp:Label>
        <asp:Label ID="Label19" runat="server" CssClass="TextStyle" style="z-index: 1; left: 215px; top: 135px; position: absolute; right: 597px" Text="Flight No" Font-Bold="True" Font-Size="14pt" ForeColor="#663300"></asp:Label>
        <asp:Label ID="Label20" runat="server" CssClass="TextStyle" style="z-index: 1; left: 604px; top: 135px; position: absolute" Text="Departure" Font-Bold="True" Font-Size="14pt" ForeColor="#663300"></asp:Label>
        <asp:Label ID="Label21" runat="server" CssClass="TextStyle" height="19px" style="z-index: 1; left: 321px; position: absolute; width: 34px; top: 135px" Text="Airlane" Font-Bold="True"></asp:Label>
        <asp:Label ID="Label23" runat="server" CssClass="TextStyle" style="z-index: 1; left: 168px; top: 66px; position: absolute" Text="Review flight details" Font-Bold="True" Font-Size="14pt" ForeColor="#663300"></asp:Label>
        <asp:Label ID="Label24" runat="server" height="19px" style="z-index: 1; left: 266px; position: absolute; bottom: 372px" Text="---&gt;" CssClass="TextStyle"></asp:Label>
        <asp:Label ID="Label_Destination" runat="server" style="z-index: 1; top: 100px; position: absolute; left: 320px" Text="Label" CssClass="TextStyle"></asp:Label>
        <p>
            <asp:Label ID="Label22" runat="server" CssClass="TextStyle" style="z-index: 1; left: 165px; top: 259px; position: absolute; right: 731px" Text="Traveler type" Font-Bold="True" Font-Size="14pt" ForeColor="#663300"></asp:Label>
            <asp:Label ID="Label11" runat="server" CssClass="TextStyle" height="19px" style="z-index: 1; left: 322px; top: 259px; position: absolute" Text="Seats" Font-Bold="True" ForeColor="#663300"></asp:Label>
            <asp:Label ID="Label32" runat="server" CssClass="TextStyle" style="z-index: 1; left: 426px; top: 260px; position: absolute" Text="Base fare" Font-Bold="True" Font-Size="14pt" ForeColor="#663300"></asp:Label>
        </p>
        <asp:Label ID="Label_Arrival" runat="server" style="z-index: 1; left: 793px; top: 168px; position: absolute" Text="Label" CssClass="TextStyle"></asp:Label>
        <asp:Label ID="Label_Airlane" runat="server" style="z-index: 1; left: 321px; top: 171px; position: absolute" Text="Label" CssClass="TextStyle"></asp:Label>
        <asp:Label ID="Label_Departure" runat="server" style="z-index: 1; top: 171px; position: absolute; right: 170px; left: 603px" Text="Label_Departure" CssClass="TextStyle"></asp:Label>
        <asp:Label ID="Label_FlightNo" runat="server" style="z-index: 1; left: 217px; top: 171px; position: absolute; right: 625px" Text="Label" CssClass="TextStyle"></asp:Label>
        <asp:Label ID="Label_NoOfAdults" runat="server" style="z-index: 1; left: 322px; top: 300px; position: absolute; bottom: 174px; width: 44px; right: 510px;" Text="Label" CssClass="TextStyle"></asp:Label>
        <asp:Label ID="Label_NoOfChildren" runat="server" style="z-index: 1; left: 323px; top: 341px; position: absolute; height: 19px; width: 90px;" Text="Label" CssClass="TextStyle"></asp:Label>
        <asp:Label ID="Label_DepartureDate" runat="server" style="z-index: 1; left: 426px; top: 100px; position: absolute" Text="Label" CssClass="TextStyle"></asp:Label>
        <asp:Label ID="Label_Source" runat="server" style="z-index: 1; left: 214px; top: 100px; position: absolute; right: 628px" Text="Label" CssClass="TextStyle"></asp:Label>
        <asp:Label ID="Label_GrandTotal" runat="server" style="z-index: 1; left: 546px; top: 398px; position: absolute" Text="Label" CssClass="TextStyle" ForeColor="#CC9900" Font-Size="25pt"></asp:Label>
        <asp:Button ID="Button_BookThisFlight" runat="server" OnClick="Button_BookThisFlight_Click" style="z-index: 1; left: 99px; top: 405px; position: absolute; height: 55px; width: 231px; font-weight: 700" Text="Book this flight" CssClass="myButton" />
    </form>
</body>
</html>
