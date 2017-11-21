using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dapper;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using DAL;
using System.Text;
namespace DAL.DataAccessCode
{
   
   public  class MediumDAL
    {
        static IDbConnection db = new SqlConnection(ConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString);
        string cs = ConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString;
        SqlConnection con;
        SqlDataAdapter adapt;
        DataTable dt;

        public System.Collections.Generic.List<BO> GetAll()
        {
            List<BO> listmedium = new List<BO>();
            using (var mediums = db.QueryMultiple("GetSchoolWiseMediums", new { Sch_Id = 6 }, commandType: CommandType.StoredProcedure))
            {
                listmedium = mediums.Read<BO>().ToList();
            }
            return listmedium;
        }

        public System.Collections.Generic.List<BO> GetBaseMedium()
        {
            List<BO> listmedium = new List<BO>();
            using (var mediums = db.QueryMultiple("GetBaseMedium", new { }, commandType: CommandType.StoredProcedure))
            {
                listmedium = mediums.Read<BO>().ToList();
            }
            return listmedium;
        }

        public void InsertMedium(string mediumname,string mediumdescription,int schoolid)
        {
            using (var multipleresult = db.QueryMultiple("InsertSchoolWiseMediums", new { Addedby = "Abdul", MediumName = mediumname, MediumDesc = mediumdescription, Sch_id = schoolid }, commandType: CommandType.StoredProcedure))
            {
            }
        }

        public void DeleteMedium(int recodrid)
        {
            using (var multipleresult = db.QueryMultiple("DeleteSchoolWiseMediums", new { RecordId = recodrid }, commandType: CommandType.StoredProcedure))
            {
            }
        }

        public void UpadteMedium(string mediumname, string mediumdescription, int recordid)
        {
            using (var multipleresult = db.QueryMultiple("UpdateSchoolWiseMediums", new { Addedby = "Abdul", MediumName = mediumname, MediumDesc = mediumdescription, RecordId = recordid }, commandType: CommandType.StoredProcedure))
            {
            }

        }

    }
}
