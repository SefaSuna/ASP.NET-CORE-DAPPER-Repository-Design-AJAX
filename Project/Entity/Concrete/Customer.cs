

using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Security.Principal;
using System.Text;

namespace Entity.Concrete
{
    public class Customer
    {

        public int Id { get; set; }

        public string CustomerName { get; set; }
     
        public string CustomerSurname { get; set; }

        public DateTime? CustomerBirthday { get; set; }

        public string PhoneNumber { get; set; }
 
        public string MailAddress { get; set; }

        public DateTime? RegistrationDate { get; set; }

        public string Gender { get; set; }

        public string Status { get; set; }

    }
}
