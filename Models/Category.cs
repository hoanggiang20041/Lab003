using System.ComponentModel.DataAnnotations;

namespace Lab003.Models
{
    public class Category
    {
        public int Id { get; set; }
        public required string Name { get; set; }
        public List<Product> Products { get; set; } = new List<Product>(); // Quan hệ 1-nhiều
    }
}
