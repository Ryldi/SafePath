using SafePath.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SafePath.Factory
{
    public class UserFactory
    {
        public static MsUser CreateUser(string name, string email, string password)
        {
            MsUser newUser = new MsUser
            {
                UserName = name,
                UserEmail = email,
                UserPassword = password
            };

            return newUser;
        }
    }
}