using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practica2_AnalisisYDiseño1
{
    public partial class Pagos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["cuenta_"] == null)
            {
                Response.Redirect("Ingreso.aspx");
            }
            
        }


        // ******************************************** AGUA *******************************************************
        protected void b_agua_Click(object sender, EventArgs e)
        {
            RealizarPago(1, cuenta_ser.Text, monto.Text);
        }

        //************************************************ TELEFONO **************************************************

        protected void b_telefono_Click(object sender, EventArgs e)
        {
            RealizarPago(3, cuenta_ser.Text, monto.Text);
        }

        //********************************************** LUZ *********************************************************

        protected void b_luz_Click(object sender, EventArgs e)
        {
            RealizarPago(2, cuenta_ser.Text, monto.Text);
        }

        //*********************************************** COLEGIO *****************************************************

        protected void b_colegio_Click(object sender, EventArgs e)
        {
            RealizarPago(4, cuenta_ser.Text, monto.Text);
        }

        //************************************************ REALIZACION DE PAGO **********************************************
        private void RealizarPago(int tipo_pago, string cuenta, string monto)
        {
            if (BaseDatos.ValidarDatosPagos(cuenta, monto))
            {
                //SE Realiza el pago
                int estado;
                estado = BaseDatos.RealizarPago(Int32.Parse(Session["cuenta_"].ToString()), float.Parse(monto), Int32.Parse(cuenta),tipo_pago);
                if (estado == 1)
                {
                    Ms_error1.Text = "Pago Realizado Correctamente";
                    Ms_error1.Visible = true;

                }else if(estado == -1)
                {
                    Ms_error1.Text = "NO tiene el suficiente dinero para realizar el pago";
                    Ms_error1.Visible = true;
                }
            }
            else
            {
                //Se manda error
                Ms_error1.Text = "El monto a pagar debe ser numérico";
                Ms_error1.Visible = true;
            }
        }


    }
}