using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Practica2_AnalisisYDiseño1.BaseDatos;

namespace Practica2_AnalisisyDiseño1.Tests
{
    [TestClass]
    public class DebitoTest
    {
        [TestMethod]
        public void Debito()
        {
            //Arrange o Planteamiento
            const int numero_debitador = 300; //cuenta de la persona en el sistema
            const int numero_debitado = 400; //cuenta de la persona a debitar
            const float monto = 200;//monto de la debitacion
            const String descripcion = "Debito de la cuenta 300 a la 400 monto 200";//descripcion de la debitacion
            const float esperado = 200;

            //Act o Prueba
            var actual = BaseDatos.debito(numero_debitador, numero_debitado, monto, descripcion);

            //Assert o Afirmación
            Assert.AreEqual(esperado, actual);
        }
    }
}
