﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="apply.aspx.cs" Inherits="demoUniversity.apply" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
        padding: 5px 20px;
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
<body>
    <form id="form1" runat="server">
    
		<div style="text-align:center; width:100%; background-color:midnightblue">
            <div style="font-size:60pt; color: #FFFFCC ; width:inherit">University Admission Information</div>
        </div>
        <asp:Table ID="Table6" runat="server" HorizontalAlign="Right"  CellPadding="5">
            <asp:TableRow  >
                <asp:TableCell>
                   
                <asp:Button ID="bt1" runat="server" Text="Button" OnClick="bt1_Click" BackColor="Green"  ForeColor="White" Height="30px" Font-Bold="true" CssClass="ex" />
         
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
      <li><a href="AgPg.aspx">Agriculture</a>
            <ul>
                <li><a href="#">Bangabandhu Sheikh Mujibur Rahman Agricultural uUniversity</a></li>
                <li><a href="#">Bangladesh Agricultural University</a></li>
                <li><a href="#">Khulna Agricultural University Bangladesh</a></li>
                 <li><a href="#">Sher-e-Bangla Agricultural University</a></li>
             </ul>
          </li>
    <li><a href="EnPg.aspx">Engineering</a>
      <ul>
            <li><a href="BUET.aspx">Bangladesh University of Engineering & Technology, Dhaka</a></li>
            <li><a href="CUET.aspx">Chittagong University of Engineering & Technology, Chittagong</a></li>
            <li><a href="KUET.aspx">Khulna University of Engineering & Technology, Khulna</a></li>
            <li><a href="RUET.aspx">Rajshahi University of Engineering & Technology, Rajshahi</a></li>
      </ul>
      </li>
    <li><a href="EnPg.aspx">Public University</a></li>
     </ul>
    </li>
    <li><a href="Transport.aspx">Transportation</a></li>
    <li><a href="Accumodation.aspx">Accomodation</a></li>
    <li><a href="News.aspx">News</a></li>
    <li><a href="FAQ.aspx">FAQ</a></li>
    <li><a href="Blog.aspx">Blog</a></li>
    <li><a href="Notic.aspx">Notice</a></li>
    <li><a href="#">Apply</a>
        <ul>
            <li><a href="#">Agriculture</a></li>
            <li><a href="#">Engineering</a></li>
            <li><a href="#">Public University</a></li>
        </ul>
    </li>
     <li><a href="AbUs.aspx">About Us</a></li>
   </ul>
   <br />
   <br />
        <br />
        <div style="text-align:center; width:100%;  background-color:#5784BE">
            <div style="font-size:30pt; color: #FFFFCC ; width:inherit">Apply
                
            </div>
        </div>
        <br />
        <br />

        <p style="color: red"> *Complete your payment first. To know details about payment procedure visit <a href ="Notic.aspx"> Notice</a> page. Use your transaction id here to continue your apply procedure. It may take time to update your transaction id on website.</p>

        <asp:Table ID="Table1" runat="server" HorizontalAlign="Center">
            <asp:TableRow>
                <asp:TableCell>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>Choose Payment Method</asp:ListItem>
                        <asp:ListItem>bKash</asp:ListItem>
                        <asp:ListItem>Rocket</asp:ListItem>
                        <asp:ListItem>Surecash</asp:ListItem>
                    </asp:DropDownList>
                </asp:TableCell>
                <asp:TableCell>
                    Transaction Id:
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>

        <asp:Label ID="Label1" runat="server" Text="" ForeColor="Red"></asp:Label>

        <asp:Table ID="Table2" runat="server" BorderWidth="2px" BorderColor="Green" CellPadding="2" CellSpacing="2">
            <asp:TableRow>
                <asp:TableCell>Action</asp:TableCell>
                <asp:TableCell>University</asp:TableCell>
                <asp:TableCell>Subject</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Button ID="Button2" runat="server" Text="Select" BackColor="Green" OnClick="Button2_Click" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Button ID="Button3" runat="server" Text="Select" BackColor="Green" OnClick="Button3_Click" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Button ID="Button4" runat="server" Text="Select" BackColor="Green" OnClick="Button4_Click" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Button ID="Button5" runat="server" Text="Select" BackColor="Green" OnClick="Button5_Click" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                     <asp:Button ID="Button6" runat="server" Text="Select" BackColor="Green" OnClick="Button6_Click" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Button ID="Button7" runat="server" Text="Select" BackColor="Green" OnClick="Button7_Click" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                     <asp:Button ID="Button8" runat="server" Text="Select" BackColor="Green" OnClick="Button8_Click" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Button ID="Button9" runat="server" Text="Button" OnClick="Button9_Click" />
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <asp:Table ID="Table3" runat="server">
                        <asp:TableRow>
                <asp:TableCell>
                    
        <asp:Button ID="Button10" runat="server" Text="Button" OnClick="Button10_Click" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Button ID="Button11" runat="server" Text="Button" OnClick="Button11_Click" />
       
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Button ID="Button38" runat="server" Text="Button" OnClick="Button11_Click" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    
        <asp:Button ID="Button39" runat="server" Text="Button" OnClick="Button12_Click" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Button ID="Button13" runat="server" Text="Button" OnClick="Button13_Click" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Button ID="Button14" runat="server" Text="Button" OnClick="Button14_Click" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    
        <asp:Button ID="Button15" runat="server" Text="Button" OnClick="Button15_Click" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    
        <asp:Button ID="Button16" runat="server" Text="Button" OnClick="Button16_Click" /> <asp:Button ID="Button17" runat="server" Text="Button" OnClick="Button16_Click" />

        <asp:Button ID="Button18" runat="server" Text="Button" OnClick="Button17_Click" /><asp:Button ID="Button19" runat="server" Text="Button" OnClick="Button18_Click" /><asp:Button ID="Button20" runat="server" Text="Button" OnClick="Button19_Click" /><asp:Button ID="Button21" runat="server" Text="Button" OnClick="Button20_Click" /><asp:Button ID="Button22" runat="server" Text="Button" OnClick="Button21_Click" /><asp:Button ID="Button23" runat="server" Text="Button" OnClick="Button22_Click" /><asp:Button ID="Button24" runat="server" Text="Button" OnClick="Button23_Click" /><asp:Button ID="Button25" runat="server" Text="Button" OnClick="Button24_Click" /><asp:Button ID="Button26" runat="server" Text="Button" OnClick="Button25_Click" /><asp:Button ID="Button27" runat="server" Text="Button" OnClick="Button26_Click" /><asp:Button ID="Button28" runat="server" Text="Button" OnClick="Button27_Click" />
        <asp:Button ID="Button29" runat="server" Text="Button" OnClick="Button28_Click" /><asp:Button ID="Button30" runat="server" Text="Button" OnClick="Button29_Click" />
        <asp:Button ID="Button31" runat="server" Text="Button" OnClick="Button30_Click" /><asp:Button ID="Button32" runat="server" Text="Button" OnClick="Button31_Click" />
        <asp:Button ID="Button40" runat="server" Text="Button" OnClick="Button32_Click" />
        <asp:Button ID="Button33" runat="server" Text="Button" OnClick="Button33_Click" /><asp:Button ID="Button34" runat="server" Text="Button" OnClick="Button34_Click" /><asp:Button ID="Button35" runat="server" Text="Button" OnClick="Button35_Click" />
        <asp:Button ID="Button36" runat="server" Text="Button" OnClick="Button36_Click" /><asp:Button ID="Button37" runat="server" Text="Button" OnClick="Button37_Click" />
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>

        

        

        
        
       
        
         <p class="foot" style="font:15px">
            Contact Us: support@universityadmission.com<br />
           ©System Development Project 2019
        </p> 
    </form>
</body>
</html>