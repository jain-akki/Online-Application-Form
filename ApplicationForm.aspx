<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ApplicationForm.aspx.cs" Inherits="ApplicationForm" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<%@ Register Assembly="MSCaptcha" Namespace="MSCaptcha" TagPrefix="rsv" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="ASP.NET ONLINE APPLICATION FORM"></asp:Label>
    <asp:Table ID="Table1" runat="server">
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="Label2" runat="server" Text="Enter Name"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>        
            </asp:TableCell>
            <asp:TableCell>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="Label3" runat="server" Text="Category"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                    <asp:ListItem Text="General"></asp:ListItem>
                    <asp:ListItem Text="OBC"></asp:ListItem>
                    <asp:ListItem Text="SC"></asp:ListItem>
                    <asp:ListItem Text="ST"></asp:ListItem>
                </asp:RadioButtonList>
            </asp:TableCell>
            <asp:TableCell>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="Label4" runat="server" Text="Date of Birth"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                </asp:ToolkitScriptManager>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                (MM/DD/YYYY)
                <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="TextBox3">
                </asp:CalendarExtender>
            </asp:TableCell>
            <asp:TableCell>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="Label5" runat="server" Text="Mobile"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>        
            </asp:TableCell>
            <asp:TableCell>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="Label6" runat="server" Text="Qualification"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>        
            </asp:TableCell>
            <asp:TableCell>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="Label7" runat="server" Text="City"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>        
            </asp:TableCell>
            <asp:TableCell>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="Label8" runat="server" Text="Email Id"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>        
            </asp:TableCell>
            <asp:TableCell>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="Label9" runat="server" Text="Upload Image"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox> 
                <asp:FileUpload ID="FileUpload1" runat="server" />       
            </asp:TableCell>
            <asp:TableCell>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="Label10" runat="server" Text="Upload Sign"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                <asp:FileUpload ID="FileUpload2" runat="server" />        
            </asp:TableCell>
            <asp:TableCell>
            </asp:TableCell>
            <asp:TableCell>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
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
                <asp:Label ID="Label12" runat="server" Text="Enter Captcha Code"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>        
            </asp:TableCell>
            <asp:TableCell>
                <asp:Label ID="Label11" runat="server" Text=""></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Button ID="Button1" runat="server" Text="Submit & Save" OnClick="Button1_Click" />
                <asp:Button ID="Button2" runat="server" Text="Preview" />
            </asp:TableCell>
            <asp:TableCell>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    </form>
</body>
</html>
