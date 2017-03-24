using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Practica2_AnalisisYDiseño1.BaseDatos;


namespace Practica2_AnalisisyDiseño1.Tests
{
    [TestClass]
    public class consultarSaldoTest
    {
        [TestMethod]
        public void consultarSaldo()
        {
            //Arrange o Planteamiento
            const int cuenta = 100; //numero de cuenta del usuario
            const float esperado = 500; //se espera que el usuario 100 tenga un monto de 500

            //Act o Prueba
            var actual = BaseDatos.consultarSaldo(cuenta);

            //Assert o Afirmación
            Assert.AreEqual(esperado, actual);
        }
    }
}
