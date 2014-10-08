<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wf_SearchFlight.aspx.cs" Inherits="MakeMyTrip.wf_SearchFlight" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .Bottom {
            border-radius: 10px 10px 10px 10px;
            -moz-border-radius: 10px 10px 10px 10px;
            -webkit-border-radius: 10px 10px 10px 10px;
            border: 2px solid #008bf5;
            -webkit-box-shadow: 11px 11px 24px 6px rgba(0,0,0,0.67);
            -moz-box-shadow: 11px 11px 24px 6px rgba(0,0,0,0.67);
            box-shadow: 11px 11px 24px 6px rgba(0,0,0,0.67);
            width: 25cm;
            position: absolute;
            margin-left: 5cm;
             background-image: url(plane.jpg);
        }

        .Padding {
        position: relative;
        padding-right:100px;
        }

        .TextStyle
        {
        font-weight:bold;color:#000000;
        letter-spacing:0pt;word-spacing:0pt;
        font-size:19px;text-align:justify;
        font-family:helvetica, sans-serif;
        line-height:1;
        color:white;
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
</head>
<body style="height: 430px" class="bottom">
    <form id="form1" runat="server" class="Bottom">
    <div style="height: 443px" >
        <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 346px; top: 42px; position: absolute; right: 489px;" Text="CustomerID" CssClass="TextStyle"></asp:Label>
        <p>
            <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 253px; top: 74px; position: absolute" Text="Source" CssClass="TextStyle"></asp:Label>
            <asp:DropDownList ID="DropDownList_CustomerID" runat="server" style="z-index: 1; top: 40px; position: absolute; left: 469px" DataSourceID="SqlDataSource_ClientID" DataTextField="CustomerId" DataValueField="CustomerId">
            </asp:DropDownList>
            <asp:DropDownList ID="DropDownList_StartHour" runat="server" style="z-index: 1; left: 350px; top: 102px; position: absolute" AutoPostBack="True" OnSelectedIndexChanged="DropDownList_StartHour_SelectedIndexChanged">
                <asp:ListItem>0</asp:ListItem>
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
                <asp:ListItem>11</asp:ListItem>
                <asp:ListItem>12</asp:ListItem>
                <asp:ListItem>13</asp:ListItem>
                <asp:ListItem>14</asp:ListItem>
                <asp:ListItem>15</asp:ListItem>
                <asp:ListItem>16</asp:ListItem>
                <asp:ListItem>17</asp:ListItem>
                <asp:ListItem>18</asp:ListItem>
                <asp:ListItem>19</asp:ListItem>
                <asp:ListItem>20</asp:ListItem>
                <asp:ListItem>21</asp:ListItem>
                <asp:ListItem>22</asp:ListItem>
                <asp:ListItem>23</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="DropDownList_Source" runat="server" style="z-index: 1; left: 328px; top: 70px; position: absolute; " DataSourceID="SqlDataSource_CitySource" DataTextField="CityName" DataValueField="CityCode" AutoPostBack="True">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource_CitySource" runat="server" ConnectionString="<%$ ConnectionStrings:dbFlightHotelConnectionString %>" SelectCommand="SELECT [CityCode], [CityName] FROM [tbCity]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource_ClientID" runat="server" ConnectionString="<%$ ConnectionStrings:dbFlightHotelConnectionString %>" SelectCommand="SELECT [CustomerID] FROM [tbCustomer] ORDER BY [CustomerID]" ProviderName="System.Data.SqlClient"></asp:SqlDataSource>
        </p>
        <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 464px; top: 74px; position: absolute; right: 436px" Text="Destination" CssClass="TextStyle"></asp:Label>
        <asp:DropDownList ID="DropDownList_NoOfChildren" runat="server" style="z-index: 1; left: 575px; top: 335px; position: absolute" AutoPostBack="True">
            <asp:ListItem>0</asp:ListItem>
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="DropDownList_Destination" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource_Destination" DataTextField="CityName" DataValueField="CityCode" style="z-index: 1; left: 583px; top: 70px; position: absolute">
        </asp:DropDownList>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="DropDownList_Destination" ControlToValidate="DropDownList_Source" ErrorMessage="Cities must be diferent" Font-Bold="True" ForeColor="Red" Operator="NotEqual" style="z-index: 1; left: 738px; top: 70px; position: absolute"></asp:CompareValidator>
        <asp:DropDownList ID="DropDownList_EndHour" runat="server" style="z-index: 1; left: 544px; top: 101px; position: absolute">
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
            <asp:ListItem>6</asp:ListItem>
            <asp:ListItem>7</asp:ListItem>
            <asp:ListItem>8</asp:ListItem>
            <asp:ListItem>9</asp:ListItem>
            <asp:ListItem>10</asp:ListItem>
            <asp:ListItem>11</asp:ListItem>
            <asp:ListItem>12</asp:ListItem>
            <asp:ListItem>13</asp:ListItem>
            <asp:ListItem>14</asp:ListItem>
            <asp:ListItem>15</asp:ListItem>
            <asp:ListItem>16</asp:ListItem>
            <asp:ListItem>17</asp:ListItem>
            <asp:ListItem>18</asp:ListItem>
            <asp:ListItem>19</asp:ListItem>
            <asp:ListItem>20</asp:ListItem>
            <asp:ListItem>21</asp:ListItem>
            <asp:ListItem>22</asp:ListItem>
            <asp:ListItem>23</asp:ListItem>
        </asp:DropDownList>
        <asp:Label ID="Label6" runat="server" style="z-index: 1; left: 167px; top: 237px; position: absolute; right: 841px;" Text="Departure date" CssClass="TextStyle"></asp:Label>
        <asp:Calendar ID="Calendar_DepartureDate" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" OnDayRender="Calendar_DepartureDate_DayRender" style="z-index: 1; left: 291px; position: absolute; height: 193px; width: 356px; top: 133px" Width="350px" OnSelectionChanged="Calendar_DepartureDate_SelectionChanged">
            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
            <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
            <OtherMonthDayStyle ForeColor="#999999" />
            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
            <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
            <TodayDayStyle BackColor="#CCCCCC" />
        </asp:Calendar>
        &nbsp;<asp:Button ID="Button_SearchFlights" runat="server" Text="Search flights" style="z-index: 1; left: 364px; top: 367px; position: absolute; width: 212px; height: 57px;" OnClick="Button_SearchFlights_Click" CssClass="myButton" />
        <asp:DropDownList ID="DropDownList_NoOfAdults" runat="server" style="z-index: 1; left: 343px; top: 337px; position: absolute; right: 633px;" AutoPostBack="True" OnSelectedIndexChanged="DropDownList_NoOfAdults_SelectedIndexChanged1">
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
        </asp:DropDownList>
        <asp:Label ID="Label7" runat="server" style="z-index: 1; left: 271px; top: 340px; position: absolute; right: 615px;" Text="Adults" CssClass="TextStyle"></asp:Label>
        <asp:Label ID="Label8" runat="server" style="z-index: 1; left: 623px; top: 334px; position: absolute" Text="Children" CssClass="TextStyle"></asp:Label>
        <asp:Label ID="Label_Date" runat="server" Font-Bold="True" ForeColor="Red" style="z-index: 1; left: 697px; top: 222px; position: absolute" Text="Choose a date" Visible="False"></asp:Label>
        <asp:SqlDataSource ID="SqlDataSource_Destination" runat="server" ConnectionString="<%$ ConnectionStrings:dbFlightHotelConnectionString %>" SelectCommand="SELECT [CityCode], [CityName] FROM [tbCity]"></asp:SqlDataSource>
   </div>
        <asp:Label ID="Label9" runat="server" style="z-index: 1; left: 239px; top: 102px; position: absolute; height: 22px; width: 140px;" Text="Start hour" CssClass="TextStyle"></asp:Label>
        <asp:Label ID="Label10" runat="server" style="z-index: 1; left: 439px; top: 101px; position: absolute; width: 94px;" Text="End hour" CssClass="TextStyle"></asp:Label>
   </form>
</body>
</html>