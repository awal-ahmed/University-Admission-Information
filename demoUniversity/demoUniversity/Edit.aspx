<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="demoUniversity.Edit" %>

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
                    <asp:Button ID="bt1" runat="server" Text="Button" OnClick="bt1_Click" BackColor="Green"  ForeColor="White" Height="30px" Font-Bold="true" /> 
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
        <div style="font-size:30pt; color: #FFFFCC ; width:inherit; text-shadow:1px 1px 2px">Edit</div>
    </div>
    <br />
    <br />
    <br />
        <p style="font-size: 25px">Add A Notice:</p><p style="font-size:20px; margin-left:50px"> This button will take you in a new page.. Where you can add a new notic from your university.. Any type of notice can be added here.. But It should be in .pdf form..</p>
        <br />
        
        <p style="font-size: 25px">Add A Subject:</p><p style="font-size:20px; margin-left:50px"> This button will take you in a new page.. This button is for adding a new subject in a university.. When a university addes a new department in the versity.. You can add it from here..</p>
        <br />
        
        <p style="font-size: 25px">Add a new news:</p><p style="font-size:20px; margin-left:50px"> This button will keep you in the same page.. You can add any news of any type of programme happening in your university..</p>
        <br />
        
        <p style="font-size: 25px">Add a new student:</p><p style="font-size:20px; margin-left:50px"> This button will take you in a new page.. Where you can details about any student..</p>
        <br />
        
        <p style="font-size: 25px">Add a place to stay in your city:</p><p style="font-size:20px; margin-left:50px"> This button will keep you in the same page.. You can add information about any hotel, mass or other resitent.. It will help the students to stay when they will come to university for any reason.. </p>
        <br />

        <p style="font-size: 25px">Add a new way to go to your university:</p><p style="font-size:20px; margin-left:50px"> This button will keep you in the same page.. Here you can add information about bus, train or other vehicle. This will help them to go to the university from district..</p>
        <br />

       
        <asp:Table ID="Table1" runat="server" HorizontalAlign="Center" CellSpacing="100">
            <asp:TableRow>
                <asp:TableCell HorizontalAlign="Center" >
                    <asp:Button ID="Button8" runat="server" Text="Add A Notice" OnClick="Button8_Click" BackColor="Teal" ForeColor="White" Font-Size="15"/>
                    <br />
                    <asp:Button ID="Button9" runat="server" Text="Add A Subject" OnClick="Button9_Click" BackColor="Teal" ForeColor="White" Font-Size="15"/>
                    <br />
                    <asp:Button ID="Button1" runat="server" Text="Add a new news" OnClick="Button1_Click" ForeColor="White" BackColor="Teal" Font-Size="15" />
                    <br />
                    <asp:Button ID="Button7" runat="server" Text="Add a new student" OnClick="Button7_Click" BackColor="Teal" ForeColor="White" Font-Size="15" />
                    <br />
                    <asp:Button ID="Button3" runat="server" Text="Add a place to stay in your city" OnClick="Button3_Click" BackColor="Teal" ForeColor="White" Font-Size="15" />
                    <br />
                    <asp:Button ID="Button2" runat="server" Text="Add a new way to go to your university" OnClick="Button2_Click" BackColor="Teal" ForeColor="White" Font-Size="15" />
                </asp:TableCell>
                <asp:TableCell>
