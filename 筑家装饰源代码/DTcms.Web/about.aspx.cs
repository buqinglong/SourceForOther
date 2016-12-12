using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DTcms.Web
{
    public partial class about : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bindMenu(11);
                string category_id = Request["category_id"] == null ? "" : Request["category_id"].ToString();
                int intcategory_id = 0;
                if (!String.IsNullOrEmpty(category_id))
                {
                    intcategory_id = int.Parse(category_id);
                }
                bindProject(11, intcategory_id);
            }
        }
        void bindMenu(int channel_id)
        {
            BLL.article_category acbll = new BLL.article_category();
            DataTable dt = acbll.GetChildList(0, channel_id);
            this.repMenu.DataSource = dt;
            this.repMenu.DataBind();
        }
        void bindProject(int channel_id, int category_id)
        {
            BLL.article abll = new BLL.article();
            string whereStr = " channel_id=" + channel_id;
            if (category_id > 0)
            {
                whereStr += " and category_id=" + category_id;
            }
            else
            {
                whereStr += " and category_id=25";
            }
            DataTable dt = abll.GetList(1, whereStr, " sort_id").Tables[0];
            if (dt.Rows.Count > 0)
            {
                this.lblContent.Text = dt.Rows[0]["content"].ToString();
            }
        }
    }
}