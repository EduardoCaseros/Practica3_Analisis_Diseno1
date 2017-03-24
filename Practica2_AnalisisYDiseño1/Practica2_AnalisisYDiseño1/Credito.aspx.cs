using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practica2_AnalisisYDiseño1
{
    public partial class Credito : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["cuenta_"] == null)
            {
                Response.Redirect("Ingreso.aspx");
            }

        }

        //********************************** BOTON PARA REALIZAR UN CREDITO *****************************************************

        protected void b_agua_Click(object sender, EventArgs e)
        {

            if (BaseDatos.ValidarDatosPagos(cuenta_ser.Text, monto.Text))
            {

                //Se hace el debito
                int estado;
                estado = BaseDatos.Credito(Int32.Parse(Session["cuenta_"].ToString()), Int32.Parse(cuenta_ser.Text), float.Parse(monto.Text), descripcion.Text);
                if (estado == 1)
                {
                    Ms_error1.Text = "Credito Realizado Correctamente";
                    Ms_error1.Visible = true;

                }
                else if (estado == -1)
                {
                    Ms_error1.Text = "La cuenta a acreditar no tiene fondos suficientes";
                    Ms_error1.Visible = true;
                }
                else if (estado == 2)
                {
                    Ms_error1.Text = "La cuenta destino no existe";
                    Ms_error1.Visible = true;
                }

            }
            else
            {
                Ms_error1.Text = "El numero de cuenta y mono a debitar debe contener unicamente números";
                Ms_error1.Visible = true;
            }
        }
    }
}