//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DAL
{
    using System;
    using System.Collections.Generic;
    
    public partial class tblSchoolDetail
    {
        public tblSchoolDetail()
        {
            this.tblClassSectionTimeTables = new HashSet<tblClassSectionTimeTable>();
            this.tblClassWiseSections = new HashSet<tblClassWiseSection>();
            this.tblClassWiseSections_History = new HashSet<tblClassWiseSections_History>();
            this.tblClasswiseSubjects_History = new HashSet<tblClasswiseSubjects_History>();
            this.tblSchoolwiseSubjects = new HashSet<tblSchoolwiseSubject>();
            this.tblSchoolWeekOffs = new HashSet<tblSchoolWeekOff>();
            this.tblSchoolHolidayLists = new HashSet<tblSchoolHolidayList>();
            this.tblSchoolHolidayList_History = new HashSet<tblSchoolHolidayList_History>();
            this.tblSchoolWiseMediums = new HashSet<tblSchoolWiseMedium>();
            this.tblSchoolWiseClasses = new HashSet<tblSchoolWiseClass>();
            this.tblSchoolWiseClasses_History = new HashSet<tblSchoolWiseClasses_History>();
            this.tblSchoolWiseSections = new HashSet<tblSchoolWiseSection>();
            this.tblSchoolInandOutTimes = new HashSet<tblSchoolInandOutTime>();
        }
    
        public int RecordId { get; set; }
        public string AddedBy { get; set; }
        public Nullable<System.DateTime> CreatedDate_utc { get; set; }
        public Nullable<System.DateTimeOffset> UpdatedDate { get; set; }
        public bool Record_Status { get; set; }
        public string Sch_Name { get; set; }
        public string Sch_Code { get; set; }
        public string Sch_Contact_Person { get; set; }
        public Nullable<int> Sch_Type_Id { get; set; }
        public Nullable<int> Sch_CountryId { get; set; }
        public Nullable<int> Sch_StateId { get; set; }
        public Nullable<int> Sch_DistrictId { get; set; }
        public string Sch_DistrictName { get; set; }
        public Nullable<int> Sch_CityId { get; set; }
        public string Sch_CityName { get; set; }
        public Nullable<int> Sch_PINCode { get; set; }
        public string Sch_Address1 { get; set; }
        public string Sch_Address2 { get; set; }
        public string Sch_PhNo1 { get; set; }
        public string Sch_Alt_PhNo { get; set; }
        public string Sch_Ph_CountryCode { get; set; }
        public string Sch_MobileNo { get; set; }
        public string Sch_EmailId { get; set; }
        public string Sch_Sector { get; set; }
        public Nullable<short> Sch_Subscription_Amount_per_Student { get; set; }
        public string Sch_Logo { get; set; }
        public string Sch_University { get; set; }
        public string Univ_Code { get; set; }
        public Nullable<int> Sch_Std_Range_Code { get; set; }
        public Nullable<bool> Demo { get; set; }
        public string HowDemo { get; set; }
        public string ContactPreference { get; set; }
    
        public virtual tblBaseCountry tblBaseCountry { get; set; }
        public virtual tblBaseSchoolCollegeType tblBaseSchoolCollegeType { get; set; }
        public virtual tblBaseState tblBaseState { get; set; }
        public virtual ICollection<tblClassSectionTimeTable> tblClassSectionTimeTables { get; set; }
        public virtual ICollection<tblClassWiseSection> tblClassWiseSections { get; set; }
        public virtual ICollection<tblClassWiseSections_History> tblClassWiseSections_History { get; set; }
        public virtual ICollection<tblClasswiseSubjects_History> tblClasswiseSubjects_History { get; set; }
        public virtual ICollection<tblSchoolwiseSubject> tblSchoolwiseSubjects { get; set; }
        public virtual ICollection<tblSchoolWeekOff> tblSchoolWeekOffs { get; set; }
        public virtual ICollection<tblSchoolHolidayList> tblSchoolHolidayLists { get; set; }
        public virtual ICollection<tblSchoolHolidayList_History> tblSchoolHolidayList_History { get; set; }
        public virtual ICollection<tblSchoolWiseMedium> tblSchoolWiseMediums { get; set; }
        public virtual ICollection<tblSchoolWiseClass> tblSchoolWiseClasses { get; set; }
        public virtual ICollection<tblSchoolWiseClasses_History> tblSchoolWiseClasses_History { get; set; }
        public virtual ICollection<tblSchoolWiseSection> tblSchoolWiseSections { get; set; }
        public virtual ICollection<tblSchoolInandOutTime> tblSchoolInandOutTimes { get; set; }
    }
}
