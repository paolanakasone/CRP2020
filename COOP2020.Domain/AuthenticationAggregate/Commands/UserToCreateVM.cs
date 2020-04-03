namespace COOP2020.Domain.AuthenticationAggregate.Commands
{
    public class UserToCreateVM
    {
        public string Alias { get; set; }
        public string Password { get; set; }
        public int IdRol { get; set; }
    }
}

