<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="demoUniversity.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>login</title>
    <style>
        
        .ex {
            color: #fff !important;
            vertical-align:central;
            text-decoration: none;
            padding: 5px;
            padding-left:10px;
            padding-right:10px;
            text-decoration-color: black;
            border-radius: 20px;
            display: inline-block;
            border: none;
            font-size: 15px;
            transition: all 0.5s ease 0s;
     }
        
        
        .te {
        padding: 5px 5px;
        border: solid;
        border-width: 1px;
        border-color:#99b3ff;
        border-radius: 4px;
        background-color: #f1f1f1;
    }
        .foot{
            position:static;
            bottom:-5em;
            left:40%;
            text-align:center;
   
        }
       li {
        padding-left:17px;
        padding-right:17px;
    }
ul {
  list-style: none;
  padding: 0;
  margin: 0;
  background: #008080;
}
ul li {
  display: block;
  position: relative;
  float: left;
  background:  #008080;
}
li ul { display: none; }
ul li a {
  display: block;
  padding: 1em;
  text-decoration: none;
  white-space: nowrap;
  color: #fff;
}
ul li a:hover { background: gray; }
li:hover > ul {
  display: block;
  position: absolute;
}
li:hover li { float: none; }
li:hover a { background: #008080; }
li:hover li a:hover {background: gray }
.main-navigation li ul li { border-top: 0; }
ul ul ul {
  left: 100%;
  top: 0;
}
ul:before,
ul:after {
  content: " "; /* 1 */
  display: table; /* 2 */
}
ul:after { clear: both; }

    </style>
</head>
<body style="background-color: black">
    <form id="form1" runat="server">
        <div style="text-align:center; width:100%; background-color:midnightblue">
            <div style="font-size:60pt; color: #FFFFCC ; width:inherit; text-shadow:1px 1px 2px">University Admission Information</div>
        </div>
        <br />
        <br />
        <br />
   <ul class="main-navigation">
  <li><a href="HomePage.aspx">Home</a></li>
  <li><a href="#">University</a>
    <ul>
      <li><a href="#">Agriculture</a>
            <ul>
                <li><a href="#">Bangabandhu Sheikh Mujibur Rahman Agricultural University</a></li>
                <li><a href="#">Bangladesh Agricultural University</a></li>
                <li><a href="#">Khulna Agricultural University Bangladesh</a></li>
                 <li><a href="#">Sher-e-Bangla Agricultural University</a></li>
             </ul>
          </li>
    <li><a href="#">Engineering</a>
      <ul>
            <li><a href="BUET.aspx">Bangladesh University of Engineering & Technology, Dhaka</a></li>
            <li><a href="CUET.aspx">Chittagong University of Engineering & Technology, Chittagong</a></li>
            <li><a href="KUET.aspx">Khulna University of Engineering & Technology, Khulna</a></li>
            <li><a href="RUET.aspx">Rajshahi University of Engineering & Technology, Rajshahi</a></li>
      </ul>
      </li>
    <li><a href="PuPg.aspx">Public University</a></li>
     </ul>
    </li>
    <li><a href="Transport.aspx">Transportation</a></li>
    <li><a href="Accumodation.aspx">Accomodation</a></li>
    <li><a href="News.aspx">News</a></li>
    <li><a href="FAQ.aspx">FAQ</a></li>
    <li><a href="Blog.aspx">Blog</a></li>
    <li><a href="Notic.aspx">Notice</a></li>
    <li><a href="apply.aspx">Apply</a></li>
    <li><a href="AbUs.aspx">About Us</a></li>
   </ul>
        <br />
        <br />
        <br />
        <table style="height: 203px; width: 403px; margin-left:500px; margin-top:30px" id="table">
                <tr>
                    <td style="font-size: x-large; background-color: #000000; color: #FF00FF;">Registration: </td>
                    <td class="auto-style1" style="background-color: #C0C0C0">
                        <asp:TextBox ID="email" runat="server" CssClass="te" BackColor="#CCFFFF" Font-Bold="True" ForeColor="Black" Width="250px" BorderColor="Black" BorderWidth="5px" Height="30px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="font-size: x-large; background-color: #000000; color: #FF00FF;">&nbsp;Password: </td>
                    <td class="auto-style1" style="background-color: #C0C0C0; margin-left: 40px;">
                        
                        <asp:TextBox ID="pword" runat="server" CssClass="te" BackColor="White" ForeColor="Black" Width="250px" BorderColor="Black" BorderWidth="5px" TextMode="Password" Height="30px" MaxLength="30"></asp:TextBox>
                    </td>
                </tr>
               
            </table>
        <br />
        <span style="margin-left:820px"><asp:Button ID="Button1" ForeColor="White" BackColor="Green" Font-Size="15px"  runat="server" Height="30px" Width="90px" Text="Login" OnClick="Button1_Click" /></span>
        <br />
        <br />
        <br />
        <div style="margin-left:430px; color:white; text-shadow:1px 1px 2px"> Your roll is your initial password. Change it From your profile. For any login issue send a
        <asp:HyperLink ID="Forgot" runat="server" NavigateUrl="mailto:login@university.com">
                    Mail</asp:HyperLink>                    
                                  </div>

    </form>
</body>
</html>
