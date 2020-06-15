using System;

namespace COOP2020.Domain.Queries.CRP
{
    public class PersonVM
    {
        public int ID { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string PhoneNumber { get; set; }
        public string Email { get; set; }
        public string DNI { get; set; }
        public string Gender { get; set; }
        public DateTime DataOfBirth { get; set; }
    }
}
