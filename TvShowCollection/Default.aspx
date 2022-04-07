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
                                    <asp:Image runat="server" ImageUrl="~/Content/Asset/images/uploads/slider1.jpg" alt="" Width="285" Height="437" /></asp:HyperLink>
                                </div>
                                <div class="title-in">
                                    <div class="cate">
                                        <span class="blue">
                                            <asp:HyperLink runat="server" href="#">
                                                    <%# String.Join(", ", ((TvShowCollection.ENT.ShowENT)Container.DataItem).Genres) %>
                                            </asp:HyperLink>
                                        </span>
                                    </div>
                                    <h6>
                                        <asp:HyperLink runat="server" href="#"><%# Eval("name").ToString().Trim() %></asp:HyperLink></h6>
                                    <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphPageLevelScript" runat="Server">
</asp:Content>

