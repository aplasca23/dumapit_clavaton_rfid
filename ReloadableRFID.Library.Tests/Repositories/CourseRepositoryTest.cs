using System.Threading.Tasks;
using NUnit.Framework;
using ReloadableRFID.Library.Models;
using ReloadableRFID.Library.Repositories;
using ReloadableRFID.Library.Tests.Enums;

namespace ReloadableRFID.Library.Tests.Repositories
{
    [TestFixture]
    public class CourseRepositoryTest
    {
        [Test]
        public async Task Insert_Course_Should_Return_True()
        {
            var model = new CourseModel()
            {
                DepartmentId = 1,
                Course = "Bachelor of Science in Information Technology"
            };

            var result = await CourseRepository.InsertCourseAsync(model);

            Assert.AreEqual(result, (int) Result.Success);
        }
    }
}
