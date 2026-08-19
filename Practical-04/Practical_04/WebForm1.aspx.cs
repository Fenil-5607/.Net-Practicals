using System;

namespace Practical_04
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Label1.Text = "Full Name: " + TextBox1.Text;
                Label2.Text = "Email: " + TextBox2.Text;
                Label3.Text = "Contact No.: " + TextBox3.Text;
                Label4.Text = "College: " + TextBox4.Text;

                Label5.Text = "Department: " +
                    RadioButtonListDepartment.SelectedItem.Text;

                Label6.Text = "Event: " +
                    DropDownList1.SelectedItem.Text;

                Label7.Text = "Gender: " +
                    RadioButtonListGender.SelectedItem.Text;

                string skills = "";

                if (CheckBox2.Checked)
                    skills += "C# ";

                if (CheckBox3.Checked)
                    skills += "Python ";

                if (CheckBox1.Checked)
                    skills += "AI ";

                if (skills == "")
                    skills = "No Skills Selected";

                Label8.Text = "Skills: " + skills;
                Label9.Text = "Address: " + address.Text;

                if (CheckBox4.Checked)
                    Label10.Text = "Terms: Accepted";
                else
                    Label10.Text = "Terms: Not Accepted";
            }
        }
    }
}