using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TvShowCollection.ENT;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        FillRepeater();
    }

    public void FillRepeater()
    {
        var showList = TVMazeAPI.GetShowsList();
        rptMovieSlider.DataSource = showList.Take(12);
        rptMovieSlider.DataBind();

        rptTab1.DataSource = showList.OrderByDescending(x => x.Weight).ToList().Skip(12).Take(9);
        rptTab1.DataBind();

        rptTab2.DataSource = showList.OrderByDescending(x => x.Rating.Average).ToList().Take(9);
        rptTab2.DataBind();

        rptTab3.DataSource = showList.OrderByDescending(x => x.Updated).ToList().Take(9);
        rptTab3.DataBind();
    }
}