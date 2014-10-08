<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wf_DisplayHotel.aspx.cs" Inherits="MakeMyTrip.wf_DisplayHotel" %>

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
        .BookThis {
	-moz-box-shadow: 0px 10px 14px -7px #3e7327;
	-webkit-box-shadow: 0px 10px 14px -7px #3e7327;
	box-shadow: 0px 10px 14px -7px #3e7327;
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #77b55a), color-stop(1, #72b352));
	background:-moz-linear-gradient(top, #77b55a 5%, #72b352 100%);
	background:-webkit-linear-gradient(top, #77b55a 5%, #72b352 100%);
	background:-o-linear-gradient(top, #77b55a 5%, #72b352 100%);
	background:-ms-linear-gradient(top, #77b55a 5%, #72b352 100%);
	background:linear-gradient(to bottom, #77b55a 5%, #72b352 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#77b55a', endColorstr='#72b352',GradientType=0);
	background-color:#77b55a;
	-moz-border-radius:4px;
	-webkit-border-radius:4px;
	border-radius:4px;
	border:1px solid #4b8f29;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:arial;
	font-size:13px;
	font-weight:bold;
	padding:6px 12px;
	text-decoration:none;
	text-shadow:0px 1px 0px #5b8a3c;
}
.BookThis:hover {
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #72b352), color-stop(1, #77b55a));
	background:-moz-linear-gradient(top, #72b352 5%, #77b55a 100%);
	background:-webkit-linear-gradient(top, #72b352 5%, #77b55a 100%);
	background:-o-linear-gradient(top, #72b352 5%, #77b55a 100%);
	background:-ms-linear-gradient(top, #72b352 5%, #77b55a 100%);
	background:linear-gradient(to bottom, #72b352 5%, #77b55a 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#72b352', endColorstr='#77b55a',GradientType=0);
	background-color:White;
}
.BookThis:active {
	position:relative;
	top:1px;
}

    </style>    
    <title></title>
</head>
<body>
    <form id="form1" runat="server" class ="Bottom">
    <div style="height: 536px">
    
        <asp:Label ID="Label1" class="TextStyle" runat="server" style="z-index: 1; left: 52px; top: 47px; position: absolute; height: 24px; width: 65px;" Text="City" CssClass="HeaderText"></asp:Label>
        <asp:Label ID="Label_Ciudad" runat="server" style="z-index: 1; left: 130px; top: 48px; position: absolute; height: 19px; width: 178px;" Text="Value: Ciudad" CssClass="TextStyle"></asp:Label>
   
        <asp:Label ID="Label3" class="TextStyle"  runat="server" style="z-index: 1; left: 47px; top: 100px; position: absolute; height: 4px;" Text="Check-In Date" CssClass="HeaderText"></asp:Label>
        <asp:Label ID="Label_CheckInDate" class="TextStyle"  runat="server" style="z-index: 1; left: 215px; top: 104px; position: absolute; " Text="Value:CheckInDate"></asp:Label>
        <asp:Label ID="Label5" runat="server" class="TextStyle" style="z-index: 1; left: 505px; top: 105px; position: absolute; height: 19px;" Text="Check-Out Date" CssClass="HeaderText"></asp:Label>
        <asp:Label ID="Label_CheckOutDate" class="TextStyle" runat="server" style="z-index: 1; left: 693px; top: 106px; position: absolute; height: 19px" Text="Value:CheckOutDate"></asp:Label>
        <asp:Label ID="Label7" runat="server" class="TextStyle" style="z-index: 1; left: 49px; top: 140px; position: absolute" Text="DLX Rooms" CssClass="HeaderText"></asp:Label>
        <asp:Label ID="Label_DLXRooms" class="TextStyle"  runat="server" style="z-index: 1; left: 201px; top: 142px; position: absolute; height: 19px; right: 641px;" Text="Value: DLXRooms"></asp:Label>
        <asp:Label ID="Label9" runat="server" class="TextStyle" style="z-index: 1; left: 508px; top: 139px; position: absolute; width: 142px; bottom: 396px;" Text="EXE Rooms" CssClass="HeaderText"></asp:Label>
        <asp:Label ID="Label_EXERooms" class="TextStyle"  runat="server" style="z-index: 1; left: 658px; top: 141px; position: absolute; height: 21px; width: 145px;" Text="Value:EXERooms"></asp:Label>
   
        
        
        
        
        
         
        <asp:SqlDataSource ID="SqlDataSource_DisplayHotelRooms" runat="server" ConnectionString="<%$ ConnectionStrings:dbFlightHotelConnectionString %>" SelectCommand="prcDisplayHotelRooms" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:SessionParameter Name="CityCode" SessionField="City" Type="String" />
                <asp:SessionParameter DefaultValue="CheckInDate" Name="ReservationDate" SessionField="CheckInDate" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
   
        
        
        
        
        
         
        `<asp:GridView ID="GridView_DisplayAvailHotels" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource_DisplayHotelRooms" OnRowCancelingEdit="GridView_DisplayAvailHotels_RowCancelingEdit" OnSelectedIndexChanged="GridView_DisplayAvailHotels_SelectedIndexChanged1" style="z-index: 1; left: 12px; top: 180px; position: absolute; height: 216px; width: 970px" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" CssClass="TextStyle" Font-Size="9pt" GridLines="Horizontal">
            <Columns>
                <asp:ButtonField ButtonType="Button" CommandName="Select" HeaderText=" --" ShowHeader="True" Text="Book this" >
                <ControlStyle CssClass="BookThis" />
                </asp:ButtonField>
                <asp:BoundField DataField="HotelID" HeaderText="HotelID" ReadOnly="True" SortExpression="HotelID" />
                <asp:BoundField DataField="CityName" HeaderText="CityName" ReadOnly="True" SortExpression="CityName" />
                <asp:BoundField DataField="HotelName" HeaderText="HotelName" ReadOnly="True" SortExpression="HotelName" />
                <asp:BoundField DataField="DLXRooms" HeaderText="DLXRooms" ReadOnly="True" SortExpression="DLXRooms" />
                <asp:BoundField DataField="EXERooms" HeaderText="EXERooms" ReadOnly="True" SortExpression="EXERooms" />
                <asp:BoundField DataField="DLXRooms1" HeaderText="DLX ocuppied" ReadOnly="True" SortExpression="DLXRooms1" />
                <asp:BoundField DataField="EXERooms1" HeaderText="EXE ocuppied" ReadOnly="True" SortExpression="EXERooms1" />
                <asp:BoundField DataField="DLXRoomsFare" HeaderText="DLXRoomsFare" ReadOnly="True" SortExpression="DLXRoomsFare" />
                <asp:BoundField DataField="EXERoomsFare" HeaderText="EXERoomsFare" ReadOnly="True" SortExpression="EXERoomsFare" />
                <asp:BoundField DataField="HotelTax" HeaderText="HotelTax" ReadOnly="True" SortExpression="HotelTax" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#487575" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#275353" />
        </asp:GridView>
   
        
        
        
        
        
         
    </div>
    </form>
</body>
</html>
