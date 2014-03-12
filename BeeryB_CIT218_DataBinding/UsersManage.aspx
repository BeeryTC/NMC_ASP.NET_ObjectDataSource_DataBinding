<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UsersManage.aspx.cs" Inherits="BeeryB_CIT218_DataBinding.UsersManage" %>

<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
        <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1>MANAGE USERS.</h1>
                <h2>Tools to update and delete user information.</h2>
            </hgroup>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="UserID" DataSourceID="SqlDataSource1" Width="1051px">
        <Columns>
            <asp:BoundField DataField="UserID" HeaderText="User ID" InsertVisible="False" ReadOnly="True" SortExpression="UserID" />
            <asp:BoundField DataField="FirstName" HeaderText="First Name" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName" />
            <asp:BoundField DataField="UserName" HeaderText="User Name" SortExpression="UserName" />
            <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:CheckBoxField DataField="IsAdmin" HeaderText="IsAdmin" SortExpression="IsAdmin" />
            <asp:CommandField ShowCancelButton="False" ShowEditButton="True" />
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuizBuilderConnectionString %>" 
        SelectCommand="SELECT DISTINCT * FROM [Users]"
        DeleteCommand="DELETE FROM [Users] WHERE [UserID] = @UserID" 
        UpdateCommand="UPDATE [Users] 
                        SET [FirstName] = @FirstName, 
                            [LastName] = @LastName, 
                            [UserName] = @UserName, 
                            [Password] = @Password, 
                            [Email] = @Email, 
                            [IsAdmin] = @IsAdmin 
                        WHERE [UserID] = @UserID">
        <InsertParameters>
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="IsAdmin" Type="Boolean" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="IsAdmin" Type="Boolean" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>
