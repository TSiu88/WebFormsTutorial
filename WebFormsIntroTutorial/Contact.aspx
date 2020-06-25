<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebFormsIntroTutorial.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>

    <div runat="server" id="divMessage">Contact page message</div>
    <%--Added div to create HTML server control here that can use in code behind--%>
    <%--IDs has naming convention of lower camel case with type of element then purpose--%>
    <%--Add example textbox and dropdownlists with submit button and css class to be able to style--%>
    <div>
        <label>Name</label>
        <%--Web server controls prefixed with "asp:"--%>
        <asp:TextBox ID="txtName" CssClass="text-box" runat="server" />
        <asp:RequiredFieldValidator runat="server" ID="rfvName" ControlToValidate="txtName" ErrorMessage="*" Display="Dynamic" />
        <%--Validation Form for required field with just text--%>
    </div>
    <div>
        <label>Email</label>
        <asp:TextBox ID="txtEmail" runat="server" />
        <asp:RegularExpressionValidator runat="server" ID="revEmail" ControlToValidate="txtEmail" ErrorMessage="Valid email required" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic" />
        <%--Validation Form for required field with specific regex to ensure it's an email--%>
        <asp:RequiredFieldValidator runat="server" ID="rfvEmail" ControlToValidate="txtEmail" ErrorMessage="*" Display="Dynamic" />
        <%--Dynamic ensures space isn't saved for error message when not there (from valid email required)--%>
    </div>
    <div>
        <label>Age</label>
        <asp:TextBox ID="txtAge" runat="server" />
    </div>
    <div>
        <label>Dropdown Color</label>
        <asp:DropDownList ID="ddlColor" runat="server">
            <asp:ListItem Text="Choose a Color" Value="" />
            <asp:ListItem Text="Purple" Value="Purple" />
            <asp:ListItem Text="Blue" Value="Blue" />
            <asp:ListItem Text="Red" Value="Red" />
            <asp:ListItem Text="Green" Value="Green" />
        </asp:DropDownList>
        <asp:RequiredFieldValidator runat="server" ID="rfvColor" ControlToValidate="ddlColor" ErrorMessage="*" />
    </div>
    <div>
        <asp:Button ID="btnSubmit" runat="server" Text="Submit Info" OnClick="btnSubmit_Click"/>
    </div>
    <div class="message">
        <asp:Literal ID="ltMessage" runat="server" />
        <%--Gives placeholder to output whatever want to from code behind--%>
    </div>

    <h3>Your contact page.</h3>
    <address>
        One Microsoft Way<br />
        Redmond, WA 98052-6399<br />
        <abbr title="Phone">P:</abbr>
        425.555.0100
    </address>

    <address>
        <strong>Support:</strong>   <a href="mailto:Support@example.com">Support@example.com</a><br />
        <strong>Marketing:</strong> <a href="mailto:Marketing@example.com">Marketing@example.com</a>
    </address>
</asp:Content>
