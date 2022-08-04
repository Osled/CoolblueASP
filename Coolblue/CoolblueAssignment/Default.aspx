<%@ Page Async="true" Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CoolblueAssignment._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <div class="jumbotron">
        <h1>Product Information by ID</h1>
        <p class="lead">
            <asp:TextBox ID="IdTextBox" runat="server" Height="33px" OnTextChanged="Button1_Click" Width="206px"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search" />
            <asp:Label ID="Notice" runat="server" ForeColor="Red" Text="Search ID "></asp:Label>
        </p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>ID:</h2>
            <p>
                &nbsp;<asp:Label ID="I" runat="server" Height="20px" Text="0" Width="500px"></asp:Label>
            </p>
            <h2>Product Name:</h2>
            <p>
                <asp:Label ID="NamesLabel" runat="server" Height="20px" Text="0" Width="500px" ForeColor="Blue"></asp:Label>
            </p>
            <h2>Sales Price:</h2>
            <p>
                <asp:Label ID="SalesLabel" runat="server" Height="20px" Text="0" Width="500px"></asp:Label>
            </p>
            <h2>Product Type ID</h2>
            <p>
                <asp:Label ID="TypeIdLabel" runat="server" Height="20px" Text="0" Width="500px"></asp:Label>
            </p>
        </div>
        <div class="col-md-4">
        </div>
    </div>

</asp:Content>
