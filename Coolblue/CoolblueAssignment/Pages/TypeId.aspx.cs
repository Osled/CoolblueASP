using System;
using System.Text.RegularExpressions;

namespace CoolblueAssignment
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        /// <summary>
        /// Button designed to run PorductSearch() Funtion
        /// </summary>
        protected void Button1_Click(object sender, EventArgs e)
        {
            ProductTypeSearch();
        }

        /// <summary>
        /// Regex is used to check if the Textbox hosts only Numbers.
        /// Apply search based on the input provided from the IdTextBox then display all the relevent information.
        /// </summary>
        private async void ProductTypeSearch()
        {
            if (Regex.IsMatch(TypeTextBox.Text, @"^\d+$"))
            {
                // collect the values typed inside the IdTextBox
                int id = int.Parse(TypeTextBox.Text);

                // Run the LoadData funtion and apply to it id as an int
                var item = await DataProcessor.LoadDataType(id);

                // Create a variable that hosts the item id and convert it to a string.
                string idCheck = item.Id.ToString();

                //Apply the information collected to the text Labels in the Windows Form.
                ProductsTypeIdLabel.Text = $" { item.Id}";
                ProductsTypeNameLabel.Text = $" { item.Name}";
                InsurranceStatus.Text = $"{item.CanBeInsured}";

                // Cheack if the id typed in the text box is avialable in the API then display text.
                if (TypeTextBox.Text.ToString() != idCheck)
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