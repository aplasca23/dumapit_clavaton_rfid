using System.Threading.Tasks;
using NUnit.Framework;
using ReloadableRFID.Library.Models;
using ReloadableRFID.Library.Repositories;
using ReloadableRFID.Library.Tests.Enums;

namespace ReloadableRFID.Library.Tests.Repositories
{
    [TestFixture]
    public class UserRepositoryTest
    {
        [Test]
        public async Task Insert_User_Should_Return_True()
        {
            var model = new UserModel()
            {
                Id = await UserRepository.GenerateKey(),
                Username = "admin",
                Password = "admin",
                AccountTypeId = 1 
            };

            var result = await UserRepository.InsertUserAsync(model);
            Assert.AreEqual(result, (int) Result.Success);
        }

        [Test]
        public async Task Get_User_Details_Should_Return_True()
        {
            string username = "admin";
            string password = "admin";
            var result = await UserRepository.GetUserDetails(username, password);
            Assert.IsNotNull(result);
        }
    }
}
