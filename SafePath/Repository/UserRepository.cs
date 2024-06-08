using SafePath.Factory;
using SafePath.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SafePath.Repository
{
    public class UserRepository
    {
        private static SafePathDBEntities _db = DatabaseSingleton.GetInstance();

        public static MsUser AuthUser(string email, string password)
        {
            MsUser user = _db.MsUsers.Where(x => x.UserEmail == email && x.UserPassword == password).FirstOrDefault();

            if (user == null) { return null; }

            return user;
        }

        public static void RegistUser(string name, string email, string password)
        {
            MsUser user = UserFactory.CreateUser(name, email, password);

            _db.MsUsers.Add(user);
            _db.SaveChanges();
        }
    }
}