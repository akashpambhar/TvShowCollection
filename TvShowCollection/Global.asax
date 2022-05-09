<%@ Application Language="C#" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e) 
    {
        // Code that runs on application startup
        RegisterRoutes(System.Web.Routing.RouteTable.Routes);
    }
    
    void Application_End(object sender, EventArgs e) 
    {
        //  Code that runs on application shutdown

    }
        
    void Application_Error(object sender, EventArgs e) 
    { 
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e) 
    {
        // Code that runs when a new session is started

    }

    void Session_End(object sender, EventArgs e) 
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

    }

    public static void RegisterRoutes(System.Web.Routing.RouteCollection routes)
    {
        routes.Ignore("{resource}.axd/{*pathInfo}");
        routes.MapPageRoute(
            "Route_Default",
            "Home",
            "~/Default.aspx");
        
        routes.MapPageRoute(
            "Route_Default_SingleShow",
            "Show/{ShowID}",
            "~/AdminPanel/SingleShow.aspx");

        routes.MapPageRoute(
            "Route_Default_TvShowList",
            "Show",
            "~/AdminPanel/TvShowList.aspx");
        
        routes.MapPageRoute(
            "Route_Default_TvShowList_Search",
            "Show/Search/{SearchQuery}",
            "~/AdminPanel/TvShowList.aspx");
    }
       
</script>
