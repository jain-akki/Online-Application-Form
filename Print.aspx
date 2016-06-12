<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Print.aspx.cs" Inherits="Print" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Print Page</title>
    <script type="text/javascript">
        function print_page() {
            window.print();
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <a href="#" runat="server" onclick="javascript :print_page();"><b>Click to Print</b></a>
    <asp:Table ID="Table1" runat="server">
        <asp:TableRow>
            <asp:TableCell>
                Registration Number
            </asp:TableCell>
            <asp:TableCell>
                <asp:Label ID="Label1" runat="server" Text="Label-regNo"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                Full Name
            </asp:TableCell>
            <asp:TableCell>
                <asp:Label ID="Label2" runat="server" Text="Label-name"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Image ID="Image1" runat="server" />
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                Category
            </asp:TableCell>
            <asp:TableCell>
                <asp:Label ID="Label3" runat="server" Text="Label-category"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                Date of Birth
            </asp:TableCell>
            <asp:TableCell>
                <asp:Label ID="Label4" runat="server" Text="Label-dob"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                Mobile No.
            </asp:TableCell>
            <asp:TableCell>
                <asp:Label ID="Label5" runat="server" Text="Label-mobNo"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                Qualification
            </asp:TableCell>
            <asp:TableCell>
                <asp:Label ID="Label6" runat="server" Text="Label-qualification"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                City
            </asp:TableCell>
            <asp:TableCell>
                <asp:Label ID="Label7" runat="server" Text="Label-city"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                Email Id
            </asp:TableCell>
            <asp:TableCell>
                <asp:Label ID="Label8" runat="server" Text="Label-eid"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
            </asp:TableCell>
            <asp:TableCell>
            </asp:TableCell>
            <asp:TableCell>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell ColumnSpan='3'>
                DECLARATION: 
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell ColumnSpan='3'>
                I hereby decalre that all statements made in this application are true, complete and correct to the best of my
                knowledge and belief. I understand that in the event of any information being found untrue or incorrect at any 
                stage or my not satisfying any of the eligibility criteria stipulated, my candidature is liable to be cancelled.
                Please don't copy it.
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                Place
            </asp:TableCell>
            <asp:TableCell>
            </asp:TableCell>
            <asp:TableCell>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                Date: <asp:Label ID="Label9" runat="server" Text="Enter Name"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Image ID="Image2" runat="server" />
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
            </asp:TableCell>
            <asp:TableCell>
            </asp:TableCell>
            <asp:TableCell>
                Signature of Applicant
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    </form>    
</body>
</html>
