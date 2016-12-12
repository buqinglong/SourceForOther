using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DTcms.Web
{
    public partial class CasesDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bindMenu(7);
                string id = Request["id"] == null ? "" : Request["id"].ToString();
                int intid = 0;
                if (!String.IsNullOrEmpty(id))
                {
                    intid = int.Parse(id);
                }
                setControl(intid);
            }
        }
        void bindMenu(int channel_id)
        {
            BLL.article_category acbll = new BLL.article_category();
            DataTable dt = acbll.GetChildList(0, channel_id);
            this.repMenu.DataSource = dt;
            this.repMenu.DataBind();
        }
        void setControl(int id)
        {
            BLL.article abll = new BLL.article();
            Model.article amodel = abll.GetModel(id);
            this.lblContent.Text = amodel.content;
            this.lblDatetime.Text = amodel.add_time.ToString("yyyy-MM-dd HH:mm:ss");
            this.lblTitle.Text = amodel.title;
        }
    }
}