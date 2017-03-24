using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Practica2_AnalisisYDiseño1.BaseDatos;

namespace Practica2_AnalisisyDiseño1.Tests
{
    [TestClass]
    public class TransferirTest
    {
        [TestMethod]
        public void Transferir()
        {
            //Arrange o Planteamiento
            const int numero = 600; //numero de cuenta del usuario
            const int numero_transferido = 700; //numero de cuenta a transferir
            const float monto = 250; //monto de 250 a transferir
            const String descripcion = "Trasferencia de cuenta 600 a 700 monto 250"; //monto de transferencia
            const float esperado = 250;//monto transferido

            //Act o Prueba
            var actual = BaseDatos.transferir(numero,numero_transferido,monto,descripcion);

            //Assert o Afirmación
            Assert.AreEqual(esperado, actual);
        }
    }
}
