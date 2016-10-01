using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MG.Formularios
{
    public partial class TestParcial : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ListItem li;
                li = new ListItem();
                li.Text = "soy el 1";
                li.Value = "1";
                sel.Items.Add(li);
                li = new ListItem();
                li.Value = "2";
                li.Text = "soy el 2";
                sel.Items.Add(li);

            }
        }
        protected void btn_Click(object sender, EventArgs e)
        {
            string mail;
            string pass;
            string archivo;
            string seleccionado;
            ListItem selmultiple;
            List<ListItem> lListItem = new List<ListItem>();
            if (chk.Checked == true)
            {
                mail = txtmail.Value;
                pass = passw.Value;
                archivo = exampleInputFile.Value;
                lblMail.InnerText = "hola mundo";
                seleccionado = sel.Value;
                foreach (ListItem item in selmulti.Items)
                {
                    if (item.Selected)
                    {
                        selmultiple = new ListItem();
                        selmultiple.Text = item.Text;
                        selmultiple.Value = item.Value;
                        lListItem.Add(selmultiple);
                    }
                    
                }
            }
            else
            {

            }

        }
    }
}