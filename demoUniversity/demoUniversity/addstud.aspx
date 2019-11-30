<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addstud.aspx.cs" Inherits="demoUniversity.addstud" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    
    <form id="form1" runat="server">
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
       



        



    </form>
</body>
</html>
