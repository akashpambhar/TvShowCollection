using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TvShowCollection.ENT;

public partial class AdminPanel_TvSeriesList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        FillRepeater();
    }

    public void FillRepeater()
    {
        if (Page.RouteData.Values["SearchQuery"] == null)
        {
            var showList = TVMazeAPI.GetShowsList();
            rptShowList.DataSource = showList;
            rptShowList.DataBind();
        }
        else
        {
            var showList = TVMazeAPI.GetShowsListByQuery(Page.RouteData.Values["SearchQuery"].ToString());
            rptShowList.DataSource = showList;
            rptShowList.DataBind();
        }
    }
    protected void ddlSorting_SelectedIndexChanged(object sender, EventArgs e)
    {
        List<ShowENT> list;
        switch (ddlSorting.SelectedIndex)
        {
            case 0:
                list = (List<ShowENT>)rptShowList.DataSource;
                rptShowList.DataSource = list.OrderByDescending(x => x.Weight).ToList();
                break;
            case 1:
                list = (List<ShowENT>)rptShowList.DataSource;
                rptShowList.DataSource = list.OrderBy(x => x.Weight).ToList();
                break;
            case 2:
                list = (List<ShowENT>)rptShowList.DataSource;
                rptShowList.DataSource = list.OrderByDescending(x => x.Rating.Average).ToList();
                break;
            case 3:
                list = (List<ShowENT>)rptShowList.DataSource;
                rptShowList.DataSource = list.OrderBy(x => x.Rating.Average).ToList();
                break;
            case 4:
                list = (List<ShowENT>)rptShowList.DataSource;
                rptShowList.DataSource = list.OrderByDescending(x => x.Updated).ToList();
                break;
        }
        rptShowList.DataBind();
    }
}