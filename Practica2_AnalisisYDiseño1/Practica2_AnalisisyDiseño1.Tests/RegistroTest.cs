using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Practica2_AnalisisYDiseño1.BaseDatos;

namespace Practica2_AnalisisyDiseño1.Tests
{
    [TestClass]
    public class RegistroTest
    {
        [TestMethod]
        public void RegistroUsuario()
        {
            //Arrange o Planteamiento
            const String nombre = "Eduardo"; //nombre completo del usuario
            const String nombreUsuario = "EduardoxD"; //nickname del usuario
            const String correo = "eduardo_prueba@gmail.com"; //correo electronico del usuario
            const String contraseña = "eduardo123"; //contraseña del usuario
            const int esperado = 1;//se ha registrado = 1

            //Act o Prueba
            var actual = BaseDatos.RegistroUsuario(nombre, nombreUsuario, correo, contraseña);

            //Assert o Afirmación
            Assert.AreEqual(esperado, actual);

        }

        [TestMethod]
        public void RegistroCuenta()
        {
            //Arrange o Planteamiento
            const int cuenta = 100; //cuenta del usuario
            const float monto = 500; //monto del usuario
            const String usua = "EduardoxD"; //usuario
            const int esperado = 1;//se ha registrado = 1

            //Act o Prueba
            var actual = BaseDatos.RegistrarCuenta(cuenta,monto,usua);

            //Assert o Afirmación
            Assert.AreEqual(esperado, actual);

        }
    }
}
