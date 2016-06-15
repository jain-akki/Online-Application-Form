<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!doctype html>

<html>
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js" type="text/javascript"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
        <!--Header-->
            <div class="row well text-center">
              <div class="col-md-4"><asp:Image ID="Image1" ImageUrl="img/left-logo.jpg" AlternateText="Oxford Institute Logo" runat="server"/></div>
              <div class="col-md-4">Units of Hindustan Soft Education Ltd.<br />An ISO 9001-2008 Company</div>
              <div class="col-md-4"><asp:Image ID="Image2" ImageUrl="img/right-logo.jpg" AlternateText="Oxford Institute Logo" runat="server"/></div>
            </div>
        <!--Header-->

        <!--Section-->
            <h3 >Fill Online Application Form for Oxford Software Institute</h3>
            <div class="row text-center">
                <div class="col-md-2"></div>
                <div class="col-md-8">
                    <div class="panel panel-default">
                      <div class="panel-heading">Instructions </div>
                      <div class="panel-body">
                        Only those Students can fill this form who already take admission in Oxford Software Institute.<br />
                        This form is neccessary to be filled by every student who take admission in oxford. <br />
                        So, that their record is maintained by Oxford Software Institute .    
                      </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4">
                    <asp:DropDownList ID="dlist" runat="server" CssClass="dropdown-header">
                        <asp:ListItem Text="Select Your Course" Value="0"></asp:ListItem>
                        <asp:ListItem Text="Multimedia & Web Designing" Value="1"></asp:ListItem>
                        <asp:ListItem Text="VFX & Video Editing" Value="2"></asp:ListItem>
                        <asp:ListItem Text=".Net Programming" Value="3"></asp:ListItem>
                        <asp:ListItem Text="Hardware & Networking" Value="4"></asp:ListItem>
                        <asp:ListItem Text="MCITP & CCNA Network Administrator" Value="5"></asp:ListItem>
                        <asp:ListItem Text="Computer Accounting" Value="6"></asp:ListItem>
                        <asp:ListItem Text="E-Accounting" Value="7"></asp:ListItem>
                        <asp:ListItem Text="Spoken English" Value="8"></asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4">
                    <asp:Button ID="btn1" runat="server" Text="Continue" CssClass="btn btn-warning" />
                </div>
            </div>
        <!--Section-->

        <!--Footer-->
            <div class="row well text-center">
                © Copyright Reserved 1996
            </div>
        <!--Footer-->
    </form>
</body>
</html>
