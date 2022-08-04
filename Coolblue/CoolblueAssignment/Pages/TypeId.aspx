<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TypeId.aspx.cs" Inherits="CoolblueAssignment.WebForm1" Async="true" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="col-md-4">
        <div class="jumbotron">
            <div style="height: 78px; width: 1227px">
            <h1>Product Information by Type ID</h1>
                <asp:TextBox ID="TypeTextBox" runat="server" Height="33px" OnTextChanged="Button1_Click" Width="206px"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search" />
                <asp:Label ID="Notice" runat="server" ForeColor="Red" Text="Search ID "></asp:Label>
            </div>
        </div>
        <div style="height: 131px">
        </div>
        <h2>Product Type ID</h2>
        <p>
                &nbsp;<asp:Label ID="ProductsTypeIdLabel" runat="server" Height="20px" Text="0" Width="500px"></asp:Label>
        </p>
        <h2>Product Type</h2>
        <p>
            <asp:Label ID="ProductsTypeNameLabel" runat="server" Height="20px" Text="0" Width="500px" ForeColor="Blue"></asp:Label>
        </p>
        <h2>Can Be Insured</h2>
        <p>
            <asp:Label ID="InsurranceStatus" runat="server" Height="20px" Text="0" Width="500px"></asp:Label>
        </p>
    </div>
</asp:Content>
