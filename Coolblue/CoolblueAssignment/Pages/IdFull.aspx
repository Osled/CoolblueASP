<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="IdFull.aspx.cs" Inherits="CoolblueAssignment.WebForm2" Async="true" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-4">
            <div class="jumbotron">
        <h1>Product Information</h1>
        <p class="lead">
            &nbsp;</p>
    </div>

            <div style="height: 131px">
            <asp:TextBox ID="IdSearchTextBox" runat="server" Height="33px" OnTextChanged="Button1_Click" Width="206px"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search" />
            <asp:Label ID="Notice" runat="server" ForeColor="Red" Text="Search ID "></asp:Label>
            </div>

            <h2>Product ID:</h2>
            <p>
                &nbsp;<asp:Label ID="IDlabel" runat="server" Height="20px" Text="0" Width="500px"></asp:Label>
            </p>
            <h2>Product Name:</h2>
            <p>
                <asp:Label ID="Namelabel" runat="server" Height="20px" Text="0" Width="500px" ForeColor="Blue"></asp:Label>
            </p>
            <h2>Sales Price:</h2>
            <p>
                <asp:Label ID="SalesPriceLabel" runat="server" Height="20px" Text="0" Width="500px"></asp:Label>
            </p>
            <h2>Product Type ID:</h2>
            <p>
                <asp:Label ID="ProductTypeIdLabel" runat="server" Height="20px" Text="0" Width="500px"></asp:Label>
            </p>

            <h2>Product Type:</h2>
            <p>
                <asp:Label ID="ProductTypeLabel" runat="server" Height="20px" Text="0" Width="500px"></asp:Label>
            </p>

            <h2>Can Be Insured</h2>
            <p>
                <asp:Label ID="CanBeInsured" runat="server" Height="20px" Text="0" Width="500px"></asp:Label>
            </p>

            <h2>Insurance Cost:</h2>
            <p>
                <asp:Label ID="TotalCost" runat="server" Height="20px" Text="0" Width="500px"></asp:Label>
            </p>
        </div>
        <div class="col-md-4">
        </div>
    </div>
</asp:Content>
