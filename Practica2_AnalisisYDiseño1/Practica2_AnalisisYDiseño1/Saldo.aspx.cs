using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practica2_AnalisisYDiseño1
{
    public partial class Saldo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["cuenta_"] == null)
            {
                Response.Redirect("Ingreso.aspx");
                
            }
            L_saldo.Text = "Q. "+ BaseDatos.ConsultarSaldo(Int32.Parse(Session["cuenta_"].ToString())).ToString();

        }
    }
}