using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using TvShowCollection.ENT;
using Newtonsoft.Json;
using System.Data;

/// <summary>
/// Summary description for TVMazeAPI
/// </summary>
public static class TVMazeAPI
{
    public static List<ShowENT> GetShowsList()
    {
        ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls12;

        String serviceUrl = "https://api.tvmaze.com/shows";
        HttpWebRequest request = (HttpWebRequest)WebRequest.Create(serviceUrl);
        request.ContentType = "application/json; charset=utf-8";
        request.Method = "GET";

        HttpWebResponse httpResponse = (HttpWebResponse)request.GetResponse();
        String strResponse = new StreamReader(httpResponse.GetResponseStream()).ReadToEnd();
        String json = strResponse;

        List<ShowENT> entShow = JsonConvert.DeserializeObject<List<ShowENT>>(json);

        return entShow;
    }

    public static List<ActorENT> GetActorsList()
    {
        ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls12;

        String serviceUrl = "https://api.tvmaze.com/people";
        HttpWebRequest request = (HttpWebRequest)WebRequest.Create(serviceUrl);
        request.ContentType = "application/json; charset=utf-8";
        request.Method = "GET";

        HttpWebResponse httpResponse = (HttpWebResponse)request.GetResponse();
        String strResponse = new StreamReader(httpResponse.GetResponseStream()).ReadToEnd();
        String json = strResponse;

        List<ActorENT> entActor = JsonConvert.DeserializeObject<List<ActorENT>>(json);

        return entActor;
    }

    public static ShowENT GetShowDetails(String ShowID)
    {
        ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls12;

        String serviceUrl = "https://api.tvmaze.com/shows/" + ShowID;
        HttpWebRequest request = (HttpWebRequest)WebRequest.Create(serviceUrl);
        request.ContentType = "application/json; charset=utf-8";
        request.Method = "GET";

        HttpWebResponse httpResponse = (HttpWebResponse)request.GetResponse();
        String strResponse = new StreamReader(httpResponse.GetResponseStream()).ReadToEnd();
        String json = strResponse;

        ShowENT entShow = JsonConvert.DeserializeObject<ShowENT>(json);

        return entShow;
    }
}