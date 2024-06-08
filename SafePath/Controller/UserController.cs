using SafePath.Model;
using SafePath.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SafePath.Controller
{
    public class UserController
    {
        public static string AuthenticateUser(string email, string password)
        {
            if(email == "")
            {
                return "Please fill your email";
            }
            if(password == "")
            {
                return "Please fill your password";
            }

            MsUser user = UserRepository.AuthUser(email, password);

            if(user == null) { return "Wrong credentials"; }

            return "Login Success.";
        }

        public static string RegistUser(string name, string email, string password)
        {
            if(name == "")
            {
                return "Please fill your name";
            }
            if (email == "")
            {
                return "Please fill your email";
            }
            if (password == "")
            {
                return "Please fill your password";
            }
            if (!email.Contains("@"))
            {
                return "Please fill your email correctly";
            }

            UserRepository.RegistUser(name, email, password);

            return "Regist Success.";
        }
    }
}