<% @ Control Language="C#" Inherits="PageAdmin.detail_zdymodel"%>
<% @ Import NameSpace="System.Data"%>
<% @ Import NameSpace="System.Data.OleDb"%>
<%=Zdy_Location%>
<div class="sublanmu_box sublanmu_box_<%=Sublanmu_Id%>" id="sublanmu_box">
<div class="sublanmu_content" id="sublanmu_content">
<%conn.Open();%><script type="text/javascript" src="/e/js/zoom.js"></script>
<link href="/e/css/zoom.css" type="text/css" rel="stylesheet"/>
<script type="text/javascript" src="/e/js/product.js"></script>
<% 
int i,Id,P_SortId;
string Price,Point;
DataTable dt,dt1;
dt=Get_Data(); 
DataRow dr,dr1; 
if(dt.Rows.Count>0)
 {
  dr=dt.Rows[0]; 
  Id=int.Parse(dr["id"].ToString());
  P_SortId=int.Parse(dr["sort_id"].ToString());
  Price=dr["price"].ToString();
  Point=dr["point"].ToString();
%>
<div class="product_pic_infor">
<ul>
<li class="col-sm-5 col-xs-12">
<div class="view" id="view" style="position:relative">
<%
dt1=Get_File("product","pa_images",Id);
for(i=0;i<dt1.Rows.Count;i++)
 {
  dr1=dt1.Rows[i];
%><img class="zoom" src="<%=dr1["thumbnail"]%>" big="<%=dr1["url"]%>" border="0" id="picture" name="picture" style="display:<%=i==0?"":"none"%>">
<%}%></div>
<div class="clear"></div>
<!--缩略图区域--->
<%if(int.Parse(dr["pa_images"].ToString())>1){%>
<div class="leftbar" onmouseover="roll('left')" onmouseout="stoproll()"></div>
<div class="thumbnails" id="thumbnails">
<ul>
<%
dt1=Get_File("product","pa_images",Id);
for(i=0;i<dt1.Rows.Count;i++)
 {
  dr1=dt1.Rows[i];
%>
<li><img <%=i==0?"class='current'":""%> src="<%=dr1["thumbnail"]%>" onclick="LoadImg(<%=i%>)" id="thumbnail" name="thumbnail"></li>
<%}%></ul></div>
<div class="rightbar" onmouseover="roll('right')" onmouseout="stoproll()"></div>
<%}%>
<!--缩略图区域--->
</li>
<li class="col-sm-7 col-xs-12">
<span class="title"><%=dr["title"]%></span>
<%if(Price!="" && Price!="0"){%><span class="cpnr nrcpjj">￥<strong><%=Price%>.00</strong><!-- &nbsp;<a href="javascript:ordercart('<%=Site_Id%>','product',<%=Id%>)" style="color:#ff0000">[在线订购]</a>--></span><%}%>
<%if(Point!="" && Point!="0"){%><span class="cpnr">所需积分：<%=Point%>点 &nbsp;<a href="javascript:exchange('<%=Site_Id%>','product',<%=Id%>)" style="color:#ff0000">[积分兑换]</a></span><%}%>
<div class="cpjj-box"><%=Ubb(dr["pa_introduction"].ToString())%></div>
<a class="zxyd" target="_blank" href="tencent://message/?uin=<%=dr["pa_xinghao"].ToString()%>&Site=&Menu=yes">咨询/预定</a>

<div class="bdsharebuttonbox"><span style="float:left; height:16px; line-height:16px; margin:6px 0 6px 0;">分享到：</span><a title="分享到新浪微博" href="#" class="bds_tsina" data-cmd="tsina"></a><a title="分享到腾讯微博" href="#" class="bds_tqq" data-cmd="tqq"></a><a title="分享到人人网" href="#" class="bds_renren" data-cmd="renren"></a><a title="分享到微信" href="#" class="bds_weixin" data-cmd="weixin"></a><a href="#" class="bds_more" data-cmd="more"></a></div><script>window._bd_share_config={"common":{"bdSnsKey":{},"bdText":"","bdMini":"2","bdMiniList":false,"bdPic":"","bdStyle":"0","bdSize":"16"},"share":{}};with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='+~(-new Date()/36e5)];
</script>
</li>
<li class="clear"></li>
</ul>
</div>
<div class="prodinfotab">
<div class="tabheader"><dl class="tab_t" id="tab_t">
  <dd>详细内容</dd>
</dl></div>
<div class="tabcontent"><dl class="tab_c" id="tab_c">
  <dd><%=dr["content"].ToString()%></dd>
</dl></div>
</div>
<script type="text/javascript">
tabs("tab_t","tab_c","onclick")
window.onload=function(){zoom({width:350,height:350});}
</script>
<%
}
Prev_and_Next();
%>
<ul class="sublanmu_pn">
<li class="syb"><%=_Previous==""?"":"上一篇："+_Previous%></li>
<li class="xyb"><%=_Next==""?"":"下一篇："+_Next%></li>
</ul><%conn.Close();%>
<script type="text/javascript">Get_Info("<%=Thetable%>","<%=Detail_Id%>")</script>
<asp:PlaceHolder id="P_Comment" runat="server"/></div></div>