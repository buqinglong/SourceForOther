using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DTcms.Web
{
    public partial class TeamDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bindMenu(10);
                string id = Request["id"] == null ? "" : Request["id"].ToString();
                if (!string.IsNullOrEmpty(id))
                {
                    setControl(int.Parse(id));
                    bindCasesByTeam(int.Parse(id));
                }
            }
        }
        void setControl(int id)
        {
            BLL.article abll = new BLL.article();
            Model.article amodel = abll.GetModel(id);
            if (amodel != null)
            {
                //this.lblContent.Text = amodel.content;
                this.lblTitle.Text = amodel.title;
                this.picture.Src = amodel.img_url;
                this.lblzhaiyao.Text = amodel.content; ;
            }

        }
        void bindMenu(int channel_id)
        {
            BLL.article_category acbll = new BLL.article_category();
            DataTable dt = acbll.GetChildList(0, channel_id);
            this.repMenu.DataSource = dt;
            this.repMenu.DataBind();
        }
        void bindCasesByTeam(int designer_id)
        {
            BLL.article abll = new BLL.article();
            DataTable dt = abll.GetList(0, " designer_id=" + designer_id, "sort_id").Tables[0];
            this.repCasesByTeam.DataSource = dt;
            this.repCasesByTeam.DataBind();
        }
    }
}