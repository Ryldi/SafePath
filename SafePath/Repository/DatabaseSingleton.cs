using SafePath.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SafePath.Repository
{
    public class DatabaseSingleton
    {
        public static SafePathDBEntities db = null;

        public static SafePathDBEntities GetInstance()
        {
            if (db == null) { db = new SafePathDBEntities(); }

            return db;
        }
    }
}