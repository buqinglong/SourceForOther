using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace DTcms.Web
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {

        }

        protected void Session_Start(object sender, EventArgs e)
        {

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {
            //遍历Post参数，隐藏域除外  
            foreach (string i in this.Request.Form)
            {
                if (i == "__VIEWSTATE") continue;
                this.goErr(this.Request.Form[i].ToString());
            }
            //遍历Get参数。  
            foreach (string i in this.Request.QueryString)
            {
                this.goErr(this.Request.QueryString[i].ToString());
            }
        }
        private void goErr(string tm)
        {
            if (SqlFilter2(tm))
            {
                Response.Redirect("p404.html");
                Response.End();
            }
        }
        public static bool SqlFilter2(string InText)
        {
            string word = "and|exec|insert|select|delete|update|chr|mid|master|or|truncate|char|declare|join";
            if (InText == null)
                return false;
            foreach (string i in word.Split('|'))
            {
                if ((InText.ToLower().IndexOf(i + " ") > -1) || (InText.ToLower().IndexOf(" " + i) > -1))
                {
                    return true;
                }
            }
            return false;
        }


        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}