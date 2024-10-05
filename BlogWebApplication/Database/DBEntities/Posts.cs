using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Database.DBEntities
{
    public class Posts
    {
        [Key]
        public int PostId { get; set; }
        [ForeignKey("Users")]
        public int UserId { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
    }
}
