using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Practica2_AnalisisYDiseño1.BaseDatos;


namespace Practica2_AnalisisyDiseño1.Tests
{
    [TestClass]
    public class LoginTest
    {
        [TestMethod]
        public void Login_valores_Validos()
        {
            //Arrange o Planteamiento
                const int cuenta=100; //numero de cuenta del usuario
                const String usuario="CEGR"; //nickname del usuario
                const String contrasena="pass123";//contraseña del usuario
                //const DataTable esperado = 1;//El login fue exitoso

            //Act o Prueba
                var actual = BaseDatos.LoginUsuario(cuenta,usuario,contrasena);
            
            //Assert o Afirmación
                //Assert.AreEqual(esperado, actual);
        }
    }
}
