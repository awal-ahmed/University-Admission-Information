<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addsub.aspx.cs" Inherits="demoUniversity.addsub" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Table ID="Table2" runat="server">
            <asp:TableRow>
                <asp:TableCell>
                    Add a new
                </asp:TableCell>
                <asp:TableCell>
                    University
                </asp:TableCell>
                
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Button ID="Button2" runat="server" Text="Add" OnClick="Button2_Click" />
                </asp:TableCell>
                
            </asp:TableRow>
        </asp:Table>
        
        <asp:Table ID="Table1" runat="server">
            <asp:TableRow>
                <asp:TableCell>
                    <asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem>Select Type</asp:ListItem>
                        <asp:ListItem>Engineering</asp:ListItem>
                        <asp:ListItem>Agriculture</asp:ListItem>
                        <asp:ListItem>Science And Technology</asp:ListItem>
                        <asp:ListItem>Public</asp:ListItem>
                    </asp:DropDownList>
                </asp:TableCell>
                <asp:TableCell>
                    University: 
                </asp:TableCell>
                <asp:TableCell>
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="350"></asp:DropDownList>
                </asp:TableCell>
                <asp:TableCell>
                    Subject: 
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        
    </form>
</body>
</html>
