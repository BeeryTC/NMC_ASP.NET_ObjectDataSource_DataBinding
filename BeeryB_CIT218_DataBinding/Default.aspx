<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BeeryB_CIT218_DataBinding._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1><%: Title %>.</h1>
                <h2>Welcome ASP.NET Quiz Builder administrators.</h2>
            </hgroup>
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3>Manage records:</h3>
    <ol class="round">
        <li class="View">
            <a href="UsersList.aspx"><h5>REGISTERED USERS</h5></a>
            View a list of all currently registered users and their information
            </li>
        <li class="Manage">
            <a href="UsersManage.aspx"><h5>MANAGE USERS</h5></a>
            Tools to update and delete user information
        </li>
        <li class="Information">
            <a href="UsersDetail.aspx"><h5>USER INFORMATION</h5></a>
            You can easily find detailed information on every user
        </li>
        <li class="Add">
            <a href="UsersAdd.aspx"><h5>ADD NEW USERS</h5></a>
            Create new user accounts
        </li>
    </ol>
</asp:Content>
