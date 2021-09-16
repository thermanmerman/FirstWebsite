<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="projdetails.aspx.cs" Inherits="LoginPage.WebForm1" Debug="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
</head>
<body>
    <form id="form1" runat="server">
        <table style="width:100%;"> 
            
            <tr>  
                    <td class="style2">  
 </td>  
                    
                    <td> 
                        
                        <div style="width: 35%; height: 800px; overflow: auto">

                            <asp:DataList ID="dlcustomers" runat="server" CellSpacing = "3" RepeatLayout="Table" >
                                <ItemTemplate>
                                    <table class = "table">
                                        <tr>
                                            <th colspan="2">
                                            </th>
                                        </tr>
                                        <tr>
                                            <td>
                                                First name:
                                            </td>
                                            <td>
                                                <asp:TextBox ID="first_name" runat="server" Text='<%# Eval("first_name") %>' ReadOnly="true" Enabled="false"   />
                                                
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Last name:
                                            </td>
                                            <td>
                                                <asp:TextBox ID="last_name" runat="server" Text='<%# Eval("last_name") %>' ReadOnly="true" Enabled="false"   />
                                                
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Account name:
                                            </td>
                                            <td>
                                                <asp:TextBox ID="account_name" runat="server" Text='<%# Eval("account_name") %>' ReadOnly="true" Enabled="false"   />
                                                
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Email:
                                            </td>
                                            <td>
                                                <asp:TextBox ID="email" runat="server" Text='<%# Eval("email") %>' ReadOnly="true" Enabled="false"   />
                                                
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Title:
                                            </td>
                                            <td>
                                                <asp:TextBox ID="title" runat="server" Text='<%# Eval("title") %>' ReadOnly="true" Enabled="false"   />
                                                
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Department:
                                            </td>
                                            <td>
                                                <asp:TextBox ID="department" runat="server" Text='<%# Eval("department") %>' ReadOnly="true" Enabled="false"   />
                                                
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Phone:
                                            </td>
                                            <td>
                                                <asp:TextBox ID="phone" runat="server" Text='<%# Eval("phone") %>' ReadOnly="true" Enabled="false"   />
                                                
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Home Phone:
                                            </td>
                                            <td>
                                                <asp:TextBox ID="home_phone" runat="server" Text='<%# Eval("home_phone") %>' ReadOnly="true" Enabled="false"   />
                                                
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Other Phone:
                                            </td>
                                            <td>
                                                <asp:TextBox ID="other_phone" runat="server" Text='<%# Eval("other_phone") %>' ReadOnly="true" Enabled="false"   />
                                                
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Mobile:
                                            </td>
                                            <td>
                                                <asp:TextBox ID="mobile" runat="server" Text='<%# Eval("mobile") %>' ReadOnly="true" Enabled="false"   />
                                                
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Mailing Street:
                                            </td>
                                            <td>
                                                <asp:TextBox ID="mailing_street" runat="server" Text='<%# Eval("mailing_street") %>' ReadOnly="true" Enabled="false"   />
                                                
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Other Street:
                                            </td>
                                            <td>
                                                <asp:TextBox ID="other_street" runat="server" Text='<%# Eval("other_street") %>' ReadOnly="true" Enabled="false"   />
                                                
                                                </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Mailing City:
                                            </td>
                                            <td>
                                                <asp:TextBox ID="mailing_city" runat="server" Text='<%# Eval("mailing_city") %>' ReadOnly="true" Enabled="false"   />
                                                
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Other City:
                                            </td>
                                            <td>
                                                <asp:TextBox ID="other_city" runat="server" Text='<%# Eval("other_city") %>' ReadOnly="true" Enabled="false"   />
                                                
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Mailing State:
                                            </td>
                                            <td>
                                                <asp:TextBox ID="mailing_state" runat="server" Text='<%# Eval("mailing_state") %>' ReadOnly="true" Enabled="false"   />
                                               
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Other State:
                                            </td>
                                            <td>
                                                <asp:TextBox ID="other_state" runat="server" Text='<%# Eval("other_state") %>' ReadOnly="true" Enabled="false"   />
                                               
                                                </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Mailing Zip:
                                            </td>
                                            <td>
                                                <asp:TextBox ID="mailing_zip" runat="server" Text='<%# Eval("mailing_zip") %>' ReadOnly="true" Enabled="false"   />
                                              
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Other Zip:
                                            </td>
                                            <td>
                                                <asp:TextBox ID="other_zip" runat="server" Text='<%# Eval("other_zip") %>' ReadOnly="true" Enabled="false"   />
                                               
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Mailing Country:
                                            </td>
                                            <td>
                                                <asp:TextBox ID="mailing_country" runat="server" Text='<%# Eval("mailing_country") %>' ReadOnly="true" Enabled="false"   />
                                               
                                                </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Other Country:
                                            </td>
                                            <td>
                                                <asp:TextBox ID="other_country" runat="server" Text='<%# Eval("other_country") %>' ReadOnly="true" Enabled="false"   />
                                               
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Description:
                                            </td>
                                            <td>
                                                <asp:TextBox ID="description" runat="server" Text='<%# Eval("description") %>' ReadOnly="true" Enabled="false"   />
                                               
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Address:
                                            </td>
                                            <td>
                                                <asp:TextBox ID="address" runat="server" Text='<%# Eval("address") %>' ReadOnly="true" Enabled="false"   />
                                               
                                            </td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                            </asp:DataList>
                            <asp:Button ID="edit" runat="server" Text="Edit"  Height="30" Width="40"   AlternateText=" " OnClick="edit_Click" CommandName="manageWiki"   CausesValidation="True" />
                            <asp:Button ID="save" runat="server" Text="Save" Height="30" Width="40" OnClick="save_Click" CommandName="manageWiki" CausesValidation="true" Visible="false" Enabled="false" />
                            


                            </div>
                        </td>
                </tr>
            </table>
        
    </form>
</body>
</html>
