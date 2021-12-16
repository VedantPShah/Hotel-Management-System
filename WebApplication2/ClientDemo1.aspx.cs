using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


namespace WebApplication2
{
    public partial class ClientDemo1 : System.Web.UI.Page
    {
        SqlConnection conn;
        String rm,msg;
        int hkbh = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            rm = Session["user"].ToString();
        }

        protected void rsbb(object sender, EventArgs e)
        {
            string[] selecteditems = CheckBoxList2.Items.Cast<ListItem>().Where(l => l.Selected)
                                         .Select(l => l.Value)
                                         .ToArray();
            //Create Comma Separated values from Array here
            string msg = String.Join("$", selecteditems);
            string insertQuery = "insert into Room_Service values ('" + rm + "','" + msg + "');";
            SqlCommand cmd = new SqlCommand(insertQuery, conn);
            cmd.ExecuteNonQuery();
            conn.Close();

            CheckBoxList2.ClearSelection();
        }

        protected void hkbb(object sender, EventArgs e)
        {
            /*if(hkbh==0)
            {

                hkbh++;
            }
            if (hkbh == 1)
            {*/
                String msg1 = null;
                if (!string.IsNullOrWhiteSpace(ShowerKit.Text))
                {
                    string showerkit = "Shower Kit x" + ShowerKit.Text;
                    msg1 = msg1 + showerkit + "$";
                }
                if (!string.IsNullOrWhiteSpace(Tea.Text))
                {
                    string tea = "Tea x" + Tea.Text;
                    msg1 = msg1 + tea + "$";
                }
                if (!string.IsNullOrWhiteSpace(Coffee.Text))
                {
                    string coffee = "Coffee x" + Coffee.Text;
                    msg1 = msg1 + coffee + "$";
                }
                if (!string.IsNullOrWhiteSpace(Shampoo.Text))
                {
                    string shampoo = "Shampoo x" + Shampoo.Text;
                    msg1 = msg1 + shampoo + "$";
                }
                if (!string.IsNullOrWhiteSpace(ShowerGel.Text))
                {
                    string showergel = "Shower Gel x" + ShowerGel.Text;
                    msg1 = msg1 + showergel + "$";
                }
                if (!string.IsNullOrWhiteSpace(Towel.Text))
                {
                    string towel = "Towel x" + Towel.Text;
                    msg1 = msg1 + towel + "$";
                }
                if (!string.IsNullOrWhiteSpace(MilkPowder.Text))
                {
                    string milkpowder = "Milk Powder x" + MilkPowder.Text;
                    msg1 = msg1 + milkpowder + "$";
                }
                if (!string.IsNullOrWhiteSpace(DentalKit.Text))
                {
                    string dentalkit = "Dental Kit x" + DentalKit.Text;
                    msg1 = msg1 + dentalkit + "$";
                }

                string insertQuery = "insert into House_Keeping values ('" + rm + "','" + msg1 + "');";
                SqlCommand cmd = new SqlCommand(insertQuery, conn);
                cmd.ExecuteNonQuery();
                conn.Close();
                Response.Redirect("ClientDemo1.aspx");
            //}
        }


