using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MakeMyTrip
{
    public partial class wf_ReviewHotelDetails:System.Web.UI.Page
    {
        /// <summary>
        /// Objeto grafico: Page
        /// Nombre:  Page
        /// Evento: Load
        /// Descripcion:    
        /// Load de la pagina principal, en donde cargo a los labels, la informacion guardada en el formulario anterior
        /// </summary>
        /// <param name="sender">Controlador de la accion</param>
        /// <param name="e">Argumentos del evento </param>
        protected void Page_Load ( object sender, EventArgs e )
        {
        //&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& - Enrique mdz
        //********************** Cargo la informacionen labels  *******************************************
            //Pongo informacion de hotel            
            Label_HotelName.Text = Session["HotelName"].ToString();
            Label1_CheckInDate.Text = Session["CheckInDate"].ToString();
            Label_CheckOutDate.Text = Session["CheckOutDate"].ToString();
            Label_DLXRooms.Text = Session["DLXRooms"].ToString();
            Label_EXERooms.Text = Session["EXERooms"].ToString();
        //&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
         //**********************  Calculo los totales a pagar por el cliente ******************************
            //Variables
            double dDLXFarPerDay;
            double dEXEFarePerDay;
            int iEXENoOfRooms;
            int iDLXNoOfRooms;
            double dEXEFare;
            double dDLXFare;
            double dDLXTax;
            double dEXETax;
            double dEXETotal;
            double dDLXTotal;
            double dGrandTotal;
            double dTotalWithoutTax;

            //Guardo datos en sus respectivas variables
            dDLXFarPerDay = double.Parse(Session["DLXFarPerDay"].ToString());
            dEXEFarePerDay = double.Parse(Session["EXEFarPerDay"].ToString());
            dDLXTax = double.Parse(Session["Tax"].ToString()) /100;
            dEXETax = dDLXTax;
            iEXENoOfRooms = int.Parse(Label_EXERooms.Text);
            iDLXNoOfRooms = int.Parse(Label_DLXRooms.Text);

            //Calculo fare de los cuartos
            dDLXFare = dDLXFarPerDay * iDLXNoOfRooms;
            dEXEFare = dEXEFarePerDay * iEXENoOfRooms;

            //Guardo el total sin tax
            dTotalWithoutTax = dDLXFare + dEXEFare;

            //Calculo tax
            dDLXTax = dDLXFare * dDLXTax;
            dEXETax = dEXEFare * dEXETax;

            //Calculo los totales de cuartos
            dDLXTotal = dDLXTax + dDLXFare;
            dEXETotal = dEXETax + dEXEFare;

            //Calculo grand total
            dGrandTotal = dDLXTotal + dEXETotal;

            //Guardo los totales en variables de sesion, para utilizarlas en el siguiente formulario
            Session["TotalAmout"] = dTotalWithoutTax;
            Session["TotalTaxAmount"] = dEXETax + dDLXTax;
            Session["TotalAmount"] = dGrandTotal;

            //Pongo informacion de los totales
            Label_DLXFareDay.Text = Session["DLXFarPerDay"].ToString();
            Label_EXEFareDay.Text = Session["EXEFarPerDay"].ToString();
            Label_DLXNoOfRoms.Text = iDLXNoOfRooms.ToString();
            Label_EXENoOfRooms.Text = iEXENoOfRooms.ToString();
            Label_DLXFare.Text = dDLXFare.ToString();
            Label_EXEFare.Text = dEXEFare.ToString();
            Label_DLXTax.Text = dDLXTax.ToString();
            Label_EXE_Tax.Text = dEXETax.ToString();
            Label_DLXTotalAmount.Text = dDLXTotal.ToString();
            Label_EXETotalAmount.Text = dEXETotal.ToString();
            Label_GrandTotal.Text = dGrandTotal.ToString();
        //&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
        }

        /// <summary>
        /// Objeto grafico: Button
        /// Nombre:  ContinueBooking
        /// Evento: Click
        /// Descripcion:    
        /// Boton que redirige al usuario a la siguiente pagina, en la cual capturara la informacion de los acompanantes
        /// </summary>
        /// <param name="sender">Controlador de la accion</param>
        /// <param name="e">Argumentos del evento </param>
        protected void Button_ContinueBooking_Click(object sender, EventArgs e)
        {
            //Redirijo al siguiente webForm
            Response.Redirect("wf_HotelPayment.aspx");
        }
    }
}