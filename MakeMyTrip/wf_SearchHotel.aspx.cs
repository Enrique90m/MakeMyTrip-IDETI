using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MakeMyTrip
{
    public partial class wf_SearchHotel:System.Web.UI.Page
    {
        //DateTime dtmDepartureDate = new DateTime ( );
        protected void Page_Load ( object sender, EventArgs e )
        {
            DropDownList_EXERooms.Enabled=false;
        }


        protected void DropDownList1_SelectedIndexChanged ( object sender, EventArgs e )
        {

        }

        protected void clnHotelArrival_SelectionChanged ( object sender, EventArgs e )
        {

        }

        protected void button_SearchHotels_Click(object sender, EventArgs e)
        {
            //Valido que la fecha de ida sea mayor o igual a la de llegada
            if (DateTime.Parse(Calendar_CheckOutDate.SelectedDate.ToString()) < DateTime.Parse(Calendar_CheckInDate.SelectedDate.ToString()))
            {
                Label_ErrorDate.Visible = true;
                return;
            }

            // Guardar variables de sesion de este formato
            Session ["CustomerId"]=DropDownList_CustomerID.Text;
            Session ["City"]=DropDownList_City.Text;
            Session ["CheckInDate"]=Calendar_CheckInDate.SelectedDate.ToString ( "yyyy-MM-dd" );
            Session ["CheckOutDate"]= Calendar_CheckOutDate.SelectedDate.ToString ( "yyyy-MM-dd" );
            Session ["DLXRooms"]=DropDownList_DLXRooms.Text;
            Session ["EXERooms"]=DropDownList_EXERooms.Text;

            // escaparse a la siguiente pantalla
            Response.Redirect ( "wf_DisplayHotel.aspx" );

        }

        protected void DropDownList_DLXRooms_SelectedIndexChanged ( object sender, EventArgs e )
        {
            int iVal=0;
            //Total de cuartos DLX + EXE debe ser menor o igual a 5 (se redefine el contenido de la lista de EXE Rooms)
            DropDownList_EXERooms.Items.Clear();

            iVal = int.Parse(DropDownList_DLXRooms.Text);
            for (int i = 0; i <= (5 - iVal); i++)
                 DropDownList_EXERooms.Items.Add( i.ToString ( ) );
            //
            DropDownList_EXERooms.Enabled=true;

        }

        protected void DropDownList_EXERooms_SelectedIndexChanged ( object sender, EventArgs e )
        {
            //Response.Write ( "<script LANGUAGE='JavaScript' >alert('Reserving more than 5 rooms is not allowed; retype please." + " ')</script>" );
            //DropDownList_DLXRooms.Focus ( );
        }

        protected void Calendar_CheckOutDate_SelectionChanged(object sender, EventArgs e)
        {

        }
    }
}