        protected void barbb(object sender, EventArgs e)
        {
            String msg = null;
            if(!string.IsNullOrWhiteSpace(Margarita.Text))
            {
                msg = msg + "Margarita x" + Margarita.Text + "$";
            }
            if (!string.IsNullOrWhiteSpace(Cosmopolitan.Text))
            {
                msg = msg + "Cosmopolitan x" + Cosmopolitan.Text + "$"; 
            }
            if (!string.IsNullOrWhiteSpace(BloodyMary.Text))
            {
                msg = msg + "Bloody Mary x" + BloodyMary.Text + "$";
            }
            if (!string.IsNullOrWhiteSpace(WhiskySour.Text))
            {
                msg = msg + "Whisky Sour x" + WhiskySour.Text + "$";
            }
            if (!string.IsNullOrWhiteSpace(PinaColada.Text))
            {
                msg = msg + "Pina Colada x" + PinaColada.Text + "$";
            }
            if (!string.IsNullOrWhiteSpace(LeffeBrune.Text))
            {
                msg = msg + "Leffe Brune x" + LeffeBrune.Text + "$";
            }
            if (!string.IsNullOrWhiteSpace(KingfisherUltra.Text))
            {
                msg = msg + "Kingfisher Ultra x" + KingfisherUltra.Text + "$";
            }
            if (!string.IsNullOrWhiteSpace(Budweiser.Text))
            {
                msg = msg + "Budweiser x" + Budweiser.Text + "$"; 
            }
            if (!string.IsNullOrWhiteSpace(Tuborg.Text))
            {
                msg = msg + "Tuborg x" + Tuborg.Text + "$";
            }
            if (!string.IsNullOrWhiteSpace(Carlsberg.Text))
            {
                msg = msg + "Carlsberg x" + Carlsberg.Text + "$";
            }
            if (!string.IsNullOrWhiteSpace(GreyGoose.Text))
            {
                msg = msg + "Grey Goose x" + GreyGoose.Text + "$";
            }
            if (!string.IsNullOrWhiteSpace(Bacardi.Text))
            {
                msg = msg + "Bacardi x" + Bacardi.Text + "$";
            }
            if (!string.IsNullOrWhiteSpace(Absolut.Text))
            {
                msg = msg + "Absolut x" + Absolut.Text + "$";
            }

            string insertQuery = "insert into Bar values ('" + rm + "','" + msg + "');";
            SqlCommand cmd = new SqlCommand(insertQuery, conn);
            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("ClientDemo1.aspx");
        }

        protected void resbb(object sender, EventArgs e)
        {
            string msg = null;
            if (!string.IsNullOrWhiteSpace(HaraBharaPaneer.Text))
            {
                msg = msg + "Hara Bhara Paneer x" + HaraBharaPaneer.Text + "$";
            }
            if (!string.IsNullOrWhiteSpace(CheeseBalls.Text))
            {
                msg = msg + "Cheese Balls x" + CheeseBalls.Text + "$";
            }
            if (!string.IsNullOrWhiteSpace(GrilledPrawns.Text))
            {
                msg = msg + "Grilled Prawns x" + GrilledPrawns.Text + "$";
            }
            if (!string.IsNullOrWhiteSpace(ChickenTikka.Text))
            {
                msg = msg + "Chicken Tikka x" + ChickenTikka.Text + "$";
            }
            if (!string.IsNullOrWhiteSpace(DalFrywrice.Text)) 
            {
                msg = msg + "Dal Fry(with rice) x" + DalFrywrice.Text + "$";
            }
            if (!string.IsNullOrWhiteSpace(KadhaiPaneer.Text))
            {
                msg = msg + "Kadhai Paneer x" + KadhaiPaneer.Text + "$";
            }
            if (!string.IsNullOrWhiteSpace(BhindiMasala.Text))
            {
                msg = msg + "Bhindi Masala x" + BhindiMasala.Text + "$";
            }
            if (!string.IsNullOrWhiteSpace(ButterChicken.Text))
            {
                msg = msg = "Butter Chicken x" + ButterChicken.Text + "$";
            }
            if (!string.IsNullOrWhiteSpace(MuttonRoganjosh.Text))
            {
                msg = msg + "Mutton Roganjosh x" + MuttonRoganjosh.Text + "$";
            }
            if (!string.IsNullOrWhiteSpace(PrawnThaiGreenCurrywrice.Text))
            {
                msg = msg + "Prawn Thai Green Curry(with rice) x" + PrawnThaiGreenCurrywrice.Text + "$";
            }
            if (!string.IsNullOrWhiteSpace(Butternaan.Text))
            {
                msg = msg + "Butter Naan x" + Butternaan.Text + "$";
            }
            if (!string.IsNullOrWhiteSpace(Tawaroti.Text))
            {
                msg = msg + "Tawa Roti x" + Tawaroti.Text + "$";
            }

            string insertQuery = "insert into Restaurant values ('" + rm + "','" + msg + "');";
            SqlCommand cmd = new SqlCommand(insertQuery, conn);
            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("ClientDemo1.aspx");
        }

        protected void recbb(object sender, EventArgs e)
        {
            msg = mes.Text;
            string insertQuery = "insert into Reception values ('"+rm+"','"+msg+"');";
            SqlCommand cmd = new SqlCommand(insertQuery, conn);
            mes.Text = null;
            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("ClientDemo1.aspx");
        }
    }
}