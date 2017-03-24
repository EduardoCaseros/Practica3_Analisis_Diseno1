using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Practica2_AnalisisYDiseño1;


namespace Practica2_AnalisisyDiseño1.Tests
{
    [TestClass]
    public class LoginTest
    {
        [TestMethod]
        public void Login_valores_Validos()
        {
            //Arrange o Planteamiento
            const int cuenta = 542; //numero de cuenta del usuario
                const String usuario = "castor11"; //nickname del usuario
                const String contrasena = "1234";//contraseña del usuario
                const int esperado = 1;//El login fue exitoso

            //Act o Prueba
                var actual = BaseDatos.LoginUsuario(cuenta,usuario,contrasena);
                
            //Assert o Afirmación
                Assert.AreEqual(esperado, actual);
        }
    }
}
