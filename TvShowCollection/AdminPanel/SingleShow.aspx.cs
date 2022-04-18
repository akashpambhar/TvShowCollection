using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TvShowCollection.ENT;

public partial class AdminPanel_SingleShow : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (Page.RouteData.Values["ShowID"] != null)
            {
                FillDetails(Page.RouteData.Values["ShowID"].ToString());
            }
        }

    }

    public void FillDetails(String ShowID)
    {
        ShowENT entShow = TVMazeAPI.GetShowDetails(ShowID);
        rptShowID.DataSource = new Object[] {entShow};
        rptShowID.DataBind();

        
    }
    protected void rptShowID_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        String ShowID = "";

        if (Page.RouteData.Values["ShowID"] != null)
        {
            ShowID = Page.RouteData.Values["ShowID"].ToString();
        }

        if (e.Item.ItemType == ListItemType.Item)
        {
            List<CastENT> entCast = TVMazeAPI.GetShowCast(ShowID);
            Repeater rptCast = (Repeater)e.Item.FindControl("rptCast");
            rptCast.DataSource = entCast;
            rptCast.DataBind();
        }
    }
}