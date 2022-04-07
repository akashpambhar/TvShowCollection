<%@ Page Title="" Language="C#" MasterPageFile="~/Content/AdminPanel.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMainBody" runat="Server">
    <div class="slider movie-items">
        <div class="container">
            <div class="row">
                <div class="social-link">
                    <p>Follow us: </p>
                    <asp:HyperLink runat="server" href="#"><i class="ion-social-facebook"></i></asp:HyperLink>
                    <asp:HyperLink runat="server" href="#"><i class="ion-social-twitter"></i></asp:HyperLink>
                    <asp:HyperLink runat="server" href="#"><i class="ion-social-googleplus"></i></asp:HyperLink>
                    <asp:HyperLink runat="server" href="#"><i class="ion-social-youtube"></i></asp:HyperLink>
                </div>
                <div class="slick-multiItemSlider">
                    <asp:Repeater ID="rptMovieSlider" runat="server">
                        <ItemTemplate>
                            <div class="movie-item">
                                <div class="mv-img">
                                    <asp:HyperLink runat="server" href="#">
                                    <asp:Image runat="server" ImageUrl="<%# ((TvShowCollection.ENT.ShowENT)Container.DataItem).Image.Medium %>" alt="" Width="285" Height="437" CssClass="img-fluid"/></asp:HyperLink>
                                </div>
                                <div class="title-in">
                                    <div class="cate">
                                        <asp:Repeater runat="server" DataSource="<%# ((TvShowCollection.ENT.ShowENT)Container.DataItem).Genres %>">
                                            <ItemTemplate>
                                                <span class="blue" style="margin-right: 3px;">
                                                    <asp:HyperLink runat="server" href="#">
                                                    <%# (Container.DataItem) %>
                                                    </asp:HyperLink>
                                                </span>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                        <%--<span class="blue">
                                            <asp:HyperLink runat="server" href="#">
                                                    <%# String.Join(", ", ((TvShowCollection.ENT.ShowENT)Container.DataItem).Genres) %>
                                            </asp:HyperLink>
                                        </span>--%>
                                    </div>
                                    <h6>
                                        <asp:HyperLink runat="server" href="#"><%# Eval("name").ToString().Trim() %></asp:HyperLink></h6>
                                    <p><i class="ion-android-star"></i><span><%# ((TvShowCollection.ENT.ShowENT)Container.DataItem).Rating.Average.ToString() %></span> /10</p>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </div>
    </div>

    <div class="movie-items">
        <div class="container">
            <div class="row ipad-width">
                <div class="col-md-8">
                    <div class="title-hd">
                        <h2>Explore</h2>
                        <asp:HyperLink runat="server" NavigateUrl="#" CssClass="viewall">View all <i class="ion-ios-arrow-right"></i></asp:HyperLink>
                    </div>
                    <div class="tabs">
                        <ul class="tab-links">
                            <li class="active">
                                <asp:HyperLink runat="server" NavigateUrl="#tab1">#Popular</asp:HyperLink></li>
                            <li>
                                <asp:HyperLink runat="server" NavigateUrl="#tab2">#Top rated</asp:HyperLink></li>
                            <li>
                                <asp:HyperLink runat="server" NavigateUrl="#tab3">#Last Updated</asp:HyperLink></li>
                        </ul>
                        <div class="tab-content">
                            <div id="tab1" class="tab active">
                                <div class="row">
                                    <div class="slick-multiItem">
                                        <asp:Repeater runat="server" ID="rptTab1">
                                            <ItemTemplate>
                                                <div class="slide-it">
                                                    <div class="movie-item">
                                                        <div class="mv-img">
                                                            <asp:Image runat="server" ImageUrl="<%# ((TvShowCollection.ENT.ShowENT)Container.DataItem).Image.Medium %>" alt="" Width="185" Height="284" />
                                                        </div>
                                                        <div class="hvr-inner">
                                                            <asp:HyperLink runat="server" NavigateUrl="moviesingle.html">Read more <i class="ion-android-arrow-dropright"></i></asp:HyperLink>
                                                        </div>
                                                        <div class="title-in">
                                                            <h6><asp:HyperLink runat="server" NavigateUrl="#"><%# Eval("name").ToString().Trim() %></asp:HyperLink></h6>
                                                            <p><i class="ion-android-star"></i><span><%# ((TvShowCollection.ENT.ShowENT)Container.DataItem).Rating.Average.ToString() %></span> /10</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </div>
                                </div>
                            </div>
                            <div id="tab2" class="tab">
                                <div class="row">
                                    <div class="slick-multiItem">
                                        <asp:Repeater runat="server" ID="rptTab2">
                                            <ItemTemplate>
                                                <div class="slide-it">
                                                    <div class="movie-item">
                                                        <div class="mv-img">
                                                            <asp:Image runat="server" ImageUrl="<%# ((TvShowCollection.ENT.ShowENT)Container.DataItem).Image.Medium %>" alt="" Width="185" Height="284" />
                                                        </div>
                                                        <div class="hvr-inner">
                                                            <asp:HyperLink runat="server" NavigateUrl="moviesingle.html">Read more <i class="ion-android-arrow-dropright"></i></asp:HyperLink>
                                                        </div>
                                                        <div class="title-in">
                                                            <h6><asp:HyperLink runat="server" NavigateUrl="#"><%# Eval("name").ToString().Trim() %></asp:HyperLink></h6>
                                                            <p><i class="ion-android-star"></i><span><%# ((TvShowCollection.ENT.ShowENT)Container.DataItem).Rating.Average.ToString() %></span> /10</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </div>
                                </div>
                            </div>
                            <div id="tab3" class="tab">
                                <div class="row">
                                    <div class="slick-multiItem">
                                        <asp:Repeater runat="server" ID="rptTab3">
                                            <ItemTemplate>
                                                <div class="slide-it">
                                                    <div class="movie-item">
                                                        <div class="mv-img">
                                                            <asp:Image runat="server" ImageUrl="<%# ((TvShowCollection.ENT.ShowENT)Container.DataItem).Image.Medium %>" alt="" Width="185" Height="284" />
                                                        </div>
                                                        <div class="hvr-inner">
                                                            <asp:HyperLink runat="server" NavigateUrl="moviesingle.html">Read more <i class="ion-android-arrow-dropright"></i></asp:HyperLink>
                                                        </div>
                                                        <div class="title-in">
                                                            <h6><asp:HyperLink runat="server" NavigateUrl="#"><%# Eval("name").ToString().Trim() %></asp:HyperLink></h6>
                                                            <p><i class="ion-android-star"></i><span><%# ((TvShowCollection.ENT.ShowENT)Container.DataItem).Rating.Average.ToString() %></span> /10</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="title-hd">
                        <h2>on tv</h2>
                        <a href="#" class="viewall">View all <i class="ion-ios-arrow-right"></i></a>
                    </div>
                    <div class="tabs">
                        <ul class="tab-links-2">
                            <li><a href="#tab21">#Popular</a></li>
                            <li class="active"><a href="#tab22">#Coming soon</a></li>
                            <li><a href="#tab23">#Top rated  </a></li>
                            <li><a href="#tab24">#Most reviewed</a></li>
                        </ul>
                        <div class="tab-content">
                            <div id="tab21" class="tab">
                                <div class="row">
                                    <div class="slick-multiItem">
                                        <div class="slide-it">
                                            <div class="movie-item">
                                                <div class="mv-img">
                                                    <img src="images/uploads/mv-item1.jpg" alt="" width="185" height="284">
                                                </div>
                                                <div class="hvr-inner">
                                                    <a href="moviesingle.html">Read more <i class="ion-android-arrow-dropright"></i></a>
                                                </div>
                                                <div class="title-in">
                                                    <h6><a href="#">Interstellar</a></h6>
                                                    <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="slide-it">
                                            <div class="movie-item">
                                                <div class="mv-img">
                                                    <img src="images/uploads/mv-item2.jpg" alt="" width="185" height="284">
                                                </div>
                                                <div class="hvr-inner">
                                                    <a href="moviesingle.html">Read more <i class="ion-android-arrow-dropright"></i></a>
                                                </div>
                                                <div class="title-in">
                                                    <h6><a href="#">The revenant</a></h6>
                                                    <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="slide-it">
                                            <div class="movie-item">
                                                <div class="mv-img">
                                                    <img src="images/uploads/mv-item3.jpg" alt="" width="185" height="284">
                                                </div>
                                                <div class="hvr-inner">
                                                    <a href="moviesingle.html">Read more <i class="ion-android-arrow-dropright"></i></a>
                                                </div>
                                                <div class="title-in">
                                                    <h6><a href="#">Die hard</a></h6>
                                                    <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="slide-it">
                                            <div class="movie-item">
                                                <div class="mv-img">
                                                    <img src="images/uploads/mv-item4.jpg" alt="" width="185" height="284">
                                                </div>
                                                <div class="hvr-inner">
                                                    <a href="moviesingle.html">Read more <i class="ion-android-arrow-dropright"></i></a>
                                                </div>
                                                <div class="title-in">
                                                    <h6><a href="#">The walk</a></h6>
                                                    <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="slide-it">
                                            <div class="movie-item">
                                                <div class="mv-img">
                                                    <img src="images/uploads/mv-item3.jpg" alt="" width="185" height="284">
                                                </div>
                                                <div class="hvr-inner">
                                                    <a href="moviesingle.html">Read more <i class="ion-android-arrow-dropright"></i></a>
                                                </div>
                                                <div class="title-in">
                                                    <h6><a href="#">Die hard</a></h6>
                                                    <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div id="tab22" class="tab active">
                                <div class="row">
                                    <div class="slick-multiItem">
                                        <div class="slide-it">
                                            <div class="movie-item">
                                                <div class="mv-img">
                                                    <img src="images/uploads/mv-item5.jpg" alt="" width="185" height="284">
                                                </div>
                                                <div class="hvr-inner">
                                                    <a href="moviesingle.html">Read more <i class="ion-android-arrow-dropright"></i></a>
                                                </div>
                                                <div class="title-in">
                                                    <h6><a href="#">Interstellar</a></h6>
                                                    <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="slide-it">
                                            <div class="movie-item">
                                                <div class="mv-img">
                                                    <img src="images/uploads/mv-item6.jpg" alt="" width="185" height="284">
                                                </div>
                                                <div class="hvr-inner">
                                                    <a href="moviesingle.html">Read more <i class="ion-android-arrow-dropright"></i></a>
                                                </div>
                                                <div class="title-in">
                                                    <h6><a href="#">The revenant</a></h6>
                                                    <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="slide-it">
                                            <div class="movie-item">
                                                <div class="mv-img">
                                                    <img src="images/uploads/mv-item7.jpg" alt="" width="185" height="284">
                                                </div>
                                                <div class="hvr-inner">
                                                    <a href="moviesingle.html">Read more <i class="ion-android-arrow-dropright"></i></a>
                                                </div>
                                                <div class="title-in">
                                                    <h6><a href="#">Die hard</a></h6>
                                                    <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="slide-it">
                                            <div class="movie-item">
                                                <div class="mv-img">
                                                    <img src="images/uploads/mv-item8.jpg" alt="" width="185" height="284">
                                                </div>
                                                <div class="hvr-inner">
                                                    <a href="moviesingle.html">Read more <i class="ion-android-arrow-dropright"></i></a>
                                                </div>
                                                <div class="title-in">
                                                    <h6><a href="#">The walk</a></h6>
                                                    <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="slide-it">
                                            <div class="movie-item">
                                                <div class="mv-img">
                                                    <img src="images/uploads/mv-item1.jpg" alt="" width="185" height="284">
                                                </div>
                                                <div class="hvr-inner">
                                                    <a href="moviesingle.html">Read more <i class="ion-android-arrow-dropright"></i></a>
                                                </div>
                                                <div class="title-in">
                                                    <h6><a href="#">Interstellar</a></h6>
                                                    <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="slide-it">
                                            <div class="movie-item">
                                                <div class="mv-img">
                                                    <img src="images/uploads/mv-item2.jpg" alt="" width="185" height="284">
                                                </div>
                                                <div class="hvr-inner">
                                                    <a href="moviesingle.html">Read more <i class="ion-android-arrow-dropright"></i></a>
                                                </div>
                                                <div class="title-in">
                                                    <h6><a href="#">The revenant</a></h6>
                                                    <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="slide-it">
                                            <div class="movie-item">
                                                <div class="mv-img">
                                                    <img src="images/uploads/mv-item3.jpg" alt="" width="185" height="284">
                                                </div>
                                                <div class="hvr-inner">
                                                    <a href="moviesingle.html">Read more <i class="ion-android-arrow-dropright"></i></a>
                                                </div>
                                                <div class="title-in">
                                                    <h6><a href="#">Die hard</a></h6>
                                                    <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="slide-it">
                                            <div class="movie-item">
                                                <div class="mv-img">
                                                    <img src="images/uploads/mv-item4.jpg" alt="" width="185" height="284">
                                                </div>
                                                <div class="hvr-inner">
                                                    <a href="moviesingle.html">Read more <i class="ion-android-arrow-dropright"></i></a>
                                                </div>
                                                <div class="title-in">
                                                    <h6><a href="#">The walk</a></h6>
                                                    <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="slide-it">
                                            <div class="movie-item">
                                                <div class="mv-img">
                                                    <img src="images/uploads/mv-item5.jpg" alt="" width="185" height="284">
                                                </div>
                                                <div class="hvr-inner">
                                                    <a href="moviesingle.html">Read more <i class="ion-android-arrow-dropright"></i></a>
                                                </div>
                                                <div class="title-in">
                                                    <h6><a href="#">Interstellar</a></h6>
                                                    <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="slide-it">
                                            <div class="movie-item">
                                                <div class="mv-img">
                                                    <img src="images/uploads/mv-item6.jpg" alt="" width="185" height="284">
                                                </div>
                                                <div class="hvr-inner">
                                                    <a href="moviesingle.html">Read more <i class="ion-android-arrow-dropright"></i></a>
                                                </div>
                                                <div class="title-in">
                                                    <h6><a href="#">The revenant</a></h6>
                                                    <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div id="tab23" class="tab">
                                <div class="row">
                                    <div class="slick-multiItem">
                                        <div class="slide-it">
                                            <div class="movie-item">
                                                <div class="mv-img">
                                                    <img src="images/uploads/mv-item1.jpg" alt="" width="185" height="284">
                                                </div>
                                                <div class="hvr-inner">
                                                    <a href="moviesingle.html">Read more <i class="ion-android-arrow-dropright"></i></a>
                                                </div>
                                                <div class="title-in">
                                                    <h6><a href="#">Interstellar</a></h6>
                                                    <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="slide-it">
                                            <div class="movie-item">
                                                <div class="mv-img">
                                                    <img src="images/uploads/mv-item2.jpg" alt="" width="185" height="284">
                                                </div>
                                                <div class="hvr-inner">
                                                    <a href="moviesingle.html">Read more <i class="ion-android-arrow-dropright"></i></a>
                                                </div>
                                                <div class="title-in">
                                                    <h6><a href="#">The revenant</a></h6>
                                                    <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="slide-it">
                                            <div class="movie-item">
                                                <div class="mv-img">
                                                    <img src="images/uploads/mv-item3.jpg" alt="" width="185" height="284">
                                                </div>
                                                <div class="hvr-inner">
                                                    <a href="moviesingle.html">Read more <i class="ion-android-arrow-dropright"></i></a>
                                                </div>
                                                <div class="title-in">
                                                    <h6><a href="#">Die hard</a></h6>
                                                    <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="slide-it">
                                            <div class="movie-item">
                                                <div class="mv-img">
                                                    <img src="images/uploads/mv-item4.jpg" alt="" width="185" height="284">
                                                </div>
                                                <div class="hvr-inner">
                                                    <a href="moviesingle.html">Read more <i class="ion-android-arrow-dropright"></i></a>
                                                </div>
                                                <div class="title-in">
                                                    <h6><a href="#">The walk</a></h6>
                                                    <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="slide-it">
                                            <div class="movie-item">
                                                <div class="mv-img">
                                                    <img src="images/uploads/mv-item5.jpg" alt="" width="185" height="284">
                                                </div>
                                                <div class="hvr-inner">
                                                    <a href="moviesingle.html">Read more <i class="ion-android-arrow-dropright"></i></a>
                                                </div>
                                                <div class="title-in">
                                                    <h6><a href="#">Interstellar</a></h6>
                                                    <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="slide-it">
                                            <div class="movie-item">
                                                <div class="mv-img">
                                                    <img src="images/uploads/mv-item6.jpg" alt="" width="185" height="284">
                                                </div>
                                                <div class="hvr-inner">
                                                    <a href="moviesingle.html">Read more <i class="ion-android-arrow-dropright"></i></a>
                                                </div>
                                                <div class="title-in">
                                                    <h6><a href="#">The revenant</a></h6>
                                                    <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="slide-it">
                                            <div class="movie-item">
                                                <div class="mv-img">
                                                    <img src="images/uploads/mv-item7.jpg" alt="" width="185" height="284">
                                                </div>
                                                <div class="hvr-inner">
                                                    <a href="moviesingle.html">Read more <i class="ion-android-arrow-dropright"></i></a>
                                                </div>
                                                <div class="title-in">
                                                    <h6><a href="#">Die hard</a></h6>
                                                    <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="slide-it">
                                            <div class="movie-item">
                                                <div class="mv-img">
                                                    <img src="images/uploads/mv-item8.jpg" alt="" width="185" height="284">
                                                </div>
                                                <div class="hvr-inner">
                                                    <a href="moviesingle.html">Read more <i class="ion-android-arrow-dropright"></i></a>
                                                </div>
                                                <div class="title-in">
                                                    <h6><a href="#">The walk</a></h6>
                                                    <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="slide-it">
                                            <div class="movie-item">
                                                <div class="mv-img">
                                                    <img src="images/uploads/mv-item3.jpg" alt="" width="185" height="284">
                                                </div>
                                                <div class="hvr-inner">
                                                    <a href="moviesingle.html">Read more <i class="ion-android-arrow-dropright"></i></a>
                                                </div>
                                                <div class="title-in">
                                                    <h6><a href="#">Die hard</a></h6>
                                                    <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div id="tab24" class="tab">
                                <div class="row">
                                    <div class="slick-multiItem">
                                        <div class="slide-it">
                                            <div class="movie-item">
                                                <div class="mv-img">
                                                    <img src="images/uploads/mv-item5.jpg" alt="" width="185" height="284">
                                                </div>
                                                <div class="hvr-inner">
                                                    <a href="moviesingle.html">Read more <i class="ion-android-arrow-dropright"></i></a>
                                                </div>
                                                <div class="title-in">
                                                    <h6><a href="#">Interstellar</a></h6>
                                                    <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="slide-it">
                                            <div class="movie-item">
                                                <div class="mv-img">
                                                    <img src="images/uploads/mv-item6.jpg" alt="" width="185" height="284">
                                                </div>
                                                <div class="hvr-inner">
                                                    <a href="moviesingle.html">Read more <i class="ion-android-arrow-dropright"></i></a>
                                                </div>
                                                <div class="title-in">
                                                    <h6><a href="#">The revenant</a></h6>
                                                    <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="slide-it">
                                            <div class="movie-item">
                                                <div class="mv-img">
                                                    <img src="images/uploads/mv-item7.jpg" alt="" width="185" height="284">
                                                </div>
                                                <div class="hvr-inner">
                                                    <a href="moviesingle.html">Read more <i class="ion-android-arrow-dropright"></i></a>
                                                </div>
                                                <div class="title-in">
                                                    <h6><a href="#">Die hard</a></h6>
                                                    <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="slide-it">
                                            <div class="movie-item">
                                                <div class="mv-img">
                                                    <img src="images/uploads/mv-item8.jpg" alt="" width="185" height="284">
                                                </div>
                                                <div class="hvr-inner">
                                                    <a href="moviesingle.html">Read more <i class="ion-android-arrow-dropright"></i></a>
                                                </div>
                                                <div class="title-in">
                                                    <h6><a href="#">The walk</a></h6>
                                                    <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="slide-it">
                                            <div class="movie-item">
                                                <div class="mv-img">
                                                    <img src="images/uploads/mv-item3.jpg" alt="" width="185" height="284">
                                                </div>
                                                <div class="hvr-inner">
                                                    <a href="moviesingle.html">Read more <i class="ion-android-arrow-dropright"></i></a>
                                                </div>
                                                <div class="title-in">
                                                    <h6><a href="#">Die hard</a></h6>
                                                    <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="sidebar">
                        <div class="ads">
                            <img src="images/uploads/ads1.png" alt="" width="336" height="296">
                        </div>
                        <div class="celebrities">
                            <h4 class="sb-title">Spotlight Celebrities</h4>
                            <div class="celeb-item">
                                <a href="#">
                                    <img src="images/uploads/ava1.jpg" alt="" width="70" height="70"></a>
                                <div class="celeb-author">
                                    <h6><a href="#">Samuel N. Jack</a></h6>
                                    <span>Actor</span>
                                </div>
                            </div>
                            <div class="celeb-item">
                                <a href="#">
                                    <img src="images/uploads/ava2.jpg" alt="" width="70" height="70"></a>
                                <div class="celeb-author">
                                    <h6><a href="#">Benjamin Carroll</a></h6>
                                    <span>Actor</span>
                                </div>
                            </div>
                            <div class="celeb-item">
                                <a href="#">
                                    <img src="images/uploads/ava3.jpg" alt="" width="70" height="70"></a>
                                <div class="celeb-author">
                                    <h6><a href="#">Beverly Griffin</a></h6>
                                    <span>Actor</span>
                                </div>
                            </div>
                            <div class="celeb-item">
                                <a href="#">
                                    <img src="images/uploads/ava4.jpg" alt="" width="70" height="70"></a>
                                <div class="celeb-author">
                                    <h6><a href="#">Justin Weaver</a></h6>
                                    <span>Actor</span>
                                </div>
                            </div>
                            <a href="#" class="btn">See all celebrities<i class="ion-ios-arrow-right"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphPageLevelScript" runat="Server">
</asp:Content>

