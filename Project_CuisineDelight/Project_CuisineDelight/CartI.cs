using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Project_CuisineDelight
{
    public class CartI
    {
        public List<CartItem> Items { get; set; }
        public CartI() { Items = new List<CartItem>(); }
        private int ItemIndexOf(int ID)

        {

            foreach (CartItem item in Items)

            {

                if (item.ID == ID)

                {

                    return Items.IndexOf(item);

                }

            }

            return -1;

        }
        public void Insert(CartItem item)

        {

            int index = ItemIndexOf(item.ID);

            if (index == -1)

            {

                Items.Add(item);

            }

            else

            {

                Items[index].Quantity++;

            }



        }
        public void Delete(int rowID) { Items.RemoveAt(rowID); }
        public void Update(int rowID, int Quantity)
        {
            if (Quantity > 0)
            {
                Items[rowID].Quantity = Quantity;
            }
            else
            {
                Delete(rowID);
            }
        }
        public double GrandTotal
        {
            get
            {
                if (Items == null) { return 0; }
                else
                {
                    double grandTotal = 0;
                    foreach (CartItem item in Items)
                    {
                        double value = item.Quantity * item.Price;
                        grandTotal = grandTotal + value;
                    }
                    return grandTotal;
                }
            }
        }
        public int ItemORPackage(int rowID)
        {
            
                return Items[rowID].PackageOrItem;
            
        }
        public double ItemORPackagePrice(int rowID)
        {

            return Items[rowID].Price;

        }
        public int ItemORPackageQty(int rowID)
        {

            return Items[rowID].Quantity;

        }
        public int ItemorPackageID(int rowID)
        {

            return Items[rowID].ID;

        }
    }
}