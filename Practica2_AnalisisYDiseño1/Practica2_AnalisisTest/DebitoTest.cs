using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Practica2_AnalisisYDiseño1;

namespace Practica2_AnalisisyDiseño1.Tests
{
    [TestClass]
    public class DebitoTest
    {
        [TestMethod]
        public void Debito()
        {
            //Arrange o Planteamiento
            const int numero_debitador = 1234111; //cuenta de la persona en el sistema
            const int numero_debitado = 4321; //cuenta de la persona a debitar
            const float monto = 300;//monto de la debitacion
            const String descripcion = "Debito de la cuenta 300 a la 400 monto 200";//descripcion de la debitacion
            const float esperado = 2;

            //Act o Prueba
            var actual = BaseDatos.Debitar(numero_debitador, numero_debitado, monto, descripcion);

            //Assert o Afirmación
            Assert.AreEqual(esperado, actual);
        }
    }
}
