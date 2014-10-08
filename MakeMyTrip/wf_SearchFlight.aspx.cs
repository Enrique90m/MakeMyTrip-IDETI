using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MakeMyTrip
{
    public partial class wf_SearchFlight : System.Web.UI.Page
    {
        /// <summary>
        /// Objeto grafico: Page
        /// Nombre:  Page
        /// Evento: Load
        /// Descripcion:    
        /// Load de la pagina principal
        /// </summary>
        /// <param name="sender">Controlador de la accion</param>
        /// <param name="e">Argumentos del evento </param>
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        /// <summary>
        /// Objeto grafico: Button
        /// Nombre: SearchFlights
        /// Evento: Click
        /// Descripcion:    
        /// Metodo que verifica que todos los datos sean correctos y genera URL para el siguiente formulario
        /// </summary>
        /// <param name="sender">Controlador de la accion</param>
        /// <param name="e">Argumentos del evento </param>
        protected void Button_SearchFlights_Click(object sender, EventArgs e)
        {
            //Valido que halla pasado las pruebas de captura de datos
            Page.Validate();
            if (!Page.IsValid)
                return;

            //verifico que no sea nula la fecha
            if (Calendar_DepartureDate.SelectedDate < DateTime.Now.AddDays(-1))
            {
                Label_Date.Visible = true;
                return;
            }

            //Creo URL con datos para el siguiente formulario
            Response.Redirect("wf_DisplayFlight.aspx?CustomerID=" + DropDownList_CustomerID.SelectedValue +
                                "&Source=" + DropDownList_Source.SelectedValue +
                                "&Destination=" + DropDownList_Destination.SelectedValue + 
                                "&StartHour=" + DropDownList_StartHour.SelectedValue + 
                                "&EndHour=" + DropDownList_EndHour.SelectedValue + 
                                "&DepartureDate=" + Calendar_DepartureDate.SelectedDate + 
                                "&NoOfAdults=" + DropDownList_NoOfAdults.SelectedValue + 
                                "&NoOfChildren=" + DropDownList_NoOfChildren.SelectedValue + 
                                "&Day="+Calendar_DepartureDate.SelectedDate.Day +
                                "&Month=" + Calendar_DepartureDate.SelectedDate.Month +
                                "&Year=" + Calendar_DepartureDate.SelectedDate.Year);
        }

        /// <summary>
        /// Objeto grafico: DropDownList
        /// Nombre: StartHour
        /// Evento: SelectedIndexChanged
        /// Descripcion:    
        /// Metodo que al seleccionar una hora de este objeto, llena otro empezando con la hora + 1
        /// EJ:
        /// Puedes escojer de 0 a 23
        /// Selecciona 3
        /// Rellena de 3 a 23 hrs
        /// </summary>
        /// <param name="sender">Controlador de la accion</param>
        /// <param name="e">Argumentos del evento </param>
        protected void DropDownList_StartHour_SelectedIndexChanged(object sender, EventArgs e)
        {
            //Si no selecciono nada, lo deshabilito y agrego que puede escojer de la 1 a las 23, ya que el primer combo esta en 0
            if (int.Parse(DropDownList_StartHour.SelectedValue) == -1)
                DropDownList_EndHour.Enabled = false;
            if (DropDownList_StartHour.Text == "23")
            {
                DropDownList_EndHour.Items.Clear();
                DropDownList_EndHour.Items.Add("23");
            }
            else
            {
                //Habilito el combo y dependiendo de lo que halla seleccionado, agrego las horas siguientes
                DropDownList_EndHour.Enabled = true;
                DropDownList_EndHour.Items.Clear();
                DropDownList_EndHour.Text = string.Empty;
                if (int.Parse(DropDownList_StartHour.SelectedValue) == 22)
                    DropDownList_EndHour.Items.Add("23");
                else
                    for (int i = int.Parse(DropDownList_StartHour.SelectedValue) + 1; i < 24; i++)
                        DropDownList_EndHour.Items.Add(i.ToString());
            }
        }
        
        /// <summary>
        /// Objeto grafico: Calendar
        /// Nombre: DepartureDate
        /// Evento: DayRender
        /// Descripcion:    
        /// Cuando se carga el calendario, desactiva todas las fechas anteriores a la actual, ya que solo se puede escojer una fecha
        /// apartir de hoy
        /// </summary>
        /// <param name="sender">Controlador de la accion</param>
        /// <param name="e">Argumentos del evento </param>
        protected void Calendar_DepartureDate_DayRender(object sender, DayRenderEventArgs e)
        {
            //Verifico que la fecha seleccionada no sea menor a la de hoy
                if (e.Day.Date <= DateTime.Now.AddDays(-1))
                    e.Day.IsSelectable = false;
        }

        /// <summary>
        /// Objeto grafico: DropDownList
        /// Nombre: NoOfAdults
        /// Evento: SelectedIndexChanged
        /// Descripcion: Este objeto permite seleccionar el total de pasajeros adultos de 0 al 4, cuando seleccionas alguno de estos, 
        /// autocompleta el dropdown de ninos de manera que no pueda seleccionar mas de 5 pasajeros
        /// EJ:
        /// Puedes escojer de 1 a 4
        /// Selecciona 2
        /// Rellena de 0 a 3 para evitar que exceda 5
        /// </summary>
        /// <param name="sender">Controlador de la accion</param>
        /// <param name="e">Argumentos del evento </param>
        protected void DropDownList_NoOfAdults_SelectedIndexChanged(object sender, EventArgs e)
        {
            //Si no selecciono nada, lo deshabilito y agrego que puede escojer de la 1 a las 23, ya que el primer combo esta en 0
            if (int.Parse(DropDownList_NoOfChildren.SelectedValue) == -1)
                DropDownList_NoOfChildren.Enabled = false;
            else
            {
                //Habilito el combo y dependiendo de lo que halla seleccionado, agrego las horas siguientes
                DropDownList_NoOfChildren.Enabled = true;
                DropDownList_NoOfChildren.Items.Clear();
                DropDownList_NoOfChildren.Text = string.Empty;
                for (int i = 0; i <= 5 - int.Parse(DropDownList_NoOfAdults.SelectedValue); i++)
                    DropDownList_NoOfChildren.Items.Add(i.ToString());
            }
        }

        /// <summary>
        /// Objeto grafico: DropDownList
        /// Nombre: NoOfChildren
        /// Evento: SelectedIndexChanged
        /// Descripcion: Este objeto permite seleccionar el total de pasajeros ninos de 0 al 4, cuando seleccionas alguno de estos, 
        /// autocompleta el dropdown de adultos de manera que no pueda seleccionar mas de 5 pasajeros
        /// EJ:
        /// Puedes escojer de 0 a 4
        /// Selecciona 1
        /// Rellena de 1 a 4 para evitar que exceda 5
        /// </summary>
        /// <param name="sender">Controlador de la accion</param>
        /// <param name="e">Argumentos del evento </param>
        protected void DropDownList_NoOfAdults_SelectedIndexChanged1(object sender, EventArgs e)
        {
            //Total de pasajeros es mas de 5, borra los ninos, y rellena los campos maximos que pudiera escojer
            DropDownList_NoOfChildren.Items.Clear();
            for (int i = 0; i <= 5 - int.Parse(DropDownList_NoOfAdults.Text); i++)
                DropDownList_NoOfChildren.Items.Add(i.ToString());

        }

        /// <summary>
        /// Objeto grafico: Calendar
        /// Nombre: DepartureDate
        /// Evento: SectionChanged
        /// Descripcion:    
        /// Al escojer una fecha, esconde un label que sirve para decirle al usuario que debe escojer una fecha
        /// </summary>
        /// <param name="sender">Controlador de la accion</param>
        /// <param name="e">Argumentos del evento </param>
        protected void Calendar_DepartureDate_SelectionChanged(object sender, EventArgs e)
        {
            Label_Date.Visible = false;
        }

    }
}