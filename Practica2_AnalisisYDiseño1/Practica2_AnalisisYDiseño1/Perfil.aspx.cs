using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Practica2_AnalisisYDiseño1
{
    public partial class Perfil1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["cuenta_"] == null)
            {
                Response.Redirect("Ingreso.aspx");
            }else
            {
                //Se manda a hacer la consulta para obtener los datos a mostrar
                DataTable Tabla = BaseDatos.DatosUsuario(Int32.Parse(Session["cuenta_"].ToString()));
                if (Tabla.Rows.Count > 0)
                {
                    nombre.Text = Tabla.Rows[0]["nombre"].ToString();
                    L_usuario.Text = Tabla.Rows[0]["usuario"].ToString();
                    L_correo.Text = Tabla.Rows[0]["correo"].ToString();
                    L_cuenta.Text = Session["cuenta_"].ToString();
                }

            }
        }
    }
}