using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DTcms.Web
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //加载关于我们
                bindAboutUs();
                //精品工程加载
                bindNews(this.repProjects, 6, 9);
                //新闻咨询加载
                bindNews(this.repNews, 4, 6);
            }
        }
        void bindAboutUs()
        {
            DTcms.BLL.article aBll = new BLL.article();
            DataSet ds = aBll.GetList(4, "category_id in (25,54,55,56)", "sort_id,update_time ");
            if (ds != null && ds.Tables.Count > 0)
            {
                DataTable dt = ds.Tables[0];
                if (dt.Rows.Count > 0)
                {
                    DataRow[] drArr1 = dt.Select("category_id=25");
                    if (drArr1 != null && drArr1.Length > 0)
                    {
                        this.lblAboutUs.Text = drArr1[0]["zhaiyao"].ToString();
                        this.lblAboutUsContent.Text = drArr1[0]["content"].ToString();
                    }
                    DataRow[] drArr2 = dt.Select("category_id=54");
                    if (drArr2 != null && drArr2.Length > 0)
                    {
                        this.lblTeam.Text = drArr2[0]["zhaiyao"].ToString();
                        this.lblTeamContent.Text = drArr2[0]["content"].ToString();
                    }
                    DataRow[] drArr3 = dt.Select("category_id=55");
                    if (drArr3 != null && drArr3.Length > 0)
                    {
                        this.lblCard.Text = drArr3[0]["zhaiyao"].ToString();
                    }
                    DataRow[] drArr4 = dt.Select("category_id=56");
                    if (drArr4 != null && drArr4.Length > 0)
                    {
                        this.lblServiceProcess.Text = drArr4[0]["zhaiyao"].ToString();
                    }
                }
            }
        }
        void bindNews(Repeater rep, int top, int channel)
        {
            //string sql = "SELECT TOP 4 * FROM [dt_article] where is_hot=1 order by sort_id,update_time ";
            DTcms.BLL.article aBll = new BLL.article();
            DataSet ds = aBll.GetList(top, "is_hot=1 and channel_id=" + channel + "", "sort_id,update_time ");
            rep.DataSource = ds;
            rep.DataBind();
        }
    }
}