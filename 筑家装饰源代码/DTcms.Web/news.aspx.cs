using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DTcms.Web
{
    public partial class news : System.Web.UI.Page
    {
        public int intcategory_id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bindMenu(6);
                string category_id = Request["category_id"] == null ? "" : Request["category_id"].ToString();
                intcategory_id = 0;
                if (!String.IsNullOrEmpty(category_id))
                {
                    intcategory_id = int.Parse(category_id);
                }
                bindNews(6, intcategory_id);
            }
        }

        protected void AspNetPager1_PageChanged(object src, EventArgs e)
        {
            bindNews(6, intcategory_id);
        }
        void bindMenu(int channel_id)
        {
            BLL.article_category acbll = new BLL.article_category();
            DataTable dt = acbll.GetChildList(0, channel_id);
            this.repMenu.DataSource = dt;
            this.repMenu.DataBind();
        }
        void bindNews(int channel_id, int category_id)
        {
            BLL.article abll = new BLL.article();
            string whereStr = " channel_id=" + channel_id;
            if (category_id > 0)
            {
                whereStr += " and category_id=" + category_id;
            }
            DataTable dt = abll.GetList(0, whereStr, " sort_id").Tables[0];
            this.repNews.DataSource = dt;
            this.repNews.DataBind();
        }
    }
}