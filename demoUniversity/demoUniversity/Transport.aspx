<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Transport.aspx.cs" Inherits="demoUniversity.Transport" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head id="Head1" runat="server">
    <title>Transportation</title>
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
            <div style="font-size:30pt; color: #FFFFCC ; width:inherit; text-shadow:1px 1px 2px">Transportation</div>
        </div>
        <br />
        <br />
        <p style="font-size:20px; margin-right:20px; margin-left:50px"> Select a your place (name of your current city) and destination from the box.. This will show you all possible ways from your city to the desination university.. It will also show you the real time shortest way in map..</p>
        <br />
        <asp:Table ID="Table1" runat="server" HorizontalAlign="Center" Font-Size="20" ForeColor="Blue" Font-Bold="True" CellSpacing="5">
            <asp:TableRow>
                <asp:TableCell>From</asp:TableCell>
                <asp:TableCell>
                    <asp:DropDownList ID="DropDownList1" runat="server" BackColor="#CCFFFF" Width="200" Height="30"></asp:DropDownList>
                </asp:TableCell>
                <asp:TableCell>Destination</asp:TableCell>
                <asp:TableCell>
                    <asp:DropDownList ID="DropDownList2" runat="server" BackColor="#CCFFFF" Width="200"  Height="30" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged"></asp:DropDownList>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Button ID="Button1" runat="server" Text="Go" OnClick="Button1_Click" BackColor="#006600" Height="30" Width="75" Font-Bold="True" ForeColor="White" />
                </asp:TableCell>
            </asp:TableRow>

        </asp:Table>
        <br />
        <br />
        <br />
        <br />
        <asp:Table ID="tab1" runat="server" HorizontalAlign="Center" Font-Bold="True" Font-Size="25" ForeColor="#009933">
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="Label2" runat="server" Text="Ways From  "></asp:Label>
                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                    <asp:Label ID="Label5" runat="server" Text="  to  "></asp:Label>
                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <br />
        <asp:Label ID="Label1" runat="server" Text="Label" Visible="false"></asp:Label>
        <asp:GridView ID="GridView1" runat="server" HorizontalAlign="Center" BackColor="White" Font-Bold="False" Font-Size="15pt" CellPadding="5" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
        <asp:Table ID="Table2" runat="server" HorizontalAlign="Center">
            <asp:TableRow>
                <asp:TableCell>
                    <iframe runat="server" id="mymap" ></iframe>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
         
        
        <br />
        <br />
        <br />
        <p class="foot" style="font: 15px">
            Contact Us: support@universityadmission.com<br />
            
            ©System Development Project 2019
        </p>
    </form>

</body>
</html>
