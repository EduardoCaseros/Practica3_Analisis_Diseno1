using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Practica2_AnalisisYDiseño1;

namespace Practica2_AnalisisyDiseño1.Tests
{
    [TestClass]
    public class TransferirTest
    {
        [TestMethod]
        public void Transferir()
        {
            //Arrange o Planteamiento
            const int numero = 1234; //numero de cuenta del usuario
            const int numero_transferido = 4321; //numero de cuenta a transferir
            const float monto = 1000; //monto de 250 a transferir
            const float esperado = 1;//monto transferido

            //Act o Prueba
            var actual = BaseDatos.Transferencia(numero,numero_transferido,monto);

            //Assert o Afirmación
            Assert.AreEqual(esperado, actual);
        }
    }
}
