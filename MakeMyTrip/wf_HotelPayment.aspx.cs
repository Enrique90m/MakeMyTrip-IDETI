using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MakeMyTrip
{
    public partial class wf_HotelPayment:System.Web.UI.Page
    {
        /// <summary>
        /// Objeto grafico: Page
        /// Nombre:  Page
        /// Evento: Load
        /// Descripcion:    
        /// Load de la pagina principal, en donde cargo a los labels la informacion guardada en el formulario anterior
        /// </summary>
        /// <param name="sender">Controlador de la accion</param>
        /// <param name="e">Argumentos del evento </param>
        protected void Page_Load ( object sender, EventArgs e )
        {
         //**********************  Pongo informacion en labels  ******************************
            //Obtengo el hotel ID 
            int? iHotelId = int.Parse(Session["HotelID"].ToString());

            //Obtengo el total de cuartos
            int? iTotalRooms = int.Parse(Session["TotalRooms"].ToString());

            //Obtengo el total
            decimal ? dTotalWithoutTax = decimal.Parse(Session["TotalAmout"].ToString());

            //Obtengo el descuento
            DataSet_dbFlightHotelTableAdapters.tbHotelDiscountTableAdapter taDiscount = new DataSet_dbFlightHotelTableAdapters.tbHotelDiscountTableAdapter();
            decimal? dDescuento = taDiscount.ScalarQuery(iHotelId,iTotalRooms) / 100; 
            if (dDescuento == null)
                dDescuento = 0;

            //Calculo el descuento
            dDescuento = dDescuento * dTotalWithoutTax;

            //Guardo el total con descuento
            decimal ? dTotalWithDiscount = dTotalWithoutTax - dDescuento;

            //Calculo tax
            decimal? dTax = dTotalWithDiscount * (decimal.Parse(Session["Tax"].ToString()) /100);

            //Calculo el total con tax
            decimal ? dTotal = dTax + dTotalWithDiscount;

            //Pongo datos en labels
            Label_Amount.Text = Session["TotalAmout"].ToString();
            Label_DiscountPct.Text = dDescuento.ToString();
            Label_TotalWithDiscount.Text = dTotalWithDiscount.ToString();
            Label_TotalTaxAmount.Text = dTax.ToString();
            Label_GrandTotal.Text = dTotal.ToString();


         //&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
        }

        protected void Button_MakePayment_Click ( object sender, EventArgs e )
        {
            int? iHotelId = int.Parse(Session["HotelID"].ToString());
            // Obtener CustomerId
            int? iCustomerId=int.Parse(Session["CustomerId"].ToString());
            // Obtener date of booking
            DateTime dDateOfBooking = DateTime.Parse(Session["CheckInDate"].ToString());
            // Obtener DLXRooms
            int? iDLXRooms = int.Parse(Session["DLXRooms"].ToString());
            // Obtener EXERooms
            int? iEXERooms = int.Parse(Session["EXERooms"].ToString());
            // obtener checkInDate
            DateTime dCheckInDate = DateTime.Parse(Session["CheckInDate"].ToString());
            //Fecha de hoy
            DateTime? dtNow = DateTime.Now;
            //Fecha de salida
            DateTime ? dCheckOutDate = DateTime.Parse(Session["CheckOutDate"].ToString());

            // crear tableadapter de tabla tbHotelBooking
            DataSet_dbFlightHotelTableAdapters.tbHotelBookingTableAdapter taHotelBooking = new DataSet_dbFlightHotelTableAdapters.tbHotelBookingTableAdapter ( );

            //Ejecuta el sp para insertar el booking
            taHotelBooking.prcInsertHotelBooking(iHotelId, iCustomerId, dtNow, iDLXRooms,iEXERooms,dCheckInDate,dCheckOutDate);

            //Objeto de payment table adapter
            DataSet_dbFlightHotelTableAdapters.tbFlightPaymentTableAdapter taPayment = new DataSet_dbFlightHotelTableAdapters.tbFlightPaymentTableAdapter();

            //Obtengo el siguiente payment ID
            string PaymentID = taPayment.GetNextPaymentID().ToString();
            if (PaymentID == "" || string.IsNullOrEmpty(PaymentID))
                PaymentID = "1";
            int iNextPaymentID = int.Parse(PaymentID) + 1;


            //Obtengo el booking id
            string sBookingID = taHotelBooking.GetMaxBookingID().ToString();
            if (sBookingID == "" || string.IsNullOrEmpty(sBookingID))
                sBookingID = "1";

            int iBookingID = int.Parse(sBookingID);

            //Inserto el pago
            //string dlx = Session["DLXFarPerDay"].ToString();
            //string exe = 
            //taPayment.prcInsertHotelPayment( iBookingID, 
            //                                decimal.Parse(Session["DLXFarPerDay"].ToString()),
            //                                decimal.Parse(Session["EXEFarPerDay"].ToString()),
            //                                decimal.Parse(Label_TotalTaxAmount.Text),
            //                                decimal.Parse(Label_DiscountPct.Text)
                                            //);

            taPayment.Insert(iNextPaymentID,
                            "H",
                            iBookingID,
                            decimal.Parse(Session["DLXFarPerDay"].ToString()),
                            decimal.Parse(Session["EXEFarPerDay"].ToString()),
                            decimal.Parse(Label_TotalTaxAmount.Text),
                            decimal.Parse(Label_GrandTotal.Text));
            Response.Write("<script LANGUAGE='JavaScript' >alert('Your booking id is: " + iBookingID.ToString() + " ')</script>");
            Button_MakePayment.Visible = false;
        }

    }
}