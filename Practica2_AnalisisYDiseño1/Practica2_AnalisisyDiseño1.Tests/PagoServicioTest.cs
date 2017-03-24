using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Practica2_AnalisisYDiseño1.BaseDatos;

namespace Practica2_AnalisisyDiseño1.Tests
{
    [TestClass]
    public class PagoServicioTest
    {
        [TestMethod]
        public void PagoServicio()
        {
            //Arrange o Planteamiento
            const int numero_cuenta = 500; //cuenta de la persona en el sistema
            const int numero_servicio = 100; //cuenta del servicio a pagar
            const float monto = 100;//monto del servicio
            const int tipo_servicio = 1;//servicio de Agua
            const float esperado = 100;//resultado esperado monto

            //Act o Prueba
            var actual = BaseDatos.pagoServicio(numero_cuenta, numero_servicio, monto, tipo_servicio);

            //Assert o Afirmación
            Assert.AreEqual(esperado, actual);
        }
    }
}
