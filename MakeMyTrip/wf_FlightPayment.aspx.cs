using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MakeMyTrip
{
    public partial class wf_FlightPayment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Obtengo datos de cookies y los pongo en sus labels
            Label_NoOfAdults.Text = Request.Cookies["DatosVuelo"]["NoOfAdults"];
            Label_NoOfChildren.Text = Request.Cookies["DatosVuelo"]["NoOfChildren"];
            Label_Source.Text = Request.Cookies["DatosVuelo"]["Source"];
            Label_Destination.Text = Request.Cookies["DatosVuelo"]["Destination"];
            Label_TotalAdultFare.Text = Request.Cookies["Totals"]["TotalAdult"];
            Label_TotalChildrenFare.Text = Request.Cookies["Totals"]["TotalChildren"];
            Label_Total.Text = Request.Cookies["Totals"]["GrandTotal"];
            Label_Tax.Text = (double.Parse(Request.Cookies["Totals"]["TaxAdult"]) + double.Parse(Request.Cookies["Totals"]["TaxChildren"])).ToString();
        }

        protected void Button_MakePayment_Click(object sender, EventArgs e)
        {
            //************************ Insertar reservacion en tabla
            //Creo objeto de table adapter
            DataSet_dbFlightHotelTableAdapters.tbFlightBookingTableAdapter taBooking = new DataSet_dbFlightHotelTableAdapters.tbFlightBookingTableAdapter();

            //Creo objeto de tabla formato flight booking
            DataSet_dbFlightHotel.tbFlightBookingDataTable dtBooking = new DataSet_dbFlightHotel.tbFlightBookingDataTable();

            //Primero genero objeto de fecha de hoy
            DateTime dtDateOfBooking = new DateTime(DateTime.Now.Year, DateTime.Now.Month, DateTime.Now.Day);

            //Genero objeto de fecha de ida
            DateTime dtDateOfDeparture = new DateTime(int.Parse(Request.Cookies["DatosVuelo"]["Year"]),
                                                    int.Parse(Request.Cookies["DatosVuelo"]["Month"]),
                                                    int.Parse(Request.Cookies["DatosVuelo"]["Day"]), 0, 0, 0);

            //Ahora inserto
            taBooking.Insert(int.Parse(Request.Cookies["DatosVuelo"]["FlightNo"]),
                             int.Parse(Request.Cookies["DatosVuelo"]["CustomerID"]),
                             dtDateOfBooking,
                             dtDateOfDeparture,
                             int.Parse(Request.Cookies["DatosVuelo"]["NoOfAdults"]),
                             int.Parse(Request.Cookies["DatosVuelo"]["NoOfChildren"]));

            //####################################


            ////************************************************ Inserto los pasajeros

            //Creo table adapter de pasajeros
            DataSet_dbFlightHotelTableAdapters.tbPassengersListTableAdapter taPassenger = new DataSet_dbFlightHotelTableAdapters.tbPassengersListTableAdapter();

            //Inserto adultos
            int i = 0;
            //string sAlgo = Request.Cookies["PassengerAdults"][i.ToString()].ToString();

            //Primero obtengo e imprimo su booking ID, ya que lo necesito para insertar el pasajero
            int? iBookingID = taBooking.MaxBooking();
            Response.Write("<script LANGUAGE='JavaScript' >alert('Your booking id is: " + iBookingID.ToString() + " ')</script>");

            for (i = 0; i < int.Parse(Request.Cookies["DatosVuelo"]["NoOfAdults"]); i++)
            {
                int? iSiguiente;
                //Calculo el siguiente pasajero
                if (taPassenger.SiguientePasajero() == null)
                    iSiguiente = 1;
                else
                    iSiguiente = int.Parse(taPassenger.SiguientePasajero().ToString()) + 1;

                //Inserto el pasajero
                taPassenger.Insert(int.Parse(Request.Cookies["DatosVuelo"]["FlightNo"]),
                                    dtDateOfDeparture,
                                    int.Parse(iSiguiente.ToString()),
                                    iBookingID,
                                    "A",
                                    Session[i.ToString()].ToString().Split('*')[0].ToString(),
                                    Session[i.ToString()].ToString().Split('*')[1].ToString(),
                                    Session[i.ToString()].ToString().Split('*')[2].ToString());
            }

            //Inserto ninos 
            //sAlgo = Request.Cookies["PassengerChildren"]["1"].ToString();
            for (int r = i; r <= int.Parse(Request.Cookies["DatosVuelo"]["NoOfChildren"]); r++)
            {
                int? iSiguiente;
                //Calculo el siguiente pasajero
                if (taPassenger.SiguientePasajero() == null)
                    iSiguiente = 1;
                else
                    iSiguiente = int.Parse(taPassenger.SiguientePasajero().ToString()) + 1;

                //Inserto el pasajero
                taPassenger.Insert(int.Parse(Request.Cookies["DatosVuelo"]["FlightNo"]),
                                    dtDateOfDeparture,
                                    int.Parse(iSiguiente.ToString()),
                                    iBookingID,
                                    "A",
                                    "CHL",
                                    Session[r.ToString()].ToString().Split('*')[0].ToString(),
                                    Session[r.ToString()].ToString().Split('*')[1].ToString());
            }
                //************************************************


                //#################################### Inserto el pago

                //Inserto el payment en la tabla de payment

                //Table adapter de Flight
                DataSet_dbFlightHotelTableAdapters.tbFlightPaymentTableAdapter taPayment = new DataSet_dbFlightHotelTableAdapters.tbFlightPaymentTableAdapter();
                string a = (Request.Cookies["Totals"]["BaseFareAdults"]);
                a = (Request.Cookies["Totals"]["BaseFareChildren"]);
                a = Request.Cookies["Totals"]["TaxAdult"];
                a = Request.Cookies["Totals"]["TaxChildren"];
                decimal? dTotalTax = decimal.Parse(Request.Cookies["Totals"]["TaxAdult"]);
                dTotalTax = decimal.Parse(Request.Cookies["Totals"]["TaxChildren"]) + dTotalTax;
                decimal? dBaseAdults = decimal.Parse(Request.Cookies["Totals"]["BaseFareAdults"]);
                decimal? dBaseChildren = decimal.Parse(Request.Cookies["Totals"]["BaseFareChildren"]);
                int iNextPayment;
                if((taPayment.GetNextPaymentID() == null))
                    iNextPayment = 1;
                else
                    iNextPayment = int.Parse(taPayment.GetNextPaymentID().ToString()) +1;

            //Inserto el pago
                taPayment.Insert(iNextPayment,
                                 "F",
                                 int.Parse(iBookingID.ToString()),
                                 dBaseAdults,
                                 dBaseChildren,
                                 dTotalTax,
                                 decimal.Parse("0"));
                //####################################
                Button_BookHotel.Visible = true;
                Button_MakePayment.Visible = false;
                Button_Cancel.Text = "Return";
        }

        protected void Button_Cancel_Click(object sender, EventArgs e)
        {
                Response.Redirect("wf_SearchFlight.aspx");
        }

        protected void Button_BookHotel_Click ( object sender, EventArgs e )
        {
            // escaparse a la siguiente pantalla
            Response.Redirect ( "wf_SearchHotel.aspx" );
        }
    }
}       