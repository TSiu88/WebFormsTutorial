<%@ Page Title="Custom Calculation" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="CustomCalculation.aspx.cs" Inherits="WebFormsIntroTutorial.CustomCalculation" %>

<asp:Content ID="CustomContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title%></h2>
    <p>Base Price: <asp:Literal ID="ltBasePrice" runat="server"></asp:Literal></p>
    <p>Shipping less for West Coast vs. East Coast</p>
    <div class="form-group">
        <label>State</label>
        <asp:DropDownList ID="ddlStates" onSelectedIndexChanged="ddlStates_SelectedIndexChanged" AutoPostBack="true" runat="server">
            <%--Set autopostback so will trigger event--%>
            <asp:ListItem Value="">Select state</asp:ListItem>
            <asp:ListItem Value="WA">Washington</asp:ListItem>
            <asp:ListItem Value="CA">California</asp:ListItem>
            <asp:ListItem Value="NY">New York</asp:ListItem>
            <asp:ListItem Value="FL">Florida</asp:ListItem>
            <asp:ListItem Value="IA">Iowa</asp:ListItem>
            <asp:ListItem Value="HI">Hawaii</asp:ListItem>
            <asp:ListItem Value="AK">Alaska</asp:ListItem>
        </asp:DropDownList>
    </div>
    <h3>Custom Price: <asp:Literal ID="ltCustomPrice" runat="server" Text="Select State"></asp:Literal></h3>
</asp:Content>

<%--<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
    </form>
</body>
</html>--%>
