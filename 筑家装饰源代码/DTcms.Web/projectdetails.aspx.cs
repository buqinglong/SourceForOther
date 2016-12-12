using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace DTcms.Web
{
    public partial class projectdetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bindMenu(9);
                string id = Request["id"] == null ? "" : Request["id"].ToString();
                if (!string.IsNullOrEmpty(id))
                { setControl(int.Parse(id)); }
            }
        }
        void setControl(int id)
        {
            BLL.article abll = new BLL.article();
            Model.article amodel = abll.GetModel(id);
            if (amodel != null)
            {
                this.lblContent.Text = amodel.content;
                this.lblTitle.Text = amodel.title;
                this.picture.Src = amodel.img_url;
                this.lblzhaiyao.Text = amodel.zhaiyao;
            }
        }
        void bindMenu(int channel_id)
        {
            BLL.article_category acbll = new BLL.article_category();
            DataTable dt = acbll.GetChildList(0, channel_id);
            this.repMenu.DataSource = dt;
            this.repMenu.DataBind();
        }
    }
}