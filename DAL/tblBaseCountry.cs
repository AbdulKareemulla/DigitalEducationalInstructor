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
    
    public partial class tblBaseCountries
    {
        public tblBaseCountries()
        {
            this.tblBasePhoneCountryCodes = new HashSet<tblBasePhoneCountryCode>();
            this.tblSchoolDetails = new HashSet<tblSchoolDetail>();
        }
    
        public int RecordId { get; set; }
        public string AddedBy { get; set; }
        public Nullable<System.DateTime> CreatedDate_utc { get; set; }
        public Nullable<System.DateTimeOffset> UpdatedDate { get; set; }
        public string CountryCode { get; set; }
        public string CountryName { get; set; }
        public bool Record_Status { get; set; }
    
        public virtual ICollection<tblBasePhoneCountryCode> tblBasePhoneCountryCodes { get; set; }
        public virtual ICollection<tblSchoolDetail> tblSchoolDetails { get; set; }
    }
}
