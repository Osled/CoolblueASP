using CoolblueAssignment;
using NUnit.Framework;
using System;
using System.Threading.Tasks;

namespace CoolblueAssignment
{
    [TestFixture]
    public class DataProcessorTests
    {
        [Test]
        public async Task LoadData_StateUnderTest_ExpectedBehavior()
        {
            // Arrange
            var dataProcessor = new DataProcessor();
            int id = 0;

            // Act
            var result = await DataProcessor.LoadData(
                id);

            // Assert
            Assert.IsNotNull(result);
        }

        [Test]
        public async Task LoadDataType_StateUnderTest_ExpectedBehavior()
        {
            // Arrange
            var dataProcessor = new DataProcessor();
            int typeId = 0;

            // Act
            var result = await DataProcessor.LoadDataType(
                typeId);

            // Assert
            Assert.IsNotNull(result);
        }
    }
}
