using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Database.ModelEntities
{
    public class AddPost
    {
        public int UserId { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
    }
}
