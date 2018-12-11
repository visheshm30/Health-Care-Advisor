<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" MasterPageFile="~/MasterPage.master" %>
    <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
        <div>
    
        <table class="style1">
            <tr>
                <td class="style2">
                    Name</td>
                <td class="style4">
                    <asp:TextBox ID="TextBox1" runat="server" Width="180px" 
                        ontextchanged="TextBox1_TextChanged1"></asp:TextBox>
                </td>
                <td class="style5">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="Enter the Name" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Age</td>
                <td class="style4">
                    <asp:TextBox ID="TextBox2" runat="server" Width="180px" 
                        ontextchanged="TextBox2_TextChanged"></asp:TextBox>
                </td>
                <td class="style5">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="Please enter age" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RangeValidator ID="RangeValidator1" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="Age must be above 18" 
                        ForeColor="Red" MaximumValue="100" MinimumValue="18" Type="Integer"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="style6">
                    Gender</td>
                <td class="style7">
                    <asp:DropDownList ID="DropDownList2" runat="server" Width="180px" 
                        onselectedindexchanged="DropDownList2_SelectedIndexChanged">
                        <asp:ListItem>Select Gender</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="style9">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ErrorMessage="Select gender" ForeColor="Red" InitialValue="Select Gender" 
                        ControlToValidate="DropDownList2"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    UserName</td>
                <td class="style4">
                    <asp:TextBox ID="TextBox3" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td class="style5">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="Enter UserName" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style6">
                    Password</td>
                <td class="style7">
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="Password" Width="180px" 
                        ontextchanged="TextBox4_TextChanged"></asp:TextBox>
                </td>
                <td class="style8">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="TextBox4" ErrorMessage="Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Confrm Password</td>
                <td class="style4">
                    <asp:TextBox ID="TextBox5" runat="server" TextMode="Password" Width="180px" 
                        ontextchanged="TextBox5_TextChanged"></asp:TextBox>
                </td>
                <td class="style5">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="TextBox5" ErrorMessage="Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="TextBox4" ControlToValidate="TextBox5" 
                        ErrorMessage="Password doesn't match" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Country</td>
                <td class="style4">
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="180px">
                        <asp:ListItem>Select Country</asp:ListItem>
                        <asp:ListItem>India</asp:ListItem>
                        <asp:ListItem>Usa</asp:ListItem>
                        <asp:ListItem>Russia</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="style5">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="DropDownList1" ErrorMessage="Select a country" 
                        ForeColor="Red" InitialValue="Select Country"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    E-mail</td>
                <td class="style4">
                    <asp:TextBox ID="TextBox6" runat="server" Width="180px" 
                        ontextchanged="TextBox6_TextChanged1" style="height: 22px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="TextBox6" ErrorMessage="Please Enter E-mail" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="TextBox6" ErrorMessage="Enter valid E-mail" ForeColor="Red" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Room Type</td>
                <td class="style4">
                    <asp:DropDownList ID="DropDownList3" runat="server" Width="180px">
                        <asp:ListItem>Select room</asp:ListItem>
                        <asp:ListItem>AC</asp:ListItem>
                        <asp:ListItem>Non-AC</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ControlToValidate="DropDownList3" ErrorMessage="Please select room type" 
                        ForeColor="Red" InitialValue="Select room"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Food Type</td>
                <td class="style4">
                    <asp:DropDownList ID="DropDownList4" runat="server" Width="180px">
                        <asp:ListItem>Select food</asp:ListItem>
                        <asp:ListItem>Veg</asp:ListItem>
                        <asp:ListItem>Non-veg</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                        ControlToValidate="DropDownList4" ErrorMessage="Please enter food prefrence" 
                        ForeColor="Red" InitialValue="Select food"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style4">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                        Text="Register" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
  </asp:Content>
     

