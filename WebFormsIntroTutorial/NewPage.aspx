<%@ Page Title="Advanced Server Controls" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NewPage.aspx.cs" Inherits="WebFormsIntroTutorial.NewPage" %>
<%--New created web form page and connect to rest of site--%>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <div class="form-group">
        <label>Event Name: </label>
        <asp:TextBox ID="txtEvent" CssClass="form-control" runat="server" />
    </div>
    <div class="form-group">
        <label>Event Date: </label>
        <asp:Calendar ID="calendarEvents" runat="server" />
        <%--Displays and allows selection of dates that can be accessed with code behind--%>
    </div>
    <div class="form-group">
        <asp:Button ID="btnEvent" runat="server" CssClass="btn btn-primary btn-large" Text="Add Event" OnClick="btnEvent_Click" />
    </div>
    <h3>Events Repeater</h3>
    <div>
        <asp:Repeater ID="rptEvents" runat="server">
            <%--A Repeater dynamically writes out an item for each item in list of data using a template--%>
            <%--Templates available: header, footer, item, alternating, and separator--%>
            <ItemTemplate>
                <h3><%# DataBinder.Eval(Container.DataItem, "EventDate") %><small><%# DataBinder.Eval(Container.DataItem, "EventName")  %></small></h3>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>

<%--Unneeded initial html code--%>
<%--<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>New Page?</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Info from code behind added here
        </div>
    </form>
</body>
</html>--%>
