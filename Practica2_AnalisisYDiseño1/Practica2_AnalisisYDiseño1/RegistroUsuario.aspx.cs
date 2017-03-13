using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practica2_AnalisisYDiseño1
{
    public partial class RegistroUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void b_ingreasr_Click(object sender, EventArgs e)
        {
            int Registro = BaseDatos.RegistroUsuario(nombre_completo.Text, usuario.Text, correo.Text, pass.Text);
            if (Registro == 1)
            {
                //Usuario Registrado
                Ms_error1.Text = "Usuario Registrado";
                Ms_error1.Visible = true;
                //Se crea su numero de cuenta
                Random Ram = new Random();
                int Numero = Ram.Next(1, 5000000);
                Registro = BaseDatos.RegistrarCuenta(Numero, 1,usuario.Text);
                if (Registro == 0)
                {

                }
                else if (Registro == 1)
                {
                      //Cuenta registrada correctamente
                }
                else if (Registro == 2)
                {
                    Ms_error1.Text ="Error al conectar la base de datos";
                    Ms_error1.Visible = true;
                }
            }
            else
            {
                Ms_error1.Text = "Elija otro nombre de usuario";
                Ms_error1.Visible = true;
            }



        }
    }
}