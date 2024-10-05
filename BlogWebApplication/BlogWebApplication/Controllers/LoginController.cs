using Database;
using Database.DBEntities;
using Database.ModelEntities;
using Database.SearchEntity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.SqlServer.Server;

namespace BlogWebApplication.Controllers
{
    public class LoginController
    {

        public InboxContext _dbContext { get; }
        public LoginController(InboxContext dbContext) { _dbContext = dbContext; }

        [HttpPost("/login")]
        public Users AuthenticateUser([FromBody] loginUser formData)
        {
            int result = ValidateUser(formData);
            if (result!=-1)
            {
                return _dbContext.users_niket.Find(result);
            }
            else
            {
                return null;
            }
        }

        private int ValidateUser(loginUser formData)
        {
            var user = _dbContext.users_niket
                          .FirstOrDefault(u => u.UserName == formData.UserName && u.Password == formData.Password);
            if (user != null)
            {
                return user.UserID;
            }
            else
            {
                return -1;
            }
        }

        [HttpPost("GetUsers")]
        public Users GetUsers([FromBody] FindUser formdata)
        {
            var user = _dbContext.users_niket.Find(formdata.UserID);
            return user;
        }
    }
}
