<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="apply.aspx.cs" Inherits="demoUniversity.apply" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
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
       
            <br />
           
        <asp:Table ID="Table6" runat="server" HorizontalAlign="Right"  CellPadding="5">
            <asp:TableRow  >
                <asp:TableCell>
                   
                <asp:Button ID="bt1" runat="server" Text="Button" OnClick="bt1_Click" BackColor="Green"  ForeColor="White" Height="30px" Font-Bold="true" />
         
                                      </asp:TableCell>
                <asp:TableCell>
                     <asp:Button ID="bt2" runat="server" Text="Logout" OnClick="Bt2_Click" BackColor="Red" ForeColor="White" Height="30px" Font-Bold="true" />
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
     <li><a href="#">About Us</a></li>
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
                    <asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem>University Type</asp:ListItem>
                        <asp:ListItem>Agriculture</asp:ListItem>
                        <asp:ListItem>Engineering</asp:ListItem>
                        <asp:ListItem>Science And Technology</asp:ListItem>
                        <asp:ListItem>Public</asp:ListItem>
                    </asp:DropDownList>
                </asp:TableCell>
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

        </asp:Table>
       



        <asp:Table ID="Table4" runat="server" Caption="Available Subject" HorizontalAlign="Center" >
            <asp:TableHeaderRow>
                <asp:TableCell>
                    University
                </asp:TableCell>
                <asp:TableCell>
                    Subject
                </asp:TableCell>
                <asp:TableCell>
                    Action
                </asp:TableCell>
            </asp:TableHeaderRow>
        </asp:Table>
         <asp:Table ID="Table3" runat="server" Caption="Selected Subject" HorizontalAlign="Center">
                <asp:TableHeaderRow>
                <asp:TableCell>
                    University
                </asp:TableCell>
                <asp:TableCell>
                    Subject
                </asp:TableCell>
                <asp:TableCell>
                    Action
                </asp:TableCell>
            </asp:TableHeaderRow>
        </asp:Table>

        
       
        
         <p class="foot" style="font:15px">
            Contact Us: support@universityadmission.com<br />
           ©System Development Project 2019
        </p> 
    </form>
</body>
</html>
