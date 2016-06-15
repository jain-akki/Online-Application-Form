<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ApplicationForm.aspx.cs" Inherits="ApplicationForm" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<%@ Register Assembly="MSCaptcha" Namespace="MSCaptcha" TagPrefix="rsv" %>

<!doctype html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>APPLICATION FORM</title>
</head>
<body>
    <form id="form1" runat="server">
    ASP.NET ONLINE APPLICATION FORM
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
    <asp:Table ID="Table1" runat="server">
        <asp:TableRow>
            <asp:TableCell>
                Enter Name
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>        
            </asp:TableCell>
            <asp:TableCell>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                Category
            </asp:TableCell>
            <asp:TableCell>
                <%--<asp:RadioButtonList ID="RadioButtonList1" runat="server">
                    <asp:ListItem Text="General"></asp:ListItem>
                    <asp:ListItem Text="OBC"></asp:ListItem>
                    <asp:ListItem Text="SC"></asp:ListItem>
                    <asp:ListItem Text="ST"></asp:ListItem>
                </asp:RadioButtonList>--%>
                <asp:RadioButton ID="RadioButton1" runat="server" Text="General" GroupName="cast" />
                <asp:RadioButton ID="RadioButton2" runat="server" Text="OBC" GroupName="cast" />
                <asp:RadioButton ID="RadioButton3" runat="server" Text="SC" GroupName="cast" />
                <asp:RadioButton ID="RadioButton4" runat="server" Text="ST" GroupName="cast" />
            </asp:TableCell>
            <asp:TableCell>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                Date of Birth
            </asp:TableCell>
            <asp:TableCell>
                <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                </asp:ToolkitScriptManager>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                (MM/DD/YYYY)
                <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="TextBox2">
                </asp:CalendarExtender>
            </asp:TableCell>
            <asp:TableCell>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                Mobile
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>        
            </asp:TableCell>
            <asp:TableCell>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                Qualification
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>        
            </asp:TableCell>
            <asp:TableCell>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                City
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>        
            </asp:TableCell>
            <asp:TableCell>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                Email Id
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>        
            </asp:TableCell>
            <asp:TableCell>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                Upload Image
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox> 
                <asp:FileUpload ID="FileUpload1" runat="server" />       
            </asp:TableCell>
            <asp:TableCell>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                Upload Sign
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                <asp:FileUpload ID="FileUpload2" runat="server" />        
            </asp:TableCell>
            <asp:TableCell>
            </asp:TableCell>
            <asp:TableCell>
            </asp:TableCell>
        </asp:TableRow>
        <%--<asp:TableRow>
            <asp:TableCell>
            </asp:TableCell>
            <asp:TableCell>
                <rsv:CaptchaControl ID="captcha1" 
                    runat="server" CaptchaHeight="60" CaptchaWidth="200" BackColor="White" ForeColor="#00FFCC" FontColor="#660066" />
             </asp:TableCell>
            <asp:TableCell>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                Enter Captcha Code
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>        
            </asp:TableCell>
            <asp:TableCell>
                <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
            </asp:TableCell>
        </asp:TableRow>--%>
        <asp:TableRow>
            <asp:TableCell>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=.\sqlexpress;Initial Catalog=Database;Integrated Security=True;Pooling=False" ProviderName="System.Data.SqlClient"></asp:SqlDataSource>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Button ID="Button1" runat="server" Text="Submit & Save" OnClick="Button1_Click" />
                <asp:Button ID="Button2" runat="server" Text="Preview" OnClick="Button2_Click"/>
            </asp:TableCell>
            <asp:TableCell>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    </form>
</body>
</html>
