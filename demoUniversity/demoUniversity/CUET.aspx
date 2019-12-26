<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CUET.aspx.cs" Inherits="demoUniversity.CUET" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>CUET</title>
    <style>
        .foot{
            color: white;
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
            <asp:TableRow  >
                <asp:TableCell>
                    <asp:Button ID="bt1" runat="server" Text="Button" OnClick="bt1_Click" BackColor="#26DF01"  ForeColor="White" Height="30px" Font-Bold="true" /> 
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
            <div style="font-size:30pt; color: #FFFFCC ; width:inherit; text-shadow:1px 1px 2px">Chittagong University of Engineering & Technology</div>
        </div>
        <br />
        <br />
        <asp:Table ID="Table1" ForeColor="White" runat="server" Width="1359px" CellSpacing="10">
            <asp:TableRow>
                <asp:TableCell Width="450px" Font-Size="Larger" VerticalAlign="Middle" Font-Bold="False">Former Bangladesh Institute of Technology, Chittagong, abbreviated as BIT Chittagong is presently Chittagong University of Engineering & Technology (CUET). It is one of the prominent and prestigious autonomous self-degree-awarding institute in the engineering education of Bangladesh. This Institute was created out of Engineering College, Chittagong that was established in 1968. The Chittagong Engineering College functioned as the Faculty of Engineering of the University of Chittagong. </asp:TableCell>
                <asp:TableCell Width="450px"><asp:Image ID="Image1" runat="server" ImageUrl="~/Images/CUET.jpg" Width="450" Height="300"></asp:Image></asp:TableCell>
                <asp:TableCell Width="450px" Font-Size="Larger" VerticalAlign="Middle" Font-Bold="False">Chittagong University Of Engineering & Technology abbreviated as CUET, is one of the prominent and prestigious degree awarding institute in the engineering education of Bangladesh. This University was created out of Engineering College, Chittagong, that was established in 1968. The Engineering College , Chittagong , functioned as the Faculty of Engineering of the University of Chittagong. Though a Government Ordinance in 1986 the college was converted into an institution (BIT, Chittagong).The honorable President of Bangladesh is the visitor of the institute </asp:TableCell>
                
            </asp:TableRow>
        </asp:Table>
        <br />
        <br />
        <div style=" color:white; text-align:center; font-size:30px; background-color:#5784BE; color:white"><p>Name of Departments</p></div> 
        <div style=" color:white; text-align:center; font-size:20px"><p> Department of Architecture(Arch)</p></div>
        <div style=" color:white; text-align:center; font-size:20px"><p> Department of Biomedical Engineering(BME)</p></div>
        <div style=" color:white; text-align:center; font-size:20px"><p> Department of Civil Engineering(CE)</p></div>
        <div style=" color:white; text-align:center; font-size:20px"><p> Department of Computer Science & Engineering(CSE)</p></div>
        <div style=" color:white; text-align:center; font-size:20px"><p> Department of Disaster & Environmental Engineering(DEE)</p></div>
        <div style=" color:white; text-align:center; font-size:20px"><p> Department of Electrical And Electronics Engineering(EEE)</p></div>
        <div style=" color:white; text-align:center; font-size:20px"><p> Department of Electronics & Telecommunication Engineering(ETE)</p></div>
        <div style=" color:white; text-align:center; font-size:20px"><p> Department of Materials Science And Engineering(MSE)</p></div>
        <div style=" color:white; text-align:center; font-size:20px"><p> Department of Mechanical Engineering(ME)</p></div>
        <div style=" color:white; text-align:center; font-size:20px"><p> Department of Mechatronics & Industrial Engineering(MIE)</p></div>
        <div style=" color:white; text-align:center; font-size:20px"><p> Department of Nuclear Engineering(NE)</p></div>
        <div style=" color:white; text-align:center; font-size:20px"><p> Department of Petroleum And Mining Engineering(PME)</p></div>
        <div style=" color:white; text-align:center; font-size:20px"><p> Department of Urban & Regional Planning(URP)</p></div>
        <div style=" color:white; text-align:center; font-size:20px"><p> Department of Water Resources Engineering(WRE)</p></div>
        <br />
        <br />
        <asp:Table ID="Table4" runat="server" BorderWidth="2px" GridLines="Both" HorizontalAlign="Center" Font-Size="30px" BackColor="#006666" Caption="Preveous Year Information Summary" CaptionAlign="Top" ForeColor="#006699" Width="1150px">
            <asp:TableHeaderRow BackColor="#33CC33" ForeColor="white" Font-Size="18px">
                <asp:TableHeaderCell>Year</asp:TableHeaderCell>
                <asp:TableHeaderCell>GPA</asp:TableHeaderCell>
                <asp:TableHeaderCell>Examinee</asp:TableHeaderCell>
                <asp:TableHeaderCell>CSE</asp:TableHeaderCell>
                <asp:TableHeaderCell>EEE</asp:TableHeaderCell>
                <asp:TableHeaderCell>BME</asp:TableHeaderCell>                
                <asp:TableHeaderCell>DEE</asp:TableHeaderCell>
                <asp:TableHeaderCell>MSE</asp:TableHeaderCell>                
                <asp:TableHeaderCell>ME</asp:TableHeaderCell>
                <asp:TableHeaderCell>ETE</asp:TableHeaderCell>               
                <asp:TableHeaderCell>MIE</asp:TableHeaderCell>
                <asp:TableHeaderCell>NE</asp:TableHeaderCell>                
                <asp:TableHeaderCell>CE</asp:TableHeaderCell>
                <asp:TableHeaderCell>PME</asp:TableHeaderCell>                
                <asp:TableHeaderCell>Arch</asp:TableHeaderCell>
                <asp:TableHeaderCell>URP</asp:TableHeaderCell>                
                <asp:TableHeaderCell>WRE</asp:TableHeaderCell>
            </asp:TableHeaderRow>
            <asp:TableRow BackColor="#66FF66" ForeColor="white" Font-Size="18px">
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
                <asp:TableCell>1497</asp:TableCell>
                <asp:TableCell>1478</asp:TableCell>
                <asp:TableCell>967</asp:TableCell>
                <asp:TableCell>2996</asp:TableCell>
                <asp:TableCell>2890</asp:TableCell>
                <asp:TableCell>3712</asp:TableCell>
                <asp:TableCell>1435</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow BackColor="#66FF66" ForeColor="white" Font-Size="18px">
                <asp:TableCell>2016</asp:TableCell>
                <asp:TableCell>17.5</asp:TableCell>
                <asp:TableCell>12500</asp:TableCell>
                <asp:TableCell>1040</asp:TableCell>
                <asp:TableCell>2129</asp:TableCell>
                <asp:TableCell>1677</asp:TableCell>
                <asp:TableCell>1141</asp:TableCell>
                <asp:TableCell>2603</asp:TableCell>
                <asp:TableCell>704</asp:TableCell>
                <asp:TableCell>3121</asp:TableCell>
                <asp:TableCell>1497</asp:TableCell>
                <asp:TableCell>1478</asp:TableCell>
                <asp:TableCell>967</asp:TableCell>
                <asp:TableCell>2996</asp:TableCell>
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
                <asp:TableCell><asp:DropDownList ID="DropDownList1" CssClass="te" runat="server"  Width="450px" Height="25px" BackColor="#CCFFFF" AutoPostBack="True" Font-Italic="True"> 
                    <Items> <asp:ListItem Enabled="true" Selected="True" Text="Select Your Place"></asp:ListItem>
                              </Items> </asp:DropDownList> 
                    
                </asp:TableCell>
                <asp:TableCell><asp:Button ID="Button1" runat="server" Text="Go To CUET" OnClick="Button1_Click" BackColor="#540D6E" ForeColor="White" Font-Bold="True" /></asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <br />
        <br />
        <asp:Table ID="Table3" runat="server" CellSpacing="50"  ForeColor="#006699" CellPadding="-1" Width="1346px">
            <asp:TableHeaderRow>
                <asp:TableHeaderCell HorizontalAlign="Left">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="https://www.cuet.ac.bd/" ForeColor="#006699">CUET Website</asp:HyperLink>
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