<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="KUET.aspx.cs" Inherits="demoUniversity.KUET" %>

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

    a {

        display:block;
        height:40px;
        width:100%;
        text-align:center;
        padding:0px;
        color:blue;
        text-decoration:none;
        font-size:20px;

    }
    ul {
        vertical-align:middle;
        list-style-type: none;  
        text-emphasis-color:white;
        margin-left:150px;
        width: 1000px;
    }
    li {
        float: left;
        vertical-align:middle;
    }
        li a.active {
            background-color:blue;
            color:white;
        }
        li a:hover:not(.active) {
            background-color:gray;
        }
        .dropdown {
      position: relative;
      display: inline-block;
            top: 0px;
            left: 0px;
            width: 197px;
        }

    .dropdown-content {
      display: none;
      position: absolute;
      background-color: gray;
      min-width: 200px;
      box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
      z-index: 1;
    }

    .dropdown:hover .dropdown-content {
        color: white;
      display: block;
    }
    </style>
</head>
<body style="background-color: #CCFFFF">
    <form id="form1" runat="server">
        <div style="text-align:center; width:1350px; background-color:#008080">
            <div style="font-size:60pt; color: #FFFFCC ; width:inherit">University Admission Information</div>
        </div>
        <br />
        <div style="text-align:center; width:1350px;  background-color:#5784BE">
            <div style="font-size:30pt; color: #FFFFCC ; width:inherit">Khulna University of Engineering & Technology, Khulna</div>
        </div>
        <br />
        <br />
        <asp:Table ID="Table3" runat="server" Width="1359px" CellSpacing="10">
            <asp:TableRow>
                <asp:TableCell Width="450px" Font-Size="Larger" VerticalAlign="Middle" Font-Bold="False">Khulna University of Engineering & Technology (KUET) is one of the leading public universities of Bangladesh giving special emphasis in the Engineering and Technological Education and research. KUET is well known for offering very high quality educational, research and developmental programs in the major disciplines of engineering as well as basic sciences. It has a sober objective to achieve excellence in quality education, research and progression to address the present needs of the country as well as the South-Western region to make it as the "Center of Excellence".</asp:TableCell>
                <asp:TableCell Width="450px"><asp:Image runat="server" ImageUrl="~/Images/KUETHome.jpg" Width="450" Height="300"></asp:Image></asp:TableCell>
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
        <asp:Table ID="Table2" runat="server" CellSpacing="10" HorizontalAlign="Center" ForeColor="White">
            
            <asp:TableRow>
                <asp:TableCell><asp:DropDownList ID="DropDownList1" runat="server"  Width="450px" Height="25px" BackColor="#CCFFFF" AutoPostBack="True" Font-Italic="True"> 
                    <Items> <asp:ListItem Enabled="true" Selected="True" Text="Select Your Place"></asp:ListItem>
                              </Items> </asp:DropDownList> 
                    
                </asp:TableCell>
                <asp:TableCell><asp:Button ID="Button1" runat="server" Text="Go To KUET" OnClick="Button1_Click" BackColor="#006666" ForeColor="White" Font-Bold="True" /></asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <br />
        <br />
        <asp:Table runat="server" CellSpacing="50"  ForeColor="#006699" CellPadding="-1" Width="1346px">
            <asp:TableHeaderRow>
                <asp:TableHeaderCell HorizontalAlign="Left">
                    <asp:HyperLink runat="server" NavigateUrl="http://www.kuet.ac.bd/" ForeColor="#006699">KUET Website</asp:HyperLink>
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