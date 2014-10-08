using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MakeMyTrip
{
    public partial class wf_ReviewFlight : System.Web.UI.Page
    {
        //Declaro variables de calculo
        int iAdults, iChildren;
        double dChildrenFare, dAdultFare, dTax;
        double dBaseFareAdults, dBaseFareChildren, dTaxAdult, dTaxChildren, dTotalAdult, dTotalChildren, dGrandTotal;

        protected void Page_Load(object sender, EventArgs e)
        {
            //Cagargo los datos del vuelo en labels, estos datos los tomo de una cookie creada en el wf anterior
            Label_Source.Text = Request.Cookies["DatosVuelo"]["Source"];
            Label_Destination.Text = Request.Cookies["DatosVuelo"]["Destination"];
            Label_Airlane.Text = Request.Cookies["DatosVuelo"]["Airlane"];
            Label_Departure.Text = Request.Cookies["DatosVuelo"]["DepartureTime"];
            Label_NoOfAdults.Text = Request.Cookies["DatosVuelo"]["NoOfAdults"];
            Label_NoOfChildren.Text = Request.Cookies["DatosVuelo"]["NoOfChildren"];
            Label_ChildrenFare.Text = Request.Cookies["DatosVuelo"]["ChildrenFare"];
            Label_AdultFare.Text = Request.Cookies["DatosVuelo"]["AdultFare"];
            Label_Arrival.Text = Request.Cookies["DatosVuelo"]["ArrivalTime"];
            Label_FlightNo.Text = Request.Cookies["DatosVuelo"]["FlightNo"];
            Label_DepartureDate.Text = DateTime.Parse(Session["Date"].ToString()).ToString("yyyy-MM-dd");
            iAdults = int.Parse(Request.Cookies["DatosVuelo"]["NoOfAdults"]);
            iChildren = int.Parse(Request.Cookies["DatosVuelo"]["NoOfChildren"]);
            dAdultFare = double.Parse(Request.Cookies["DatosVuelo"]["AdultFare"]);
            dChildrenFare = double.Parse(Request.Cookies["DatosVuelo"]["ChildrenFare"]);
            dTax = double.Parse(Request.Cookies["DatosVuelo"]["AirportTax"]);

            //Calculo lo que debe pagar... tax, total
            dBaseFareAdults = iAdults * dAdultFare;
            dBaseFareChildren = iChildren * dChildrenFare;
            dTaxAdult = dBaseFareAdults * (dTax/100);
            dTaxChildren = dBaseFareChildren * (dTax/100);
            dTotalAdult = dBaseFareAdults + dTaxAdult;
            dTotalChildren = dBaseFareChildren + dTaxChildren;
            dGrandTotal = dTotalAdult + dTotalChildren;

            //Pongo totales en labels
            Label_NoOfAdults.Text = iAdults.ToString();
            Label_NoOfChildren.Text = iChildren.ToString();
            Label_AdultFare.Text = iAdults.ToString() + " * " + dAdultFare.ToString() + " = " + dBaseFareAdults.ToString();
            Label_ChildrenFare.Text = iChildren.ToString() + " * " +dChildrenFare.ToString() + " = " + dBaseFareChildren.ToString();
            Label_AdultTax.Text = dBaseFareAdults.ToString() + " * " + dTax + " = " + dTaxAdult.ToString();
            Label_ChildrenTax.Text = dBaseFareChildren.ToString() + " * " + dTax+ " = " + dTaxChildren.ToString();
            Label_TotalAdults.Text = dTotalAdult.ToString();
            Label_TotalChildren.Text = dTotalChildren.ToString();
            Label_GrandTotal.Text = dGrandTotal.ToString();
        }

        protected void Button_BookThisFlight_Click(object sender, EventArgs e)
        {
            //Agrego cookie que contiene los totales 
            Response.Cookies["Totals"]["BaseFareAdults"] = dBaseFareAdults.ToString();
            Response.Cookies["Totals"]["BaseFareChildren"] = dBaseFareChildren.ToString();
            Response.Cookies["Totals"]["TaxAdult"] = dTaxAdult.ToString();
            Response.Cookies["Totals"]["TaxChildren"] = dTaxChildren.ToString();
            Response.Cookies["Totals"]["TotalAdult"] = dTotalAdult.ToString();
            Response.Cookies["Totals"]["TotalChildren"] = dTotalChildren.ToString();
            Response.Cookies["Totals"]["GrandTotal"] = dGrandTotal.ToString();
            Response.Cookies["Totals"].Expires = DateTime.Now.AddHours(1);
            Response.Cookies["Indice"]["Indice"] = "0";
            Response.Cookies["Indice"].Expires = DateTime.Now.AddHours(1);
            //Muevo el usuario a la siguiente pagina
            Response.Redirect("wf_FlightTravelers.aspx");
        }
    }
}