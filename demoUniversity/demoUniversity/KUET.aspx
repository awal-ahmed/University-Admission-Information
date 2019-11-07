<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="KUET.aspx.cs" Inherits="demoUniversity.KUET" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
     <title>KUET</title>
    <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <style>
        .carousel-inner img {
      width: 100%;
      height: 100%;
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
ul li a:hover { background: gray;  text-decoration:none; color: white}
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
        <div style="text-align:center; width:1350px;  background-color:#5784BE">
            <div style="font-size:30pt; color: #FFFFCC ; width:inherit">Khulna University of Engineering & Technology, Khulna</div>
        </div>
        <br />
        <br />
        <asp:Table ID="Table3" runat="server" Width="1359px" CellSpacing="10">
            <asp:TableRow>
                <asp:TableCell Width="450px" Font-Size="Larger" VerticalAlign="Middle" Font-Bold="False">Khulna University of Engineering & Technology (KUET) is one of the leading public universities of Bangladesh giving special emphasis in the Engineering and Technological Education and research. KUET is well known for offering very high quality educational, research and developmental programs in the major disciplines of engineering as well as basic sciences. It has a sober objective to achieve excellence in quality education, research and progression to address the present needs of the country as well as the South-Western region to make it as the "Center of Excellence".</asp:TableCell>
                <asp:TableCell Width="450px" Height="300px">

                    <div id="demo" class="carousel slide" data-ride="carousel">

                          <!-- Indicators -->
                          <ol class="carousel-indicators">
                            <li data-target="#demo" data-slide-to="0" class="active"></li>
                            <li data-target="#demo" data-slide-to="1"></li>
                            <li data-target="#demo" data-slide-to="2"></li>
                            <li data-target="#demo" data-slide-to="3"></li>
                            <li data-target="#demo" data-slide-to="4"></li>
                          </ol>

                          <!-- The slideshow -->
                          <div class="carousel-inner" style="text-align:center">
                            <div class="carousel-item active">
                              <img src="kuetpic/Durbarbangla.jpg" alt="Durbar"/>
                                <div class="carousel-caption">
                                    <h3>Durbar Bangle</h3>
                                    <p>It is in the center of kuet</p>
                                  </div>
                            </div>
                            <div class="carousel-item">
                              <img src="kuetpic/Swc.jpg" alt="S.W.C" />
                                <div class="carousel-caption">
                                    <h3>S.W.C.</h3>
                                    <p>Student Welfare Center</p>
                                  </div>
                            </div>
                            <div class="carousel-item">
                              <img src="kuetpic/swimimgpool.jpg" alt="Swimming Pool" />
                                <div class="carousel-caption">
                                    <h3>Swimming Pool</h3>
                                    <p>It is in the SWC</p>
                                  </div>
                            </div>
                              <div class="carousel-item">
                              <img src="kuetpic/hollywood.jpg" alt="KUET Hollywood" />
                                  <div class="carousel-caption">
                                    <h3>KUET Hollywood</h3>
                                    <p>You can see it from the main road</p>
                                  </div>
                            </div>
                              <div class="carousel-item">
                              <img src="kuetpic/kuetmaigate.jpg" alt="New York" />
                                  <div class="carousel-caption">
                                    <h3>KUET Main Gate</h3>
                                    <p>Your journey will start from here</p>
                                  </div>
                            </div>
                          </div>

                          <!-- Left and right controls -->
                          <a class="carousel-control-prev" href="#demo" data-slide="prev">
                            <span class="carousel-control-prev-icon"></span>
                          </a>
                          <a class="carousel-control-next" href="#demo" data-slide="next">
                            <span class="carousel-control-next-icon"></span>
                          </a>

                        </div>

                </asp:TableCell>
        <asp:TableCell Width="450px" Font-Size="Larger" VerticalAlign="Middle" Font-Bold="False">Khulna University of Engineering & Technology (KUET), Bangladesh established in 1967 as Khulna Engineering College, starts its long cherished journey in 3 June, 1974 after receiving special direction from the Father of the Nation Bangabandhu Sheikh Mujibur Rahman. Later to ensure the better academic and research capabilities and environment, it is converted to an autonomous institute called Bangladesh Institute of Technology (BIT), Khulna in July 1986. To meet the demands of the days in the academic and research arena, the institute was upgraded and renamed as Khulna University of Engineering & Technology (KUET) in September 2003.</asp:TableCell>
                
            </asp:TableRow>
        </asp:Table>
        <br />
        <br />
        <div style=" text-align:center; font-size:30px; background-color:#5784BE; color:white"><p>Name of Departments</p></div> 
        <div style=" text-align:center; font-size:20px"><p> Department of Architecture(Arch)</p></div> 
        <div style=" text-align:center; font-size:20px"><p> Department of Building Engineering and Construction Management(BECM)</p></div> 
        <div style=" text-align:center; font-size:20px"><p> Department of Biomedical Engineering(BME)</p></div> 
        <div style=" text-align:center; font-size:20px"><p> Department of Chemical Engineering(ChE)</p></div> 
        <div style=" text-align:center; font-size:20px"><p> Department of Civil Engineering(CE)</p></div> 
        <div style=" text-align:center; font-size:20px"><p> Department of Computer Science and Engineering(CSE)</p></div> 
        <div style=" text-align:center; font-size:20px"><p> Department of Electrical and Electronic Engineering(EEE)</p></div>  
        <div style=" text-align:center; font-size:20px"><p> Department of Electronics and Communication Engineering(ECE)</p></div> 
        <div style=" text-align:center; font-size:20px"><p> Department of Energy Science and Engineering(ESE)</p></div> 
        <div style=" text-align:center; font-size:20px"><p> Department of Industrial Engineering and Management(IEM)</p></div> 
        <div style=" text-align:center; font-size:20px"><p> Department of Leather Engineering(LE)</p></div> 
        <div style=" text-align:center; font-size:20px"><p> Department of Materials Science and Engineering(MSE)</p></div> 
        <div style=" text-align:center; font-size:20px"><p> Department of Mechatronics Engineering(MtE)</p></div> 
        <div style=" text-align:center; font-size:20px"><p> Department of Mechanical Engineering(ME)</p></div> 
        <div style=" text-align:center; font-size:20px"><p> Department of Textile Engineering(TE)</p></div> 
        <div style=" text-align:center; font-size:20px"><p> Department of Urban and Regional Planning(URP)</p></div>
        <br />
        <br />
        <asp:Table ID="Table1" runat="server" BorderWidth="2px" GridLines="Both" HorizontalAlign="Center" Font-Size="30px" BackColor="#006666" Caption="Preveous Year Information Summary" CaptionAlign="Top" ForeColor="#006699" Width="1150px">
            <asp:TableHeaderRow BackColor="#33CC33" ForeColor="Black" Font-Size="18px">
                <asp:TableHeaderCell>Year</asp:TableHeaderCell>
                <asp:TableHeaderCell>GPA</asp:TableHeaderCell>
                <asp:TableHeaderCell>Examinee</asp:TableHeaderCell>
                <asp:TableHeaderCell>CSE</asp:TableHeaderCell>
                <asp:TableHeaderCell>EEE</asp:TableHeaderCell>
                <asp:TableHeaderCell>BME</asp:TableHeaderCell>                
                <asp:TableHeaderCell>ECE</asp:TableHeaderCell>
                <asp:TableHeaderCell>MSE</asp:TableHeaderCell>                
                <asp:TableHeaderCell>ME</asp:TableHeaderCell>
                <asp:TableHeaderCell>ESE</asp:TableHeaderCell>                
                <asp:TableHeaderCell>LE</asp:TableHeaderCell>
                <asp:TableHeaderCell>TE</asp:TableHeaderCell>                
                <asp:TableHeaderCell>MTE</asp:TableHeaderCell>
                <asp:TableHeaderCell>ChE</asp:TableHeaderCell>                
                <asp:TableHeaderCell>CE</asp:TableHeaderCell>
                <asp:TableHeaderCell>BECM</asp:TableHeaderCell>                
                <asp:TableHeaderCell>Arch</asp:TableHeaderCell>
                <asp:TableHeaderCell>URP</asp:TableHeaderCell>                
                <asp:TableHeaderCell>IEM</asp:TableHeaderCell>
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
                <asp:TableCell>2890</asp:TableCell>
                <asp:TableCell>3712</asp:TableCell>
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
        <asp:Table ID="Table2" runat="server" HorizontalAlign="Center" Font-Size="15px" ForeColor="Blue" Font-Bold="True" CellSpacing="5">
            
            <asp:TableRow>
                <asp:TableCell>From</asp:TableCell>
                <asp:TableCell><asp:DropDownList ID="DropDownList1" runat="server"  Width="450px" Height="25px" BackColor="#CCFFFF" AutoPostBack="True" Font-Italic="True"> 
                    <Items> <asp:ListItem Enabled="true" Selected="True" Text="Select Your Place"></asp:ListItem>
                              </Items> </asp:DropDownList> 
                    
                </asp:TableCell>
                <asp:TableCell><asp:Button ID="Button1" runat="server" Text="Go To KUET" OnClick="Button1_Click" BackColor="#006666" ForeColor="White" Font-Bold="True" Font-Overline="False" /></asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <br />
        <br />
        <asp:Table runat="server" CellSpacing="50"  ForeColor="#006699" CellPadding="20" Width="1346px">
            <asp:TableHeaderRow>
                <asp:TableHeaderCell HorizontalAlign="Left" VerticalAlign="Middle">
                    <asp:HyperLink runat="server" NavigateUrl="http://www.kuet.ac.bd/" ForeColor="#006699">KUET Website</asp:HyperLink>
                </asp:TableHeaderCell>
                <asp:TableHeaderCell HorizontalAlign="Right" VerticalAlign="Middle">
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