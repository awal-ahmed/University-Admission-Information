﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AbUs.aspx.cs" Inherits="demoUniversity.AbUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>AbUs</title>
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
            color:white;
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
          <asp:Table ID="Table6" runat="server" HorizontalAlign="Right"  CellPadding="5">
            <asp:TableRow  CssClass="ex">
                <asp:TableCell>
                    <asp:Button ID="bt1" runat="server" Text="Button" OnClick="bt1_Click" BackColor="#26DF01"  ForeColor="White" Height="30px" Font-Bold="true" CssClass="ex" /> 
           </asp:TableCell>
           <asp:TableCell>
                    <asp:Button ID="bt2" runat="server" Text="Logout" OnClick="Bt2_Click" BackColor="Red" ForeColor="White" Height="30px" Font-Bold="true" CssClass="ex" />
          </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <br />
        <br />
        <br />
   <ul class="main-navigation">
  <li><a href="HomePage.aspx">Home</a></li>
  <li><a href="#">University</a>
    <ul>
      <li><a href="#">Agriculture</a>
            <ul>
                <li><a href="#">Bangabandhu Sheikh Mujibur Rahman Agricultural uUniversity</a></li>
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
    <li><a href="News.aspx">Schedule</a></li>
    <li><a href="FAQ.aspx">FAQ</a></li>
    <li><a href="Blog.aspx">Blog</a></li>
    <li><a href="Notic.aspx">Notice</a></li>
    <li><a href="apply.aspx">Apply</a></li>
    <li><a href="AbUs.aspx">About Us</a></li>
   </ul>
   <br />
   <br />
        <br />
        <div style="text-align:center; width:100%;  background-color:#5784BE">
            <div style="font-size:30pt; color: #FFFFCC ; width:inherit; text-shadow:1px 1px 2px">About Us</div>
        </div>
        <br />
        <p style=" color:white; font-size: 25px">According to current admission system, students have to apply each university and collect information individually. When they try to get all information at a place, they have to take it from third party which is a question of reliability. This website is made to take information from each authority and show them in an organized way to students. More it’s target is to provide some important information about transport and accommodation</p>
        <br />
        <asp:Table HorizontalAlign="Center" ID="Table1" runat="server">
            <asp:TableRow>
                <asp:TableCell>
                    <p style=" color:white; font-size: 25px">-Md Ashikuzzaman Kanon</p>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <p style=" color:white; font-size: 25px">-Awal Ahmed Fime</p>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <br />
        <br />
        <br />
                    <p class="foot" style="font:15px">
            Contact Us: support@universityadmission.com<br />
           ©System Development Project 2019
        </p>  
         
    </form>

</body>
</html>