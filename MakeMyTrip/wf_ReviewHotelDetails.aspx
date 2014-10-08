<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wf_ReviewHotelDetails.aspx.cs" Inherits="MakeMyTrip.wf_ReviewHotelDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style type="text/css">
               .TextStyle
        {
        font-weight:bold;color:#000000;
        letter-spacing:0pt;word-spacing:0pt;
        font-size:18px;text-align:justify;
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
            width: 26.5cm;
            position: absolute;
            margin-left: 5cm;
             background-image: url(hotel.jpg);
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

        .details {
            -ms-filter: "progid:DXImageTransform.Microsoft.Alpha(Opacity=26)";
filter: alpha(opacity=26);
-moz-opacity: 0.26;
-khtml-opacity: 0.26;
opacity: 0.26;
border: 1px #000000 solid;

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
    </style>
    <title></title>
</head>
<body>
    <form id="form1" runat="server" class="Bottom">
    <div style="height: 513px">
    
        <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 23px; top: 39px; position: absolute" Text="REVIEW HOTEL DETAILS" CssClass="HeaderText"></asp:Label>
        <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 26px; top: 78px; position: absolute; right: 714px;" Text="Hotel Name" CssClass="HeaderText"></asp:Label>
        <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 200px; top: 78px; position: absolute" Text="Check-In Date" CssClass="HeaderText"></asp:Label>
        <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 388px; top: 77px; position: absolute" Text="Check-Out Date" CssClass="HeaderText"></asp:Label>
        <asp:Label ID="Label5" runat="server" style="z-index: 1; left: 624px; top: 75px; position: absolute" Text="DLX Rooms" CssClass="HeaderText"></asp:Label>
        <asp:Label ID="Label_CheckOutDate" runat="server" style="z-index: 1; left: 454px; top: 101px; position: absolute" Text="Value:" CssClass="TextStyle" Font-Underline="True"></asp:Label>

        <asp:Label ID="Label_HotelName" runat="server" style="z-index: 1; left: 26px; top: 107px; position: absolute; height: 20px; width: 131px;" Text="Value:" CssClass="TextStyle" Font-Underline="True"></asp:Label>
        <asp:Label ID="Label_DLXRooms" runat="server" style="z-index: 1; left: 663px; top: 105px; position: absolute" Text="Value:" CssClass="TextStyle" Font-Underline="True"></asp:Label>
        <asp:Label ID="Label11" runat="server" style="z-index: 1; left: 845px; top: 74px; position: absolute" Text="EXE Rooms" CssClass="HeaderText"></asp:Label>
        <asp:Label ID="Label_CheckInDate" runat="server" style="z-index: 1; left: 125px; top: 193px; position: absolute; width: 93px; right: 660px;" Text="Fare per Day" CssClass="HeaderText"></asp:Label>

        <asp:Label ID="Label6" runat="server" style="z-index: 1; left: 807px; top: 191px; position: absolute; width: 169px; right: 26px;" Text="Total Amount" CssClass="HeaderText"></asp:Label>
        <asp:Label ID="Label7" runat="server" style="z-index: 1; left: 28px; top: 193px; position: absolute; width: 86px; " Text="Room Type" CssClass="HeaderText"></asp:Label>
        <asp:Label ID="Label8" runat="server" style="z-index: 1; left: 622px; top: 197px; position: absolute; width: 77px; right: 303px; height: 18px;" Text="Tax" CssClass="HeaderText"></asp:Label>
        <asp:Label ID="Label9" runat="server" style="z-index: 1; left: 27px; top: 159px; position: absolute; width: 279px; right: 696px;" Text="REVIEW FARE DETAILS" CssClass="HeaderText" ForeColor="White"></asp:Label>
        <asp:Label ID="Label10" runat="server" style="z-index: 1; left: 266px; top: 193px; position: absolute; width: 169px; right: 567px; height: 49px;" Text="No of Rooms" CssClass="HeaderText"></asp:Label>
        <asp:Label ID="Label1_CheckInDate" runat="server" style="z-index: 1; left: 235px; top: 106px; position: absolute; width: 76px; right: 691px;" Text="Value:" CssClass="TextStyle" Font-Underline="True"></asp:Label>
        <asp:Label ID="Label_DLXTax" runat="server" style="z-index: 1; left: 621px; top: 284px; position: absolute; width: 130px; right: 251px; height: 22px;" Text="Value:" CssClass="TextStyle"></asp:Label>

        <asp:Label ID="Label_DLXFare" runat="server" style="z-index: 1; left: 448px; top: 288px; position: absolute; width: 122px; right: 432px; bottom: 224px;" Text="Value:" CssClass="TextStyle"></asp:Label>
        <asp:Label ID="Label16" runat="server" style="z-index: 1; left: 458px; top: 196px; position: absolute; width: 89px; height: 21px; bottom: 296px;" Text="Fare" CssClass="HeaderText"></asp:Label>
        <asp:Label ID="Label_DLXNoOfRoms" runat="server" style="z-index: 1; left: 318px; top: 286px; position: absolute; width: 40px; right: 644px; height: 21px;" Text="Value:" CssClass="TextStyle"></asp:Label>
        <asp:Label ID="Label_DLXTotalAmount" runat="server" style="z-index: 1; left: 835px; top: 279px; position: absolute; width: 130px; right: 37px;" Text="Value:" CssClass="TextStyle"></asp:Label>
        <asp:Label ID="Label_EXEFare" runat="server" style="z-index: 1; top: 341px; position: absolute; width: 112px; right: 436px;" Text="Value:" CssClass="TextStyle"></asp:Label>

        <asp:Label ID="Label_DLXFareDay" runat="server" style="z-index: 1; top: 286px; position: absolute; width: 50px; right: 823px;" Text="Value:" CssClass="TextStyle"></asp:Label>
        <asp:Label ID="Label_EXEFareDay" runat="server" style="z-index: 1; top: 341px; position: absolute; width: 40px; right: 832px; height: 19px;" Text="Value:" CssClass="TextStyle"></asp:Label>
        <asp:Label ID="Label_EXENoOfRooms" runat="server" style="z-index: 1; top: 337px; position: absolute; width: 40px; right: 649px; height: 19px;" Text="Value:" CssClass="TextStyle"></asp:Label>
        <asp:Label ID="Label_EXETotalAmount" runat="server" style="z-index: 1; top: 330px; position: absolute; width: 75px; right: 91px; height: 20px; left: 836px;" Text="Value:" CssClass="TextStyle"></asp:Label>
        <asp:Label ID="Label_EXE" runat="server" style="z-index: 1; top: 338px; position: absolute; width: 40px; height: 19px; left: 35px;" Text="EXE" CssClass="TextStyle"></asp:Label>
        <asp:Label ID="Label_GrandTotal" runat="server" style="z-index: 1; top: 444px; position: absolute; width: 285px; right: 466px; height: 29px;" Text="Value:" CssClass="HeaderText" Font-Bold="True" Font-Underline="True" ForeColor="#99FF99"></asp:Label>

        <asp:Label ID="Label12" runat="server" style="z-index: 1; left: 23px; top: 401px; position: absolute" Text="________________________________________________" CssClass="HeaderText"></asp:Label>
        <asp:Label ID="Label14" runat="server" style="z-index: 1; left: 43px; top: 441px; position: absolute" Text="GRAND TOTAL: " CssClass="HeaderText"></asp:Label>
        <asp:Label ID="Label_EXE_Tax" runat="server" style="z-index: 1; top: 331px; position: absolute; width: 95px; right: 288px; height: 19px; left: 619px;" Text="Value:" CssClass="TextStyle"></asp:Label>
        <asp:Label ID="Label13" runat="server" style="z-index: 1; left: 2px; top: 162px; position: absolute" Text="________________________________________________" CssClass="HeaderText"></asp:Label>
        <asp:Label ID="Label18" runat="server" style="z-index: 1; left: 18px; top: 464px; position: absolute" Text="________________________________________________" CssClass="HeaderText"></asp:Label>




    
        <asp:Label ID="Label_EXERooms" runat="server" style="z-index: 1; left: 870px; top: 107px; position: absolute" Text="Value:" CssClass="TextStyle" Font-Underline="True"></asp:Label>

    
        <asp:Button ID="Button_ContinueBooking" runat="server" OnClick="Button_ContinueBooking_Click" style="z-index: 1; left: 683px; top: 413px; position: absolute; height: 82px; width: 310px" Text="Continue booking" CssClass="myButton" />

    
        <asp:Label ID="Label_" runat="server" CssClass="TextStyle" style="z-index: 1; left: 39px; top: 281px; position: absolute; height: 18px" Text="DLX"></asp:Label>

    
        <asp:Label ID="Label17" runat="server" style="z-index: 1; left: 4px; top: 38px; position: absolute" Text="________________________________________________" CssClass="HeaderText"></asp:Label>
        <asp:Label ID="Label15" runat="server" style="z-index: 1; left: 23px; top: 401px; position: absolute" Text="________________________________________________" CssClass="HeaderText"></asp:Label>
    
    </div>
    </form>
</body>
</html>
