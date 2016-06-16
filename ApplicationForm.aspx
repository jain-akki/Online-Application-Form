<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ApplicationForm.aspx.cs"
    Inherits="ApplicationForm" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register Assembly="MSCaptcha" Namespace="MSCaptcha" TagPrefix="rsv" %>
<!doctype html>
<html>
<head runat="server">
    <title>Student Form</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css">
    <script src="js/jquery.min.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server" role="form" class="container">
    <!--Header-->
    <div id="header" class="row text-center well">
        <div class="col-md-4">
            <asp:Image ID="Image1" ImageUrl="img/left-logo.jpg" AlternateText="Oxford Institute Logo"
                runat="server" /></div>
        <div class="col-md-4">
            Units of Hindustan Soft Education Ltd.<br />
            An ISO 9001-2008 Company</div>
        <div class="col-md-4">
            <asp:Image ID="Image2" ImageUrl="img/right-logo.jpg" AlternateText="Oxford Institute Logo"
                runat="server" />
        </div>
    </div>
    <!--/Header-->
    <!--Section-->
    <div class="row">
        <div class="col-md-2">
        </div>
        <div class="col-md-8">
            &nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Text="  * All fields Required to be filled"></asp:Label>
            <asp:Label ID="Label2" runat="server" Text=""></asp:Label><br />
        </div>
    </div>
    <div class="row">
        <div class="col-md-2">
        </div>
        <div class="col-md-8 table-responsive table-hover">
            <div class=" panel panel-default">
                <div class="panel-heading text-center text-capitalize">
                    <b>Student Details Form</b></div>
                <asp:Table ID="Table1" runat="server" CssClass="table panel-body">
                    <asp:TableRow CssClass="form-group">
                        <asp:TableCell>
                        Enter Name
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:TextBox ID="TextBox1" runat="server" type="text" CssClass="form-control txtbox"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow CssClass="form-group">
                        <asp:TableCell>
                        Category
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:RadioButton ID="RadioButton1" runat="server" Text="General" GroupName="cast"
                                type="radio" CssClass="rbtn" />
                            <asp:RadioButton ID="RadioButton2" runat="server" Text="OBC" GroupName="cast" type="radio"
                                CssClass="rbtn" />
                            <asp:RadioButton ID="RadioButton3" runat="server" Text="SC" GroupName="cast" type="radio"
                                CssClass="rbtn" />
                            <asp:RadioButton ID="RadioButton4" runat="server" Text="ST" GroupName="cast" type="radio"
                                CssClass="rbtn" />
                        </asp:TableCell>
                        <asp:TableCell>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow CssClass="form-group">
                        <asp:TableCell>
                        Date of Birth
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                            </asp:ToolkitScriptManager>
                            <asp:TextBox ID="TextBox2" runat="server" type="text" CssClass="form-control txtbox"></asp:TextBox>
                            (MM/DD/YYYY)
                            <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="TextBox2">
                            </asp:CalendarExtender>
                        </asp:TableCell>
                        <asp:TableCell>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow CssClass="form-group">
                        <asp:TableCell>
                        Mobile
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:TextBox ID="TextBox3" runat="server" type="text" CssClass="form-control txtbox"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow CssClass="form-group">
                        <asp:TableCell>
                        Qualification
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:TextBox ID="TextBox4" runat="server" type="text" CssClass="form-control txtbox"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow CssClass="form-group">
                        <asp:TableCell>
                        City
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:TextBox ID="TextBox5" runat="server" type="text" CssClass="form-control txtbox"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow CssClass="form-group">
                        <asp:TableCell>
                        Email Id
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:TextBox ID="TextBox6" runat="server" type="email" CssClass="form-control txtbox"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow CssClass="form-group">
                        <asp:TableCell>
                        Course Name
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="Label4" runat="server" Text=""></asp:Label><br />
                        </asp:TableCell>
                        <asp:TableCell>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow CssClass="form-group">
                        <asp:TableCell>
                        Upload Image
                        </asp:TableCell>
                        <asp:TableCell>
                            <%--<asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>--%>
                            <asp:FileUpload ID="FileUpload1" runat="server" CssClass="btn" />
                        </asp:TableCell>
                        <asp:TableCell>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow CssClass="form-group">
                        <asp:TableCell>
                        Upload Sign
                        </asp:TableCell>
                        <asp:TableCell>
                            <%--<asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>--%>
                            <asp:FileUpload ID="FileUpload2" runat="server" CssClass="btn" />
                        </asp:TableCell>
                        <asp:TableCell>
                        </asp:TableCell>
                        <asp:TableCell>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow CssClass="form-group">
                        <asp:TableCell>
                        </asp:TableCell>
                        <asp:TableCell>
                            <rsv:CaptchaControl ID="captcha1" runat="server" CaptchaHeight="60" CaptchaWidth="200"
                                BackColor="White" ForeColor="#00FFCC" FontColor="#660066" />
                        </asp:TableCell>
                        <asp:TableCell>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow CssClass="form-group">
                        <asp:TableCell>
                        Enter Captcha Code
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:TextBox ID="TextBox8" runat="server" type="text" CssClass="form-control txtbox"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow CssClass="form-group">
                        <asp:TableCell>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=.\sqlexpress;Initial Catalog=Database;Integrated Security=True;Pooling=False"
                                ProviderName="System.Data.SqlClient"></asp:SqlDataSource>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Button ID="Button1" runat="server" Text="Submit & Save" OnClick="Button1_Click"
                                CssClass="btn btn-default" />
                            &nbsp;&nbsp;
                            <asp:Button ID="Button2" runat="server" Text="Preview" OnClick="Button2_Click" CssClass="btn btn-default" />
                        </asp:TableCell>
                        <asp:TableCell>
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </div>
        </div>
        <div class="col-md-3">
        </div>
    </div>
    <!--/Section-->
    <!--Footer-->
    <div class="row well text-center">
        © Copyright Reserved 1996
    </div>
    <!--/Footer-->
    </form>
</body>
</html>
