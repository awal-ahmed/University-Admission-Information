<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RUET.aspx.cs" Inherits="demoUniversity.RUET" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Home</title>
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
<body style="background-color: #CCFFFF">
    <form id="form1" runat="server">
        <div style="text-align:center; width:1350px; background-color:midnightblue">
            <div style="font-size:60pt; color: #FFFFCC ; width:inherit">University Admission Information</div>
        </div>
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
        <div style="text-align:center; width:1350px;  background-color:#5784BE">
            <div style="font-size:30pt; color: #FFFFCC ; width:inherit">Rajshahi University of Engineering & Technology</div>
        </div>
        <br />
        <br />
        <asp:Table ID="Table1" runat="server" Width="1359px" CellSpacing="10">
            <asp:TableRow>
                <asp:TableCell Width="450px" Font-Size="Larger" VerticalAlign="Middle" Font-Bold="False">Rajshahi University of Engineering & Technology (RUET) is the 2nd oldest prestigious public Engineering University of Bangladesh offers quality education and research in the field of engineering and technology. The university established in 1964 as Rajshahi Engineering College with three Engineering departments namely Mechanical Engineering, Electrical & Electronic Engineering and Civil Engineering. The institute started with Bachelor degree program and limited number of students (122) enrolled in three departments each year. Later it was converted to Bangladesh Institute of Technology (BIT), Rajshahi in 1986 to enhance the technical education.</asp:TableCell>
                <asp:TableCell Width="450px"><asp:Image ID="Image1" runat="server" ImageUrl="~/Images/RUET.jpg" Width="450" Height="300"></asp:Image></asp:TableCell>
                <asp:TableCell Width="450px" Font-Size="Larger" VerticalAlign="Middle" Font-Bold="False">The institute is upgraded as Rajshahi University of Engineering & Technology (RUET) in September, 2003 to enhance the technical education and research. The university is financed by the Government through the university Grants Commission of Bangladesh. The university is an autonomous statutory organization of the Government of Bangladesh functioning within the "Rajshahi University of Engineering &Technology Act 2003.</asp:TableCell>
                
            </asp:TableRow>
        </asp:Table>
        <br />
        <br />
        <div style=" text-align:center; font-size:30px; background-color:#5784BE; color:white"><p>Name of Departments</p></div> 
        <div style=" text-align:center; font-size:20px"><p>Department of Architecture (Arch)</p></div> 
        <div style=" text-align:center; font-size:20px"><p>Department of Industrial & Production Engineering(BECM)</p></div> 
        <div style=" text-align:center; font-size:20px"><p>Department of Chemical and Food Process Engineering(CFPE)</p></div> 
        <div style=" text-align:center; font-size:20px"><p>Department of Civil Engineering(CE)</p></div> 
        <div style=" text-align:center; font-size:20px"><p>Department of Computer Science & Engineering(CSE)</p></div> 
        <div style=" text-align:center; font-size:20px"><p>Department of Electrical and Computer Engineering(ECE)</p></div> 
        <div style=" text-align:center; font-size:20px"><p>Department of Electrical and Electronic Engineering(EEE)</p></div> 
        <div style=" text-align:center; font-size:20px"><p>Department of Electronics and Telecommunication Engineering(ETE)</p></div> 
        <div style=" text-align:center; font-size:20px"><p>Department of Glass & Ceramic Engineering(GCE)</p></div> 
        <div style=" text-align:center; font-size:20px"><p>Department of Industrial & Production Engineering(IPE)</p></div> 
        <div style=" text-align:center; font-size:20px"><p>Department of Materials Science & Engineering(MSE)</p></div> 
        <div style=" text-align:center; font-size:20px"><p>Department of Mechanical Engineering(ME)</p></div> 
        <div style=" text-align:center; font-size:20px"><p>Department of Mechatronics Engineering(MTE)</p></div> 
        <div style=" text-align:center; font-size:20px"><p>Department of Urban & Regional Planning(URP)</p></div> 
        <br />
        <br />
        <asp:Table ID="Table4" runat="server" BorderWidth="2px" GridLines="Both" HorizontalAlign="Center" Font-Size="30px" BackColor="#006666" Caption="Preveous Year Information Summary" CaptionAlign="Top" ForeColor="#006699" Width="1150px">
            <asp:TableHeaderRow BackColor="#33CC33" ForeColor="Black" Font-Size="18px">
                <asp:TableHeaderCell>Year</asp:TableHeaderCell>
                <asp:TableHeaderCell>GPA</asp:TableHeaderCell>
                <asp:TableHeaderCell>Examinee</asp:TableHeaderCell>
                <asp:TableHeaderCell>CSE</asp:TableHeaderCell>
                <asp:TableHeaderCell>EEE</asp:TableHeaderCell>
                <asp:TableHeaderCell>GCE</asp:TableHeaderCell>                
                <asp:TableHeaderCell>ECE</asp:TableHeaderCell>
                <asp:TableHeaderCell>MSE</asp:TableHeaderCell>                
                <asp:TableHeaderCell>ME</asp:TableHeaderCell>
                <asp:TableHeaderCell>ETE</asp:TableHeaderCell>               
                <asp:TableHeaderCell>MTE</asp:TableHeaderCell>
                <asp:TableHeaderCell>CFPE</asp:TableHeaderCell>                
                <asp:TableHeaderCell>CE</asp:TableHeaderCell>
                <asp:TableHeaderCell>BECM</asp:TableHeaderCell>                
                <asp:TableHeaderCell>Arch</asp:TableHeaderCell>
                <asp:TableHeaderCell>URP</asp:TableHeaderCell>                
                <asp:TableHeaderCell>IPE</asp:TableHeaderCell>
            </asp:TableHeaderRow>
            <asp:TableRow BackColor="#66FF66" ForeColor="Black" Font-Size="18px">
                <asp:TableCell>2018</asp:TableCell>
                <asp:TableCell>17.5</asp:TableCell>
                <asp:TableCell>12500</asp:TableCell>
                <asp:TableCell>452</asp:TableCell>
                <asp:TableCell>301</asp:TableCell>
                <asp:TableCell>1466</asp:TableCell>
                <asp:TableCell>1141</asp:TableCell>
                <asp:TableCell>2603</asp:TableCell>
                <asp:TableCell>704</asp:TableCell>
                <asp:TableCell>1866</asp:TableCell>
                <asp:TableCell>3621</asp:TableCell>
                <asp:TableCell>3121</asp:TableCell>
                <asp:TableCell>1497</asp:TableCell>
                <asp:TableCell>1478</asp:TableCell>
                <asp:TableCell>967</asp:TableCell>
                <asp:TableCell>2996</asp:TableCell>
                <asp:TableCell>1435</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow BackColor="#66FF66" ForeColor="Black" Font-Size="18px">
                <asp:TableCell>2016</asp:TableCell>
                <asp:TableCell>17.5</asp:TableCell>
                <asp:TableCell>12500</asp:TableCell>
                <asp:TableCell>1040</asp:TableCell>
                <asp:TableCell>2129</asp:TableCell>
                <asp:TableCell>1677</asp:TableCell>
                <asp:TableCell>1141</asp:TableCell>
                <asp:TableCell>2603</asp:TableCell>
                <asp:TableCell>704</asp:TableCell>
                <asp:TableCell>1866</asp:TableCell>
                <asp:TableCell>3621</asp:TableCell>
                <asp:TableCell>3121</asp:TableCell>
                <asp:TableCell>1497</asp:TableCell>
                <asp:TableCell>1478</asp:TableCell>
                <asp:TableCell>2890</asp:TableCell>
                <asp:TableCell>3712</asp:TableCell>
                <asp:TableCell>1435</asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <br />
        <br />
        <div style=" text-align:center; font-size:30px; color:#006699"><p>Transportation</p></div> 
        <asp:Table ID="Table2" runat="server" CellSpacing="10" HorizontalAlign="Center" ForeColor="White">
            
            <asp:TableRow>
                <asp:TableCell><asp:DropDownList ID="DropDownList1" runat="server"  Width="450px" Height="25px" BackColor="#CCFFFF" AutoPostBack="True" Font-Italic="True"> 
                    <Items> <asp:ListItem Enabled="true" Selected="True" Text="Select Your Place"></asp:ListItem>
                              </Items> </asp:DropDownList> 
                    
                </asp:TableCell>
                <asp:TableCell><asp:Button ID="Button1" runat="server" Text="Go To RUET" OnClick="Button1_Click" BackColor="#006666" ForeColor="White" Font-Bold="True" /></asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <br />
        <br />
        <asp:Table ID="Table3" runat="server" CellSpacing="50"  ForeColor="#006699" CellPadding="-1" Width="1346px">
            <asp:TableHeaderRow>
                <asp:TableHeaderCell HorizontalAlign="Left">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="http://www.ruet.ac.bd/" ForeColor="#006699">RUET Website</asp:HyperLink>
                </asp:TableHeaderCell>
                <asp:TableHeaderCell HorizontalAlign="Right">
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="#" ForeColor="#006699">Accomodation</asp:HyperLink>
                </asp:TableHeaderCell>
            </asp:TableHeaderRow>
        </asp:Table>
        <p class="foot" style="font:15px">
            Contact Us: support@universityadmission.com<br />
           ©System Development Project 2019
        </p>   
    </form>

</body>
</html>