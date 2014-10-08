using System;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace MakeMyTrip
{
    public partial class wf_DisplayHotel:System.Web.UI.Page
    {
        protected void Page_Load ( object sender, EventArgs e )
        {
            Label_Ciudad.Text=  Session ["City"].ToString ( );
            Label_CheckInDate.Text=Session ["CheckInDate"].ToString ( );
            Label_CheckOutDate.Text=Session ["CheckOutDate"].ToString ( );
            Label_DLXRooms.Text=Session ["DLXRooms"].ToString ( );
            Label_EXERooms.Text=Session ["EXERooms"].ToString ( );
        }

        protected void GridView_DisplayAvailHotels_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {

        }

        protected void GridView_DisplayAvailHotels_SelectedIndexChanged1(object sender, EventArgs e)
        {
            int? HotelID = int.Parse(GridView_DisplayAvailHotels.Rows[GridView_DisplayAvailHotels.SelectedIndex].Cells[1].Text);
            Session["HotelID"] = Convert.ToString(HotelID);
            //
            string CityName = GridView_DisplayAvailHotels.Rows[GridView_DisplayAvailHotels.SelectedIndex].Cells[2].Text;
            Session["CityName"] = CityName;
            //
            string HotelName = GridView_DisplayAvailHotels.Rows[GridView_DisplayAvailHotels.SelectedIndex].Cells[3].Text;
            Session["HotelName"] = HotelName;
            //
            int? DLXRooms = int.Parse(Label_DLXRooms.Text);
            Session["DLXRooms"] = Convert.ToString(DLXRooms);
            //
            int? EXERooms = int.Parse(Label_EXERooms.Text);
            Session["EXERooms"] = Convert.ToString(EXERooms);
            //
            int ? iTotalRooms = DLXRooms + EXERooms;
            Session["TotalRooms"] = iTotalRooms.ToString();
            //
            int? DLXBkRooms = int.Parse(GridView_DisplayAvailHotels.Rows[GridView_DisplayAvailHotels.SelectedIndex].Cells[6].Text);
            Session["DLXBkRooms"] = Convert.ToString(DLXBkRooms);
            //
            int? EXEBkRooms = int.Parse(GridView_DisplayAvailHotels.Rows[GridView_DisplayAvailHotels.SelectedIndex].Cells[7].Text);
            Session["EXEBkRooms"] = Convert.ToString(EXEBkRooms);

            double? DLXFarPerDay = double.Parse(GridView_DisplayAvailHotels.Rows[GridView_DisplayAvailHotels.SelectedIndex].Cells[8].Text);
            Session["DLXFarPerDay"] = Convert.ToString(DLXFarPerDay);

            double? EXEFarPerDay = double.Parse(GridView_DisplayAvailHotels.Rows[GridView_DisplayAvailHotels.SelectedIndex].Cells[9].Text);
            Session["EXEFarPerDay"] = Convert.ToString(EXEFarPerDay);

            double dTax = double.Parse(GridView_DisplayAvailHotels.Rows[GridView_DisplayAvailHotels.SelectedIndex].Cells[10].Text);
            Session["Tax"] = Convert.ToString(dTax);

            //Valido que no exceda el numero de cuartos si esta totalmente ocupado
            if (DLXRooms + DLXBkRooms > int.Parse(GridView_DisplayAvailHotels.Rows[GridView_DisplayAvailHotels.SelectedIndex].Cells[4].Text))
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('No available enough DLX Rooms!')</script>");
                return;
            }

            if (EXERooms + EXEBkRooms > int.Parse(GridView_DisplayAvailHotels.Rows[GridView_DisplayAvailHotels.SelectedIndex].Cells[5].Text))
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('No available enough EXE Rooms!')</script>");
                return;
            }

            // escaparse a la siguiente pantalla
            Response.Redirect ( "wf_ReviewHotelDetails.aspx" );
        }
    }
}