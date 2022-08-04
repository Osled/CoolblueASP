using System;
using System.Web.UI;
using System.Text.RegularExpressions;

namespace CoolblueAssignment
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //set Async to true
            this.AsyncMode = true;
        }
        /// <summary>
        /// Button designed to run PorductSearch() Funtion
        /// </summary>

        protected void Button1_Click(object sender, EventArgs e)
        {
            ProductSearch();
        }
  

        /// <summary>
        /// Regex is used to check if the Textbox hosts only Numbers.
        /// Apply search based on the input provided from the IdTextBox then display all the relevent information.
        /// </summary>

   
        private async void ProductSearch()
        {
           
            if (Regex.IsMatch(IdTextBox.Text, @"^\d+$"))
            {
                // collect the values typed inside the IdTextBox
                int id = int.Parse(IdTextBox.Text);

                // Run the LoadData funtion and apply to it id as an int
                var item = await DataProcessor.LoadData(id);

                // Create a variable that hosts the item id and convert it to a string.
                string idCheck = item.Id.ToString();

                // Apply the information collected to the text Labels in the Windows Form.
                I.Text = $"{item.Id}";
                NamesLabel.Text = $"{item.Name}";
                SalesLabel.Text = $"{item.SalesPrice} €";
                TypeIdLabel.Text = $"{item.ProuductTypeId}";

                // Cheack if the id typed in the text box is avialable in the API then display text.
                if (IdTextBox.Text.ToString() != idCheck)
                {
                    Notice.Text = "Product doesnt exist";
                }
                else
                {
                    Notice.Text = "";

                }
            }
            else
            {
                // Inform the user that the text box only accepts numbers if there is a misinput.
                Notice.Text = "Input Accepts only Numbers";
            }
        }

    }
}