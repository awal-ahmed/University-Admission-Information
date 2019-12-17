<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="demoUniversity.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-color: #CCFFFF">
    <form id="form1" runat="server">
        <div style="text-align:center; width:100%; background-color:midnightblue">
            <div style="font-size:60pt; color: #FFFFCC ; width:100%">University Admission Information</div>
        </div>
        <table style="height: 300px; width: 403px; padding-left:500px; padding-top: 100px" id="table">
                <tr>
                    <td style="font-size: x-large; background-color: #000000; color: #FF00FF;">Registration: </td>
                    <td class="auto-style1" style="background-color: #C0C0C0">
                        <asp:TextBox ID="email" runat="server" BackColor="#CCFFFF" Font-Bold="True" ForeColor="Black" Width="250px" BorderColor="Black" BorderWidth="5px" Height="30px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="font-size: x-large; background-color: #000000; color: #FF00FF;">&nbsp;Password: </td>
                    <td class="auto-style1" style="background-color: #C0C0C0; margin-left: 40px;">
                        
                        <asp:TextBox ID="pword" runat="server" BackColor="White" ForeColor="Black" Width="250px" BorderColor="Black" BorderWidth="5px" TextMode="Password" Height="30px" MaxLength="30"></asp:TextBox>
                    </td>
                </tr>
        
               
            </table>
        <br />
        <span style="margin-left:769px"><asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click"  ForeColor="White" BackColor="Green" Height="40px" Width="120px" /></span>
        <br />
        <br />
        <br />
        <div style="margin-left:400px"> Your roll is your initial password. Change it From your profile. For any login issue send a
        <asp:HyperLink ID="Forgot" runat="server" NavigateUrl="mailto:login@university.com">
                    Mail</asp:HyperLink>                    
                                  </div>

    </form>
</body>
</html>
