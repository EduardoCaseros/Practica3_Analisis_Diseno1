using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Data;

namespace Practica2_AnalisisYDiseño1
{
    public partial class Ingreso : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void b_ingreasr_Click(object sender, EventArgs e)
        {
           if (cuenta.Text!="")
           {
               if(usuario.Text != "")
               {
                    if(pass.Text != "")
                    {
                        //Conexion a la base de datos
                        
                        DataTable Tabla = BaseDatos.LoginUsuario(Int32.Parse(cuenta.Text), usuario.Text, pass.Text);
                        if (Tabla.Rows.Count == 0)
                        {
                            //Datos no validos
                            Ms_error1.Text = "Los valores de cuenta, usuario y password no coincide, intente de nuevo";
                            Ms_error1.Visible = true;

                        }
                        else 
                        {
                            Ms_error1.Text = "Datos VALIDOS";
                            Ms_error1.Visible = true;
                        }
                        
                        

                    }else
                    {
                        Ms_error1.Text = "Campo contraseña es obligatorio";
                        Ms_error1.Visible = true;
                    }

               }else
               {
                   Ms_error1.Text = "Campo usuario es obligatorio";
                   Ms_error1.Visible = true;
               }
           }else
           {
               Ms_error1.Text = "Campo cuenta es obligatorio";
               Ms_error1.Visible = true;
           }


        }
    }

}