<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addstud.aspx.cs" Inherits="demoUniversity.addstud" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Student Add</title>
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
            <div style="font-size:30pt; color: #FFFFCC ; width:inherit">Add a Student</div>
        </div>
        <br />
        <br />
        <br />
        <h1>Add a new Students</h1>

        <asp:GridView ID="GridView1" runat="server" BackColor="YellowGreen"></asp:GridView>
        <br />
        <br/ />
        
        <asp:Table ID="Table1" runat="server" CaptionAlign="Top" Caption="Add a new student">
            <asp:TableRow>
                <asp:TableCell>
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="100">
                        <asp:ListItem>Science</asp:ListItem>
                        <asp:ListItem>Commerce</asp:ListItem>
                        <asp:ListItem>Humanities</asp:ListItem>
                    </asp:DropDownList>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Button ID="Button1" runat="server" Text="Next" OnClick="Button1_Click" />
                </asp:TableCell>
            </asp:TableRow>
            
        </asp:Table>
        <asp:Table ID="Table2" runat="server">
            <asp:TableRow>
                <asp:TableCell>Registration: </asp:TableCell>
                <asp:TableCell> <asp:TextBox ID="TextBox15" runat="server" type ="number"></asp:TextBox> </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Roll: </asp:TableCell>
                <asp:TableCell> <asp:TextBox ID="TextBox16" runat="server" type ="number"></asp:TextBox> </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Name: </asp:TableCell>
                <asp:TableCell> <asp:TextBox ID="TextBox17" runat="server" type ="text"></asp:TextBox> </asp:TableCell>
            </asp:TableRow>
             <asp:TableRow>
                <asp:TableCell>SSC: </asp:TableCell>
                <asp:TableCell> <asp:TextBox ID="TextBox22" runat="server" type ="number"></asp:TextBox> </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:DropDownList ID="DropDownList2" runat="server" Width="100">
                        <asp:ListItem>Bangla</asp:ListItem>
                        <asp:ListItem>English</asp:ListItem>
                        <asp:ListItem>ICT</asp:ListItem>
                        <asp:ListItem>Physics</asp:ListItem>
                        <asp:ListItem>Chemistry</asp:ListItem>
                        <asp:ListItem>Biology</asp:ListItem>
                        <asp:ListItem>Higher Math</asp:ListItem>
                        <asp:ListItem>Statistics</asp:ListItem>
                    </asp:DropDownList>
                    
                </asp:TableCell>

                <asp:TableCell>
                    <asp:TextBox ID="TextBox1" runat="server" type="number"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
             <asp:TableRow>
                <asp:TableCell>
                    <asp:DropDownList ID="DropDownList4" runat="server" Width="100">
                        <asp:ListItem>Bangla</asp:ListItem>
                        <asp:ListItem>English</asp:ListItem>
                        <asp:ListItem>ICT</asp:ListItem>
                        <asp:ListItem>Physics</asp:ListItem>
                        <asp:ListItem>Chemistry</asp:ListItem>
                        <asp:ListItem>Biology</asp:ListItem>
                        <asp:ListItem>Higher Math</asp:ListItem>
                        <asp:ListItem>Statistics</asp:ListItem>
                    </asp:DropDownList>
                    
                </asp:TableCell>

                <asp:TableCell>
                    <asp:TextBox ID="TextBox2" runat="server" type="number"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
             <asp:TableRow>
                <asp:TableCell>
                    <asp:DropDownList ID="DropDownList5" runat="server" Width="100">
                        <asp:ListItem>Bangla</asp:ListItem>
                        <asp:ListItem>English</asp:ListItem>
                        <asp:ListItem>ICT</asp:ListItem>
                        <asp:ListItem>Physics</asp:ListItem>
                        <asp:ListItem>Chemistry</asp:ListItem>
                        <asp:ListItem>Biology</asp:ListItem>
                        <asp:ListItem>Higher Math</asp:ListItem>
                        <asp:ListItem>Statistics</asp:ListItem>
                    </asp:DropDownList>
                    
                </asp:TableCell>

                <asp:TableCell>
                    <asp:TextBox ID="TextBox3" runat="server" type="number"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
             <asp:TableRow>
                <asp:TableCell>
                    <asp:DropDownList ID="DropDownList6" runat="server" Width="100">
                        <asp:ListItem>Bangla</asp:ListItem>
                        <asp:ListItem>English</asp:ListItem>
                        <asp:ListItem>ICT</asp:ListItem>
                        <asp:ListItem>Physics</asp:ListItem>
                        <asp:ListItem>Chemistry</asp:ListItem>
                        <asp:ListItem>Biology</asp:ListItem>
                        <asp:ListItem>Higher Math</asp:ListItem>
                        <asp:ListItem>Statistics</asp:ListItem>
                    </asp:DropDownList>
                    
                </asp:TableCell>

                <asp:TableCell>
                    <asp:TextBox ID="TextBox4" runat="server" type="number"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
             <asp:TableRow>
                <asp:TableCell>
                    <asp:DropDownList ID="DropDownList7" runat="server" Width="100">
                        <asp:ListItem>Bangla</asp:ListItem>
                        <asp:ListItem>English</asp:ListItem>
                        <asp:ListItem>ICT</asp:ListItem>
                        <asp:ListItem>Physics</asp:ListItem>
                        <asp:ListItem>Chemistry</asp:ListItem>
                        <asp:ListItem>Biology</asp:ListItem>
                        <asp:ListItem>Higher Math</asp:ListItem>
                        <asp:ListItem>Statistics</asp:ListItem>
                    </asp:DropDownList>
                    
                </asp:TableCell>

                <asp:TableCell>
                    <asp:TextBox ID="TextBox5" runat="server" type="number"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
             <asp:TableRow>
                <asp:TableCell>
                    <asp:DropDownList ID="DropDownList8" runat="server" Width="100">
                        <asp:ListItem>Bangla</asp:ListItem>
                        <asp:ListItem>English</asp:ListItem>
                        <asp:ListItem>ICT</asp:ListItem>
                        <asp:ListItem>Physics</asp:ListItem>
                        <asp:ListItem>Chemistry</asp:ListItem>
                        <asp:ListItem>Biology</asp:ListItem>
                        <asp:ListItem>Higher Math</asp:ListItem>
                        <asp:ListItem>Statistics</asp:ListItem>
                    </asp:DropDownList>
                    
                </asp:TableCell>

                <asp:TableCell>
                    <asp:TextBox ID="TextBox6" runat="server" type="number"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
             <asp:TableRow>
                <asp:TableCell>
                    <asp:DropDownList ID="DropDownList9" runat="server" Width="100">
                        <asp:ListItem>Bangla</asp:ListItem>
                        <asp:ListItem>English</asp:ListItem>
                        <asp:ListItem>ICT</asp:ListItem>
                        <asp:ListItem>Physics</asp:ListItem>
                        <asp:ListItem>Chemistry</asp:ListItem>
                        <asp:ListItem>Biology</asp:ListItem>
                        <asp:ListItem>Higher Math</asp:ListItem>
                        <asp:ListItem>Statistics</asp:ListItem>
                    </asp:DropDownList>
                    
                </asp:TableCell>

                <asp:TableCell>
                    <asp:TextBox ID="TextBox7" runat="server" type="number"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
             <asp:TableRow>
                <asp:TableCell>
                    <asp:DropDownList ID="DropDownList10" runat="server" Width="100">
                        <asp:ListItem>Physics</asp:ListItem>
                        <asp:ListItem>Chemistry</asp:ListItem>
                        <asp:ListItem>Biology</asp:ListItem>
                        <asp:ListItem>Higher Math</asp:ListItem>
                        <asp:ListItem>Statistics</asp:ListItem>
                    </asp:DropDownList>
                    
                </asp:TableCell>

                <asp:TableCell>
                    <label>Optional</label>
                </asp:TableCell>
            </asp:TableRow>
            
        </asp:Table>


        <asp:Table ID="Table3" runat="server">
            <asp:TableRow>
                <asp:TableCell>Registration: </asp:TableCell>
                <asp:TableCell> <asp:TextBox ID="TextBox18" runat="server" type ="number" ></asp:TextBox> </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Roll: </asp:TableCell>
                <asp:TableCell> <asp:TextBox ID="TextBox19" runat="server" type ="number"></asp:TextBox> </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Name: </asp:TableCell>
                <asp:TableCell> <asp:TextBox ID="TextBox20" runat="server" type ="text"></asp:TextBox> </asp:TableCell>
            </asp:TableRow>
             <asp:TableRow>
                <asp:TableCell>SSC: </asp:TableCell>
                <asp:TableCell> <asp:TextBox ID="TextBox21" runat="server" type ="number"></asp:TextBox> </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:DropDownList ID="DropDownList3" runat="server" Width="100">
                        <asp:ListItem>Bangla</asp:ListItem>
                        <asp:ListItem>English</asp:ListItem>
                        <asp:ListItem>ICT</asp:ListItem>


                                <asp:ListItem>Accounting</asp:ListItem>
                        <asp:ListItem>Finance</asp:ListItem>
                        <asp:ListItem>Economics</asp:ListItem>
                        <asp:ListItem>Statistics</asp:ListItem>
                    </asp:DropDownList>
                    
                </asp:TableCell>

                <asp:TableCell>
                    <asp:TextBox ID="TextBox8" runat="server" type="number"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
             <asp:TableRow>
                <asp:TableCell>
                    <asp:DropDownList ID="DropDownList11" runat="server" Width="100">
                        <asp:ListItem>Bangla</asp:ListItem>
                        <asp:ListItem>English</asp:ListItem>
                        <asp:ListItem>ICT</asp:ListItem>


                                <asp:ListItem>Accounting</asp:ListItem>
                        <asp:ListItem>Finance</asp:ListItem>
                        <asp:ListItem>Economics</asp:ListItem>
                        <asp:ListItem>Statistics</asp:ListItem>
                    </asp:DropDownList>
                    
                </asp:TableCell>

                <asp:TableCell>
                    <asp:TextBox ID="TextBox9" runat="server" type="number"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
             <asp:TableRow>
                <asp:TableCell>
                    <asp:DropDownList ID="DropDownList12" runat="server" Width="100">
                        <asp:ListItem>Bangla</asp:ListItem>
                        <asp:ListItem>English</asp:ListItem>
                        <asp:ListItem>ICT</asp:ListItem>


                                <asp:ListItem>Accounting</asp:ListItem>
                        <asp:ListItem>Finance</asp:ListItem>
                        <asp:ListItem>Economics</asp:ListItem>
                        <asp:ListItem>Statistics</asp:ListItem>
                    </asp:DropDownList>
                    
                </asp:TableCell>

                <asp:TableCell>
                    <asp:TextBox ID="TextBox10" runat="server" type="number"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
             <asp:TableRow>
                <asp:TableCell>
                    <asp:DropDownList ID="DropDownList13" runat="server" Width="100">
                        <asp:ListItem>Bangla</asp:ListItem>
                        <asp:ListItem>English</asp:ListItem>
                        <asp:ListItem>ICT</asp:ListItem>


                                <asp:ListItem>Accounting</asp:ListItem>
                        <asp:ListItem>Finance</asp:ListItem>
                        <asp:ListItem>Economics</asp:ListItem>
                        <asp:ListItem>Statistics</asp:ListItem>
                    </asp:DropDownList>
                    
                </asp:TableCell>

                <asp:TableCell>
                    <asp:TextBox ID="TextBox11" runat="server" type="number"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
             <asp:TableRow>
                <asp:TableCell>
                    <asp:DropDownList ID="DropDownList14" runat="server" Width="100">
                        <asp:ListItem>Bangla</asp:ListItem>
                        <asp:ListItem>English</asp:ListItem>
                        <asp:ListItem>ICT</asp:ListItem>


                                <asp:ListItem>Accounting</asp:ListItem>
                        <asp:ListItem>Finance</asp:ListItem>
                        <asp:ListItem>Economics</asp:ListItem>
                        <asp:ListItem>Statistics</asp:ListItem>
                    </asp:DropDownList>
                    
                </asp:TableCell>

                <asp:TableCell>
                    <asp:TextBox ID="TextBox12" runat="server" type="number"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
             <asp:TableRow>
                <asp:TableCell>
                    <asp:DropDownList ID="DropDownList15" runat="server" Width="100">
                        <asp:ListItem>Bangla</asp:ListItem>
                        <asp:ListItem>English</asp:ListItem>
                        <asp:ListItem>ICT</asp:ListItem>


                                <asp:ListItem>Accounting</asp:ListItem>
                        <asp:ListItem>Finance</asp:ListItem>
                        <asp:ListItem>Economics</asp:ListItem>
                        <asp:ListItem>Statistics</asp:ListItem>
                    </asp:DropDownList>
                    
                </asp:TableCell>

                <asp:TableCell>
                    <asp:TextBox ID="TextBox13" runat="server" type="number"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
             <asp:TableRow>
                <asp:TableCell>
                    <asp:DropDownList ID="DropDownList16" runat="server" Width="100">
                        <asp:ListItem>Bangla</asp:ListItem>
                        <asp:ListItem>English</asp:ListItem>
                        <asp:ListItem>ICT</asp:ListItem>
                        <asp:ListItem>Accounting</asp:ListItem>
                        <asp:ListItem>Finance</asp:ListItem>
                        <asp:ListItem>Economics</asp:ListItem>
                        <asp:ListItem>Statistics</asp:ListItem>
                    </asp:DropDownList>
                </asp:TableCell>

                <asp:TableCell>
                    <asp:TextBox ID="TextBox14" runat="server" type="number"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
             <asp:TableRow>
                <asp:TableCell>
                    <asp:DropDownList ID="DropDownList17" runat="server" Width="100">

                        <asp:ListItem>Accounting</asp:ListItem>
                        <asp:ListItem>Finance</asp:ListItem>
                        <asp:ListItem>Economics</asp:ListItem>
                        <asp:ListItem>Statistics</asp:ListItem>
                    </asp:DropDownList>
                    
                </asp:TableCell>

                <asp:TableCell>
                    <label>Optional</label>
                </asp:TableCell>
            </asp:TableRow>
            
        </asp:Table>

        <asp:Button ID="Button2" runat="server" Text="Submit" OnClick="Button2_Click" />
       
         <p class="foot" style="font:15px">
            Contact Us: support@universityadmission.com<br />
           ©System Development Project 2019
        </p>   
    </form>
</body>
</html>