<div style="text-align:center"><asp:Label ID="Label15" runat="server" Text="Add a new news" ForeColor="#FF6600" Font-Size="25" Font-Bold="True"></asp:Label></div>
        <asp:Table HorizontalAlign="Center" ID="tab1" runat="server" CellSpacing="20">
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="Label1" runat="server" Text="Venue"></asp:Label>
                 </asp:TableCell>
                <asp:TableCell>
                    <asp:DropDownList ID="DropDownList1" runat="server" BackColor="#CCFFFF" Width="140" Height="30"></asp:DropDownList>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                     <asp:Label ID="Label2" runat="server" Text="Program Type"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                     <asp:TextBox ID="TextBox2" runat="server" CssClass="te"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="Label3" runat="server" Text="Month"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="te"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="Label4" runat="server" Text="Start Date"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="te"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="Label5" runat="server" Text="End Date"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="TextBox5" runat="server" CssClass="te"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                   <asp:Label ID="Label6" runat="server" Text="Details"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                   <asp:TextBox ID="TextBox6" runat="server" CssClass="te"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                   <asp:Label ID="Label22" runat="server" Text="Add Contact Information"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                   <asp:TextBox ID="TextBox1" runat="server" CssClass="te"></asp:TextBox>
                </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>

                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Button ID="Button4" runat="server" Text="Done" OnClick="Button4_Click" BackColor="#006600" ForeColor="White" />
                    </asp:TableCell>
              </asp:TableRow>
        </asp:Table>
        <div style="text-align:center"><asp:Label ID="Label16" runat="server" Text="Add a way to go" ForeColor="#FF6600" Font-Size="25" Font-Bold="True"></asp:Label></div>

        <asp:Table ID="tab2" HorizontalAlign="Center" runat="server" CellSpacing="20">
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="Label7" runat="server" Text="From"></asp:Label>
                 </asp:TableCell>
                <asp:TableCell>
                    <asp:DropDownList ID="DropDownList2" runat="server" BackColor="#CCFFFF" Width="200" Height="30"></asp:DropDownList>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                     <asp:Label ID="Label8" runat="server" Text="To"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:DropDownList ID="DropDownList3" runat="server" BackColor="#CCFFFF" Width="200" Height="30"></asp:DropDownList>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="Label9" runat="server" Text="Type"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="TextBox9" runat="server" CssClass="te"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="Label10" runat="server" Text="Time"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="TextBox10" runat="server" CssClass="te"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="Label11" runat="server" Text="Fare"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="TextBox11" runat="server" CssClass="te"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                   <asp:Label ID="Label12" runat="server" Text="Contact"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                   <asp:TextBox ID="TextBox12" runat="server" CssClass="te"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="Label13" runat="server" Text="Duration"></asp:Label>
                 </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="TextBox13" runat="server" CssClass="te"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                     <asp:Label ID="Label14" runat="server" Text="Additional"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                     <asp:TextBox ID="TextBox14" runat="server" CssClass="te"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                     <asp:Label ID="Label23" runat="server" Text="Map API: "></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                     <asp:TextBox ID="TextBox7" runat="server" CssClass="te"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>

                </asp:TableCell>
                <asp:TableCell>
                    <asp:Button ID="Button5" runat="server" Text="Done" OnClick="Button5_Click" BackColor="#006600" ForeColor="White" />
                </asp:TableCell>
            </asp:TableRow>
         </asp:Table>
        <div style="text-align:center"><asp:Label ID="Label17" runat="server" Text="Place you stay in the city" Font-Size="25" ForeColor="#FF6600" Font-Bold="True"></asp:Label></div>
        <asp:Table ID="tab3" HorizontalAlign="Center" runat="server" CellSpacing="20">
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="Label18" runat="server" Text="Enter the versity "></asp:Label>
                 </asp:TableCell>
                <asp:TableCell>
                    
                    <asp:DropDownList ID="DropDownList4" runat="server" BackColor="#CCFFFF" Width="200" Height="30"></asp:DropDownList>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                     <asp:Label ID="Label19" runat="server" Text="Name of the hotel"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                     <asp:TextBox ID="TextBox16" runat="server" CssClass="te"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="Label20" runat="server" Text="Address of the hotel"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="TextBox17" runat="server" CssClass="te"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="Label21" runat="server" Text="Phone number"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="TextBox18" runat="server" CssClass="te"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="Label24" runat="server" Text="Map API"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="TextBox8" runat="server" CssClass="te"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
             <asp:TableRow>
                 <asp:TableCell>

                 </asp:TableCell>
                 <asp:TableCell>
                     <asp:Button ID="Button6" runat="server" Text="Done" OnClick="Button6_Click" BackColor="#006600" ForeColor="White" />
                 </asp:TableCell>
             </asp:TableRow>
            
        </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        
        
        <br />
        <br />
        
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