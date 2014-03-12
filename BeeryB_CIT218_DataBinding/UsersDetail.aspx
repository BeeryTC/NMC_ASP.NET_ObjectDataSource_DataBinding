<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UsersDetail.aspx.cs" Inherits="BeeryB_CIT218_DataBinding.UsersDetail" %>

<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1>USER INFORMATION.</h1>
                <h2>You can easily find detailed information on every user</h2>
            </hgroup>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="FetchLastName" DataTextField="LastName" DataValueField="LastName" Height="30px" Width="301px" AutoPostBack="True">
    </asp:DropDownList>
    <asp:SqlDataSource ID="FetchLastName" runat="server" ConnectionString="<%$ ConnectionStrings:QuizBuilderConnectionString %>" SelectCommand="SELECT [LastName] FROM [Users]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuizBuilderConnectionString %>" SelectCommand="SELECT DISTINCT * FROM [Users] WHERE ([LastName] = @LastName)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" DefaultValue="NULL" Name="LastName" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataKeyNames="UserID" DataSourceID="SqlDataSource1" GridLines="None" Height="50px" Width="341px">
        <EditRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:BoundField DataField="UserID" HeaderText="UserID" InsertVisible="False" ReadOnly="True" SortExpression="UserID" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
            <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
            <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:CheckBoxField DataField="IsAdmin" HeaderText="IsAdmin" SortExpression="IsAdmin" />
        </Fields>
        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
    </asp:DetailsView>
</asp:Content>
