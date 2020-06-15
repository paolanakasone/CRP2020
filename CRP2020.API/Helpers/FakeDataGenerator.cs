using Bogus;
using COOP2020.Domain.Queries.CRP;
using System.Collections.Generic;

namespace CRP2020.API.Helpers
{
    public static class FakeDataGenerator
    {
        private static List<DoctorVM> doctorsVM;
        private static List<AffiliateVM> affiliatesVM;
        private static List<AdministratorVM> administratorsVM;

        public static List<DoctorVM> GetDoctors() 
        {
            if (doctorsVM == null) 
            {
                doctorsVM = new Faker<DoctorVM>()
                    .RuleFor(g => g.ID, f => f.UniqueIndex)
                    .RuleFor(g => g.DNI, f => f.Random.Long(12345678, 87654321).ToString())
                    .RuleFor(g => g.DataOfBirth, f => f.Person.DateOfBirth)
                    .RuleFor(g => g.Email, f => f.Person.Email)
                    .RuleFor(g => g.Gender, f => f.PickRandom("Masculino", "Femenino"))
                    .RuleFor(g => g.FirstName, f => f.Person.FirstName)
                    .RuleFor(g => g.LastName, f => f.Person.LastName)
                    .RuleFor(g => g.PhoneNumber, f => f.Person.Phone)
                    .RuleFor(g => g.Speciality, f => f.PickRandom("Administración y Gestión en Salud", "Anatomía Patológica", "Anatomía", "Patológica", "Anestesiología", "Cardiología"))
                    .RuleFor(g => g.SubSpeciality, f => f.PickRandom("Cardiologia Pediatrica", "Endocrinologia Pediatrica", "Gastroenrerologia Pediatrica", "Ginecologia Oncologica"))
                    .RuleFor(g => g.CMP, f => "0" + f.Random.Long(10000, 99999).ToString())
                    .Generate(1000);
            }
            return doctorsVM;
        }

        public static List<AffiliateVM> GetAffiliates()
        {
            if (affiliatesVM == null)
            {
                affiliatesVM = new Faker<AffiliateVM>()
                    .RuleFor(g => g.ID, f => f.UniqueIndex)
                    .RuleFor(g => g.DNI, f => f.Random.Long(12345678, 87654321).ToString())
                    .RuleFor(g => g.DataOfBirth, f => f.Person.DateOfBirth)
                    .RuleFor(g => g.Email, f => f.Person.Email)
                    .RuleFor(g => g.Gender, f => f.PickRandom("Masculino", "Femenino"))
                    .RuleFor(g => g.FirstName, f => f.Person.FirstName)
                    .RuleFor(g => g.LastName, f => f.Person.LastName)
                    .RuleFor(g => g.PhoneNumber, f => f.Person.Phone)
                    .Generate(1000);
            }
            return affiliatesVM;
        }

        public static List<AdministratorVM> GetAdministrators()
        {
            if (doctorsVM == null)
            {
                administratorsVM = new Faker<AdministratorVM>()
                    .RuleFor(g => g.ID, f => f.UniqueIndex)
                    .RuleFor(g => g.DNI, f => f.Random.Long(12345678, 87654321).ToString())
                    .RuleFor(g => g.DataOfBirth, f => f.Person.DateOfBirth)
                    .RuleFor(g => g.Email, f => f.Person.Email)
                    .RuleFor(g => g.Gender, f => f.PickRandom("Masculino", "Femenino"))
                    .RuleFor(g => g.FirstName, f => f.Person.FirstName)
                    .RuleFor(g => g.LastName, f => f.Person.LastName)
                    .RuleFor(g => g.PhoneNumber, f => f.Person.Phone)
                    .Generate(1000);
            }
            return administratorsVM;
        }
    }
}
