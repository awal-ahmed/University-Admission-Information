<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Transport.aspx.cs" Inherits="demoUniversity.Transport" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head id="Head1" runat="server">
    <title>Transportation</title>
    <style>
        .foot{
            position:static;
            bottom:-5em;
            left:40%;
            text-align:center;
   
        }

    a {

        display:block;
        height:40px;
        width:200px;
        text-align:center;
        background-color:#008080;
        padding:0px;
        color:white;
        text-decoration:none;
        font-size:20px;

    }
    ul {
        vertical-align:middle;
        list-style-type: none;  
        text-emphasis-color:white;
        margin-left:150px;
        width: 1000px;
    }
    li {
        float: left;
        vertical-align:middle;
    }
        li a.active {
            background-color:blue;
            color:white;
        }
        li a:hover:not(.active) {
            background-color:gray;
        }
        .dropdown {
      position: relative;
      display: inline-block;
            top: 0px;
            left: 0px;
            width: 197px;
        }

    .dropdown-content {
      display: none;
      position: absolute;
      background-color: gray;
      min-width: 200px;
      box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
      z-index: 1;
    }

    .dropdown:hover .dropdown-content {
        color: white;
      display: block;
    }
    </style>
</head>
<body style="background-color: #CCFFFF">
    <form id="form1" runat="server">
        <div style="text-align: center; width: 1350px; background-color: midnightblue">
            <div style="font-size: 60pt; color: #FFFFCC; width: inherit">University Admission Information</div>
        </div>
        <br />
        <br />
        <br />
         <ul>
                <li><a href="HomePage.aspx">Home</a></li>
                <li><div class="dropdown"><a href="#">University</a><div class="dropdown-content">
                                            <a href="AgPg.aspx">Agriculture</a>
                                             <a href="EnPg.aspx">Engineering</a>
                                             <a href="PuPg.aspx">Public University</a></div></div></li>
                <li><a href="Transport.aspx">Transportation</a></li>
                <li><a href="Accumodation.aspx">Accomodation</a></li>
                <li><a href="#">News</a></li>
                <li><a href="#">FAQ</a></li>
                <li><a href="#">Blog</a></li>
                <li><a href="#">Notice</a></li>
                <li><div class="dropdown"><a href="#">Apply</a><div class="dropdown-content">
                                            <a href="#">Agriculture</a>
                                             <a href="#">Engineering</a>
                                             <a href="#">Public University</a></div></div></li>
                <li><a href="#">About Us</a></li>
                
                </ul>
                <br />
        <br />
        <br />
        <br />
        <br />
        <br />

        <div style="text-align: center; width: 1350px; background-color: #5784BE">
            <div style="font-size: 40pt; color: #FFFFCC; width: inherit">Transportation</div>
        </div>
        <br />
        <br />
        <asp:Table ID="Table1" runat="server" HorizontalAlign="Center" Font-Size="20" ForeColor="Blue" Font-Bold="True" CellSpacing="5">
            <asp:TableRow>
                <asp:TableCell>From</asp:TableCell>
                <asp:TableCell>
                    <asp:DropDownList ID="DropDownList1" runat="server" BackColor="#CCFFFF" Width="200" Height="30"></asp:DropDownList>
                </asp:TableCell>
                <asp:TableCell>To</asp:TableCell>
                <asp:TableCell>
                    <asp:DropDownList ID="DropDownList2" runat="server" BackColor="#CCFFFF" Width="200" Height="30"></asp:DropDownList>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Button ID="Button1" runat="server" Text="Go" OnClick="Button1_Click" BackColor="#006600" Height="30" Width="75" Font-Bold="True" ForeColor="White" />
                </asp:TableCell>
            </asp:TableRow>

        </asp:Table>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" HorizontalAlign="Center" BackColor="#CCFF66" Font-Bold="False" Font-Size="15" CellPadding="5"></asp:GridView>

        <br />
        <asp:Label ID="Label1" runat="server" Text="This Page is under construction...." Font-Bold="True" ForeColor="Red" Font-Size="30"></asp:Label>
        <br />

        <br />
        <p class="foot" style="font: 15px">
            Contact Us: support@universityadmission.com<br />
            ©System Development Project 2019
        </p>
    </form>

</body>
</html>
