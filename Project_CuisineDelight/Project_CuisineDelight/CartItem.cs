using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Project_CuisineDelight
{
    public class CartItem
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public double Price { get; set; }
        public int Quantity { get; set; }
        public int PackageOrItem { get; set; }
       
        public CartItem() { }
    public CartItem(int ID, string Name, string Description, double Price, int Quantity, int PackageOrItem)

        {
            this.ID = ID;
            this.Name = Name;
            this.Description = Description;
            this.Price = Price;
            this.Quantity = Quantity;
            this.PackageOrItem = PackageOrItem;
        }
    }
}