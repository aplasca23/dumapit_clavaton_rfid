using System.Threading.Tasks;
using NUnit.Framework;
using ReloadableRFID.Library.Models;
using ReloadableRFID.Library.Repositories;
using ReloadableRFID.Library.Tests.Enums;

namespace ReloadableRFID.Library.Tests.Repositories
{
    [TestFixture]
    public class AccountTypeRepositoryTest
    {
        [Test]
        public async Task Insert_Account_Type_Should_Return_True()
        {
            var model = new AccountTypeModel()
            {
                AccountType = "Student"
            };
            var result = await AccountTypeRepository.InsertAccountTypeAsync(model);
            Assert.AreEqual(result, (int)Result.Success);
        }
    }
}
