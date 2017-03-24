using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practica2_AnalisisYDiseño1
{
    public partial class Transferencias : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["cuenta_"] == null)
            {
                Response.Redirect("Ingreso.aspx");
            }
        }


        //***************************************** BOTON PARA REALIZAR LA TRANSFERENCIA **********************************************
        protected void b_agua_Click(object sender, EventArgs e)
        {
            if (BaseDatos.ValidarDatosPagos(cuenta_ser.Text, monto.Text))
            {
                //Se realiza el pago
                //SE Realiza el pago
                int estado;
                estado = BaseDatos.Transferencia(Int32.Parse(Session["cuenta_"].ToString()), Int32.Parse(cuenta_ser.Text), float.Parse(monto.Text));
                if (estado == 1)
                {
                    Ms_error1.Text = "Pago Realizado Correctamente";
                    Ms_error1.Visible = true;

                }
                else if (estado == -1)
                {
                    Ms_error1.Text = "NO tiene el suficiente dinero para realizar el pago";
                    Ms_error1.Visible = true;
                }else if(estado == 2)
                {
                    Ms_error1.Text = "La cuenta destino no existe";
                    Ms_error1.Visible = true;
                }
            }
            else
            {
                Ms_error1.Text = "El monto a pagar y la cuenta destino deben ser numérico";
                Ms_error1.Visible = true;
            }
        }
    }
}