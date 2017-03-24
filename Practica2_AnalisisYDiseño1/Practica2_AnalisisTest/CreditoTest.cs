using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Practica2_AnalisisYDiseño1;

namespace Practica2_AnalisisyDiseño1.Tests
{
    [TestClass]
    public class CreditoTest
    {
        [TestMethod]
        public void Credito()
        {
            //Arrange o Planteamiento
            const int numero_acreditador = 1234; //cuenta de la persona en el sistema
            const int numero_acreditado = 4321222; //cuenta de la persona a acreditar
            const float monto = 110;//monto de la acreditacion
            const String descripcion = "Credito de la cuenta 100 a la 200 monto 500";//descripcion de la acreditacion
            const float esperado = -1;

            //Act o Prueba
            var actual = BaseDatos.Credito(numero_acreditador,numero_acreditado,monto,descripcion);

            //Assert o Afirmación
            Assert.AreEqual(esperado, actual);
        }
    }
}
