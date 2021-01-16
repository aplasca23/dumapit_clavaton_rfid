using System.Threading.Tasks;
using NUnit.Framework;
using ReloadableRFID.Library.Models;
using ReloadableRFID.Library.Repositories;
using ReloadableRFID.Library.Tests.Enums;

namespace ReloadableRFID.Library.Tests.Repositories
{
    [TestFixture]
    public class YearLevelRepositoryTest
    {
        [Test]
        public async Task Insert_Year_Level_Should_Return_True()
        {
            var model = new YearLevelModel()
            {
                YearLevel = "1st Year"
            };
            var result = await YearLevelRepository.InsertYearLevelAsync(model);
            Assert.AreEqual(result, (int) Result.Success);
        }
    }
}
