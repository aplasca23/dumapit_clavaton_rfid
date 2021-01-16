using System.Threading.Tasks;
using NUnit.Framework;
using ReloadableRFID.Library.Models;
using ReloadableRFID.Library.Repositories;
using ReloadableRFID.Library.Tests.Enums;

namespace ReloadableRFID.Library.Tests.Repositories
{
    [TestFixture]
    public class DepartmentRepositoryTest
    {
        [Test]
        public async Task Insert_Department_Should_Return_True()
        {
            var model = new DepartmentModel()
            {
                Department = "College of Computer Studies"
            };

            var result = await DepartmentRepository.InsertDepartmentAsync(model);
            Assert.AreEqual(result, (int) Result.Success);
        }
    }
}
