<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FAQ.aspx.cs" Inherits="demoUniversity.FAQ" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Home</title>
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
<body style="background-color: #CCFFFF">
    <form id="form1" runat="server">
		<div style="text-align:center; width:100%; background-color:midnightblue">
            <div style="font-size:60pt; color: #FFFFCC ; width:inherit; text-shadow:1px 1px 2px">University Admission Information</div>
        </div>
        <asp:Table ID="Table6" runat="server" HorizontalAlign="Right"  CellPadding="5">
            <asp:TableRow  CssClass="ex">
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
    <li><a href="apply.aspx">Apply</a></li>
    <li><a href="AbUs.aspx">About Us</a></li>
   </ul>
   <br />
   <br />
        <br />
        <div style="text-align:center; width:100%;  background-color:#5784BE">
            <div style="font-size:30pt; color: #FFFFCC ; width:inherit; text-shadow:1px 1px 2px">FAQ </div>
        </div>
        <br />
        <br />
        <div style="text-align:center; font-size:25pt; font-weight: bold;">Preveously Asked Questions</div>
        <br />
        <asp:Table ID="Table5" runat="server"  CaptionAlign="Top" HorizontalAlign="Center" Font-Size="25px"></asp:Table>
        <div> </div>

        <asp:Table ID="Table1" runat="server" HorizontalAlign="Center" Font-Size="25px">
            <asp:TableHeaderRow>
                <asp:TableCell>
                    <div> <asp:Button ID="Button2" runat="server" Text="Ask a Question" OnClick="Button2_Click" BackColor="Lime" Font-Size="25px" /></div>
        <div><asp:Button ID="Button3" runat="server" Text="Answer a Qusetion" OnClick="Button3_Click" BackColor="Lime" Font-Size="25px" /> </div>
                </asp:TableCell>
            </asp:TableHeaderRow>
        </asp:Table>
        <br />
        
        <asp:Table ID="Table2" runat="server" HorizontalAlign="Center" Font-Size="25px">
            <asp:TableRow>
                <asp:TableCell>
                    <asp:TextBox ID="TextBox3" runat="server"  Height="25px" Width="400px" CssClass="te"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Button ID="Button6" runat="server" Text="Ask" OnClick="Button6_Click" BackColor="#333300" ForeColor="White" Font-Size="25px"/>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        
        <asp:Table ID="Table4" runat="server" HorizontalAlign="Center" Font-Size="25px"></asp:Table>
        
        <asp:GridView ID="GridView1" runat="server" HorizontalAlign="Center" Font-Size="25px"></asp:GridView>
        <asp:Table ID="Table3" runat="server" HorizontalAlign="Center" Font-Size="25px">
            <asp:TableRow>
                <asp:TableCell>
                    Question No:
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="te"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    Answer:
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="TextBox5" runat="server" CssClass="te"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Button ID="Button7" runat="server" Text="Delete" OnClick="Button7_Click" BackColor="Red" ForeColor="White" Font-Size="25px" />
                </asp:TableCell>
                <asp:TableCell>
                     <asp:Button ID="Button8" runat="server" Text="Submit" OnClick="Button8_Click" BackColor="Green" ForeColor="White" Font-Size="25px"/>
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