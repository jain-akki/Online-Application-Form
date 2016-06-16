<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Print.aspx.cs" Inherits="Print" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Preview Page</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css">
    <script src="js/jquery.min.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        function print_page() {
            window.print();
        }
    </script>
</head>
<body>
    <form id="form1" runat="server" class="container">
    <!--Header-->
    <div id="header" class="row text-center well">
        <div class="col-xs-4">
            <asp:Image ID="Image3" ImageUrl="img/left-logo.jpg" AlternateText="Oxford Institute Logo"
                runat="server" /></div>
        <div class="col-xs-4">
            Units of Hindustan Soft Education Ltd.<br />
            An ISO 9001-2008 Company</div>
        <div class="col-xs-4">
            <asp:Image ID="Image4" ImageUrl="img/right-logo.jpg" AlternateText="Oxford Institute Logo"
                runat="server" /></div>
    </div>
    <!--Header-->
    <!--Section-->
    <div class="row pad">
        <div class="col-xs-10">
        </div>
        <div class="col-xs-2">
            <a id="A1" href="#" runat="server" onclick="javascript :print_page();"><b>Click to Print</b></a>
        </div>
    </div>
    <div class="row pad">
        <div class="col-xs-4">
            <b>Registration Number</b>
        </div>
        <div class="col-xs-8">
            <asp:Label ID="Label1" runat="server" Text="Label-regNo"></asp:Label>
        </div>
    </div>
    <div class="row pad">
        <div class="col-xs-4">
            <b>Full Name</b>
        </div>
        <div class="col-xs-4">
            <asp:Label ID="Label2" runat="server" Text="Label-name"></asp:Label>
        </div>
        <div class="col-xs-4">
            <asp:Image ID="Image1" runat="server" CssClass="img-thumbnail" Height="150" Width="110" />
        </div>
    </div>
    <div class="row pad">
        <div class="col-xs-4">
            <b>Category</b>
        </div>
        <div class="col-xs-8">
            <asp:Label ID="Label3" runat="server" Text="Label-category"></asp:Label>
        </div>
    </div>
    <div class="row pad">
        <div class="col-xs-4">
            <b>Date of Birth</b>
        </div>
        <div class="col-xs-8">
            <asp:Label ID="Label4" runat="server" Text="Label-dob"></asp:Label>
        </div>
    </div>
    <div class="row pad">
        <div class="col-xs-4">
            <b>Mobile No.</b>
        </div>
        <div class="col-xs-8">
            <asp:Label ID="Label5" runat="server" Text="Label-mobNo"></asp:Label>
        </div>
    </div>
    <div class="row pad">
        <div class="col-xs-4">
            <b>Qualification</b>
        </div>
        <div class="col-xs-8">
            <asp:Label ID="Label6" runat="server" Text="Label-qualification"></asp:Label>
        </div>
    </div>
    <div class="row pad">
        <div class="col-xs-4">
            <b>City</b>
        </div>
        <div class="col-xs-8">
            <asp:Label ID="Label7" runat="server" Text="Label-city"></asp:Label>
        </div>
    </div>
    <div class="row pad">
        <div class="col-xs-4">
            <b>Email Id</b>
        </div>
        <div class="col-xs-8">
            <asp:Label ID="Label8" runat="server" Text="Label-eid"></asp:Label>
        </div>
    </div>
    <div class="row pad">
        <div class="col-xs-12">
            <b>DECLARATION:</b><br /><br />
            I hereby decalre that all statements made in this application are true, complete
            and correct to the best of my knowledge and belief. I understand that in the event
            of any information being found untrue or incorrect at any stage or my not satisfying
            any of the eligibility criteria stipulated, my candidature is liable to be cancelled.
            Please don't copy it.
        </div>
    </div>
    <div class="row pad">
        <div class="col-xs-12">
            <b>Place:</b>
            <asp:Label ID="Label9" runat="server" Text="lbl-place"></asp:Label>
        </div>
    </div>
    <div class="row pad">
        <div class="col-xs-9">
            <b>Date:</b>
            <asp:Label ID="Label10" runat="server" Text="lbl-date"></asp:Label>
        </div>
        <div class="col-xs-3">
            <asp:Image ID="Image2" runat="server" CssClass="img-rounded" Height="60" Width="110" />
        </div>
    </div>
    <div class="row pad">
        <div class="col-xs-9"></div>
        <div class="col-xs-3">
            <b>Signature of Applicant</b>
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
