<%@ Page Title="" Language="C#" MasterPageFile="~/Content/AdminPanel.master" AutoEventWireup="true" CodeFile="TvShowList.aspx.cs" Inherits="AdminPanel_TvSeriesList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMainBody" runat="Server">
    <div class="hero common-hero">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="hero-ct">
                        <h1>Tv Show List</h1>
                        <ul class="breadcumb">
                            <li class="active">
                                <asp:HyperLink NavigateUrl="~/Home" runat="server">Home</asp:HyperLink></li>
                            <li><span class="ion-ios-arrow-right"></span>Show List</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="page-single">
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="topbar-filter fw">
                        <p class="col-md-9 col-sm-7"></p>
                        <label>Sort by:</label>
                        <asp:DropDownList ID="ddlSorting" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlSorting_SelectedIndexChanged">
                            <asp:ListItem>Popularity High to Low</asp:ListItem>
                            <asp:ListItem>Popularity Low to High</asp:ListItem>
                            <asp:ListItem>Rating High to Low</asp:ListItem>
                            <asp:ListItem>Rating Low to High</asp:ListItem>
                            <asp:ListItem>Last Updated</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="flex-wrap-movielist mv-grid-fw">
                        <asp:Repeater ID="rptShowList" runat="server">
                            <ItemTemplate>
                                <div class="movie-item-style-2 movie-item-style-1">
                                    <asp:Image runat="server" ImageUrl='<%# ((TvShowCollection.ENT.ShowENT)Container.DataItem).Image != null ? ((TvShowCollection.ENT.ShowENT)Container.DataItem).Image.Medium : "" %>' />
                                    <div class="hvr-inner">
                                        <asp:HyperLink runat="server" NavigateUrl='<%# "~/Show/" + Eval("id").ToString() %>'>Read more <i class="ion-android-arrow-dropright"></i></asp:HyperLink>
                                    </div>
                                    <div class="mv-item-infor">
                                        <h6>
                                            <asp:HyperLink runat="server" NavigateUrl='<%# "~/Show/" + Eval("id").ToString() %>'><%# Eval("name").ToString().Trim() %></asp:HyperLink></h6>
                                        <p class="rate"><i class="ion-android-star"></i><span><%# ((TvShowCollection.ENT.ShowENT)Container.DataItem).Rating.Average == null ? "-" : ((TvShowCollection.ENT.ShowENT)Container.DataItem).Rating.Average.ToString() %></span> /10</p>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                    <%--<div class="topbar-filter">
                        <label>Movies per page:</label>
                        <select>
                            <option value="range">20 Movies</option>
                            <option value="saab">10 Movies</option>
                        </select>

                        <div class="pagination2">
                            <span>Page 1 of 2:</span>
                            <a class="active" href="#">1</a>
                            <a href="#">2</a>
                            <a href="#">3</a>
                            <a href="#">...</a>
                            <a href="#">78</a>
                            <a href="#">79</a>
                            <a href="#"><i class="ion-arrow-right-b"></i></a>
                        </div>
                    </div>--%>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphPageLevelScript" runat="Server">
</asp:Content>

