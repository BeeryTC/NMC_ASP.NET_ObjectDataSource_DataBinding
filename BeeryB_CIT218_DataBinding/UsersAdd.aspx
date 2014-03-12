<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UsersAdd.aspx.cs" Inherits="BeeryB_CIT218_DataBinding.UsersAdd" %>

<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
        <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1>ADD USERS.</h1>
                <h2>Create new user accounts</h2>
            </hgroup>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="UserID" DataSourceID="SqlDataSource1" Height="16px" Width="432px" AllowPaging="True">
        <Fields>
            <asp:BoundField DataField="UserID" HeaderText="UserID" InsertVisible="False" ReadOnly="True" SortExpression="UserID" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
            <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
            <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:CheckBoxField DataField="IsAdmin" HeaderText="IsAdmin" SortExpression="IsAdmin" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuizBuilderConnectionString %>" SelectCommand="SELECT * FROM [Users]" InsertCommand="INSERT INTO USers(FirstName, LastName, UserName, Password, Email, IsAdmin) VALUES(@FirstName, @LastName,@UserName,@Password,@Email,@IsAdmin)">
        <InsertParameters>
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="IsAdmin" Type="Boolean" />
        </InsertParameters>
    </asp:SqlDataSource>
</asp:Content>