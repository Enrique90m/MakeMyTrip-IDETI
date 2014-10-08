<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wf_SearchHotel.aspx.cs" Inherits="MakeMyTrip.wf_SearchHotel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
            width: 26.5cm;
            position: absolute;
            margin-left: 5cm;
             background-image: url(hotel.jpg);
        }

         .BlueButtonHotel {
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
	font-size:22px;
	font-weight:bold;
	padding:15px 36px;
	text-decoration:none;
	text-shadow:0px 2px 0px #3d768a;
}
.BlueButtonHotel:hover {
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #408c99), color-stop(1, #599bb3));
	background:-moz-linear-gradient(top, #408c99 5%, #599bb3 100%);
	background:-webkit-linear-gradient(top, #408c99 5%, #599bb3 100%);
	background:-o-linear-gradient(top, #408c99 5%, #599bb3 100%);
	background:-ms-linear-gradient(top, #408c99 5%, #599bb3 100%);
	background:linear-gradient(to bottom, #408c99 5%, #599bb3 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#408c99', endColorstr='#599bb3',GradientType=0);
	background-color:#408c99;
}
.BlueButtonHotel:active {
	position:relative;
	top:1px;
}

    </style>
    <title></title>
</head>
<body>
    <form id="form1" runat="server" class="Bottom">
    <div style="height: 515px; margin-left: 80px">
    
        <asp:DropDownList ID="DropDownList_CustomerID" runat="server" DataSourceID="dtsCustomerIDHotels" DataTextField="CustomerID" DataValueField="CustomerID" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" style="z-index: 1; left: 341px; top: 54px; position: absolute">
        </asp:DropDownList>
        <asp:Label ID="lblCustomerID" runat="server" style="z-index: 1; left: 207px; top: 57px; position: absolute; right: 649px;" Text="Customer ID" CssClass="TextStyle" Font-Size="15pt"></asp:Label>
        <asp:SqlDataSource ID="dtsCustomerIDHotels" runat="server" ConnectionString="<%$ ConnectionStrings:dbFlightHotelConnectionString %>" SelectCommand="SELECT [CustomerID] FROM [tbCustomer]"></asp:SqlDataSource>
        <asp:DropDownList ID="DropDownList_City" runat="server" DataSourceID="dtsCityHotel" DataTextField="CityName" DataValueField="CityCode" style="z-index: 1; left: 607px; top: 53px; position: absolute">
        </asp:DropDownList>
        <asp:Label ID="Label_ErrorDate" runat="server" style="z-index: 1; left: 786px; top: 158px; position: absolute; height: 178px; width: 211px" Text="The check out date must be greater than the check in date" Visible="False" CssClass="TextStyle" Font-Size="20pt" ForeColor="#FF6666"></asp:Label>
        <asp:Button ID="button_SearchHotels" runat="server" style="z-index: 1; left: 452px; top: 394px; position: absolute; height: 94px; width: 351px" Text="Search Hotels" OnClick="button_SearchHotels_Click" CssClass="BlueButtonHotel" />
        <asp:DropDownList ID="DropDownList_EXERooms" runat="server" AutoPostBack="True" style="z-index: 1; left: 365px; top: 453px; position: absolute; height: 18px; width: 39px;" OnSelectedIndexChanged="DropDownList_EXERooms_SelectedIndexChanged">
            <asp:ListItem>0</asp:ListItem>
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="DropDownList_DLXRooms" runat="server" AutoPostBack="True" style="z-index: 1; left: 365px; top: 420px; position: absolute; height: 17px" OnSelectedIndexChanged="DropDownList_DLXRooms_SelectedIndexChanged">
            <asp:ListItem>0</asp:ListItem>
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
        </asp:DropDownList>
        <asp:Label ID="Label4" runat="server" Font-Size="X-Large" style="z-index: 1; left: 226px; top: 358px; position: absolute; width: 493px" Text="Type how many rooms  you reserve this time:" CssClass="TextStyle"></asp:Label>
        <asp:Label ID="lblEXERooms" runat="server" Font-Size="X-Large" style="z-index: 1; left: 194px; top: 455px; position: absolute" Text="EXE Rooms" CssClass="TextStyle"></asp:Label>
        <asp:Label ID="lblDLXRooms" runat="server" Font-Size="X-Large" style="z-index: 1; left: 194px; top: 418px; position: absolute" Text="DLX Rooms" CssClass="TextStyle"></asp:Label>
        <asp:Calendar ID="Calendar_CheckOutDate" runat="server" style="z-index: 1; left: 516px; top: 150px; position: absolute; height: 188px; width: 259px" CssClass="TextStyle" OnSelectionChanged="Calendar_CheckOutDate_SelectionChanged" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" ShowGridLines="True" Width="220px">
            <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
            <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
            <OtherMonthDayStyle ForeColor="#CC9966" />
            <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
            <SelectorStyle BackColor="#FFCC66" />
            <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
            <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
        </asp:Calendar>
        <asp:Label ID="Label1" runat="server" Font-Size="X-Large" style="z-index: 1; left: 258px; top: 88px; position: absolute; width: 442px" Text="Choose the Check In and Check Out dates:" CssClass="TextStyle"></asp:Label>
        <asp:Label ID="Label5" runat="server" CssClass="TextStyle" Font-Size="15pt" style="z-index: 1; left: 18px; top: 189px; position: absolute; width: 87px" Text="Check in date"></asp:Label>
        <asp:Calendar ID="Calendar_CheckInDate" runat="server" OnSelectionChanged="clnHotelArrival_SelectionChanged" style="z-index: 1; left: 132px; top: 152px; position: absolute; height: 188px; width: 259px" CssClass="TextStyle" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" ShowGridLines="True" Width="220px">
            <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
            <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
            <OtherMonthDayStyle ForeColor="#CC9966" />
            <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
            <SelectorStyle BackColor="#FFCC66" />
            <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
            <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
        </asp:Calendar>
        <asp:Label ID="lblCity" runat="server" style="z-index: 1; left: 558px; top: 56px; position: absolute; height: 19px; width: 35px;" Text="City" CssClass="TextStyle" Font-Size="15pt"></asp:Label>
    
        <asp:SqlDataSource ID="dtsCityHotel" runat="server" ConnectionString="<%$ ConnectionStrings:dbFlightHotelConnectionString %>" SelectCommand="SELECT [CityName], [CityCode] FROM [tbCity]"></asp:SqlDataSource>
    
        <asp:Label ID="Label6" runat="server" CssClass="TextStyle" Font-Size="15pt" style="z-index: 1; left: 424px; top: 182px; position: absolute; height: 49px; width: 91px" Text="Check out date"></asp:Label>
    
    </div>
    </form>
</body>
</html>
