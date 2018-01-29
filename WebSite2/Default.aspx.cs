using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnCheckBox1_Click(object sender, EventArgs e)
    {
        if (CheckBox1.Checked)
        {
            lbCheckBox1.Text = "Thank you for checking the box";

        }
    }

    protected void ImageMap1_Click(object sender, ImageMapEventArgs e)
    {
        lbImageMap1.Text = e.PostBackValue.ToString();
    }

    protected void ImageMap2_Click(object sender, ImageMapEventArgs e)
    {
        lbImageMap2.Text = e.PostBackValue.ToString();
    }



    protected void btnTextBox1_Click(object sender, EventArgs e)
    {
        lbTextBox1.Text = "You entered " + (TextBox1.Text.Length).ToString() + " characters";
    }

    protected void btnTextBox2_Click(object sender, EventArgs e)
    {
        if (!Email.IsValid)
        {
            lbTextBox2.Text = Email.ErrorMessage;
        }
    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        lbCalender1.Text = "You have selected " + Calendar1.SelectedDate.ToShortDateString();
    }

    protected void btnDropDownList1_Click(object sender, EventArgs e)
    {
        lbDropDownList1.Text = "Your favourite language is " + DropDownList1.Text;
    }

    protected void btnCheckBoxList1_Click(object sender, EventArgs e)
    {
        lbCheckBoxList1.Text = "";
        foreach (ListItem lItem in CheckBoxList1.Items)
        {
            if (lItem.Selected == true)
            {
                lbCheckBoxList1.Text += "Your favourite ice-cream is " + lItem.Text + "<br/>";
            }
        }
    }

    protected void btnradioButtonList1_Click(object sender, EventArgs e)
    {


        lbRadioButtonList1.Text = "You prefer " + RadioButtonList1.Text +" to the other music in the list.";
    }

    protected void btnListBox1_Click(object sender, EventArgs e)
    {
        List<string> items = new List<string>();

        foreach (ListItem lItem in ListBox1.Items)
        {
            if (lItem.Selected == true)
            {
                items.Add(lItem.Text);
            }
        }

        if (items.Count == 1)
        {
            lbListBox1.Text = "You think " + ListBox1.Text + " should be the next Chelsea Manager";
        }
        else {

            lbListBox1.Text = "You think ";
            for (int i = 0; i < items.Count; i++)
            {
                
                lbListBox1.Text += items[i] + " and ";
                
            }
            lbListBox1.Text += "should be Managers";
        }
    }
}

  