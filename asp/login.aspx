<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" MasterPageFile="~/MasterPage.master" %>
    <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
        <div class="g1">
    
       &nbsp;<table class="style1">
            <tr>
                <td colspan="3" style="text-align: center" class="style6">
                    LOGIN</td>
            </tr>
            <tr>
                <td class="style7">
                    User type</td>
                <td class="style3">
                    <asp:DropDownList ID="DropDownList1" runat="server" 
                        onselectedindexchanged="DropDownList1_SelectedIndexChanged" Width="180px">
                        <asp:ListItem>Select type</asp:ListItem>
                        <asp:ListItem>Admin</asp:ListItem>
                        <asp:ListItem>Student</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="DropDownList1" ErrorMessage="Select type" ForeColor="Red" 
                        InitialValue="Select type"></asp:RequiredFieldValidator>
                </td>
            </tr>
            </table>
    
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click1" 
                Text="Submit" />
            <br />
    
    </div>
    </asp:Content>