using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class Class1
    {
    }

    public class BO
    {

        public string addedBy;
        public string AddedBy
        {
            get { return addedBy; }
            set { addedBy = value; }
        }

        public string mediumName;
        public string MediumName
        {
            get { return mediumName; }
            set { mediumName = value; }
        }

        public string mediumdescription;
        public string MediumDescription
        {
            get { return mediumdescription; }
            set { mediumdescription = value; }
        }

        public int school_id;
        public int School_Id
        {
            get { return school_id; }
            set { school_id = value; }
        }

        public int recordId;
        public int RecordId
        {
            get { return recordId; }
            set { recordId = value; }
        }
    }

    public class ClassDetails
    {
        public string assessmentyear;
        public string Assessmentyear
        {
            get { return assessmentyear; }
            set { assessmentyear = value; }
        }

        public string addedBy;
        public string AddedBy
        {
            get { return addedBy; }
            set { addedBy = value; }
        }

        public string className;
        public string ClassName
        {
            get { return className; }
            set { className = value; }
        }

        public string classdescription;
        public string ClassDescription
        {
            get { return classdescription; }
            set { classdescription = value; }
        }

        public int school_id;
        public int School_Id
        {
            get { return school_id; }
            set { school_id = value; }
        }

        public int recordId;
        public int RecordId
        {
            get { return recordId; }
            set { recordId = value; }
        }
    }
}
