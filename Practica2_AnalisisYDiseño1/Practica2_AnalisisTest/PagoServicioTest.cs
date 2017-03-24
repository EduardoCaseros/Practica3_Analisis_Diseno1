using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Practica2_AnalisisYDiseño1;

namespace Practica2_AnalisisyDiseño1.Tests
{
    [TestClass]
    public class PagoServicioTest
    {
        [TestMethod]
        public void PagoServicio()
        {
            //Arrange o Planteamiento
            const int numero_cuenta = 1234; //cuenta de la persona en el sistema
            const int numero_servicio = 100; //cuenta del servicio a pagar
            const float monto = 50;//monto del servicio
            const int tipo_servicio = 1;//servicio de Agua
            const float esperado = 1;//resultado esperado monto

            //Act o Prueba
            var actual = BaseDatos.RealizarPago(numero_cuenta, monto, numero_servicio, tipo_servicio);

            //Assert o Afirmación
            Assert.AreEqual(esperado, actual);
        }
    }
}
