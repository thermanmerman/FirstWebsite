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
                                                <asp:Button ID="first_name_edit" runat="server" Text="Edit"  Height="30" Width="40"   AlternateText=" " OnClick="edit_Click" CommandArgument="first_name"  CommandName="manageWiki"   CausesValidation="True" />
                                                <asp:Button ID="first_name_save" runat="server" Text="Save" Height="30" Width="40" OnClick="save_Click" CommandArgument="first_name" CommandName="manageWiki" CausesValidation="true" Visible="false" Enabled="false" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Last name:
                                            </td>
                                            <td>
                                                <asp:TextBox ID="last_name" runat="server" Text='<%# Eval("last_name") %>' ReadOnly="true" Enabled="false"   />
                                                <asp:Button ID="last_name_edit" runat="server" Text="Edit"  Height="30" Width="40"   AlternateText=" " OnClick="edit_Click" CommandArgument="last_name"  CommandName="manageWiki"   CausesValidation="True" />
                                                <asp:Button ID="last_name_save" runat="server" Text="Save" Height="30" Width="40" OnClick="save_Click" CommandArgument="last_name" CommandName="manageWiki" CausesValidation="true" Visible="false" Enabled="false" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Account name:
                                            </td>
                                            <td>
                                                <asp:TextBox ID="account_name" runat="server" Text='<%# Eval("account_name") %>' ReadOnly="true" Enabled="false"   />
                                                <asp:Button ID="account_name_edit" runat="server" Text="Edit"  Height="30" Width="40"   AlternateText=" " OnClick="edit_Click" CommandArgument="account_name"  CommandName="manageWiki"   CausesValidation="True" />
                                                <asp:Button ID="account_name_save" runat="server" Text="Save" Height="30" Width="40" OnClick="save_Click" CommandArgument="account_name" CommandName="manageWiki" CausesValidation="true" Visible="false" Enabled="false" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Email:
                                            </td>
                                            <td>
                                                <asp:TextBox ID="email" runat="server" Text='<%# Eval("email") %>' ReadOnly="true" Enabled="false"   />
                                                <asp:Button ID="email_edit" runat="server" Text="Edit"  Height="30" Width="40"   AlternateText=" " OnClick="edit_Click" CommandArgument="email"  CommandName="manageWiki"   CausesValidation="True" />
                                                <asp:Button ID="email_save" runat="server" Text="Save" Height="30" Width="40" OnClick="save_Click" CommandArgument="email" CommandName="manageWiki" CausesValidation="true" Visible="false" Enabled="false" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Title:
                                            </td>
                                            <td>
                                                <asp:TextBox ID="title" runat="server" Text='<%# Eval("title") %>' ReadOnly="true" Enabled="false"   />
                                                <asp:Button ID="title_edit" runat="server" Text="Edit"  Height="30" Width="40"   AlternateText=" " OnClick="edit_Click" CommandArgument="title"  CommandName="manageWiki"   CausesValidation="True" />
                                                <asp:Button ID="title_save" runat="server" Text="Save" Height="30" Width="40" OnClick="save_Click" CommandArgument="title" CommandName="manageWiki" CausesValidation="true" Visible="false" Enabled="false" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Department:
                                            </td>
                                            <td>
                                                <asp:TextBox ID="department" runat="server" Text='<%# Eval("department") %>' ReadOnly="true" Enabled="false"   />
                                                <asp:Button ID="department_edit" runat="server" Text="Edit"  Height="30" Width="40"   AlternateText=" " OnClick="edit_Click" CommandArgument="department"  CommandName="manageWiki"   CausesValidation="True" />
                                                <asp:Button ID="department_save" runat="server" Text="Save" Height="30" Width="40" OnClick="save_Click" CommandArgument="department_save" CommandName="manageWiki" CausesValidation="true" Visible="false" Enabled="false" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Phone:
                                            </td>
                                            <td>
                                                <asp:TextBox ID="phone" runat="server" Text='<%# Eval("phone") %>' ReadOnly="true" Enabled="false"   />
                                                <asp:Button ID="phone_edit" runat="server" Text="Edit"  Height="30" Width="40"   AlternateText=" " OnClick="edit_Click" CommandArgument="phone"  CommandName="manageWiki"   CausesValidation="True" />
                                                <asp:Button ID="phone_save" runat="server" Text="Save" Height="30" Width="40" OnClick="save_Click" CommandArgument="phone" CommandName="manageWiki" CausesValidation="true" Visible="false" Enabled="false" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Home Phone:
                                            </td>
                                            <td>
                                                <asp:TextBox ID="home_phone" runat="server" Text='<%# Eval("home_phone") %>' ReadOnly="true" Enabled="false"   />
                                                <asp:Button ID="home_phone_edit" runat="server" Text="Edit"  Height="30" Width="40"   AlternateText=" " OnClick="edit_Click" CommandArgument="home_phone"  CommandName="manageWiki"   CausesValidation="True" />
                                                <asp:Button ID="home_phone_save" runat="server" Text="Save" Height="30" Width="40" OnClick="save_Click" CommandArgument="home_phone" CommandName="manageWiki" CausesValidation="true" Visible="false" Enabled="false" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Other Phone:
                                            </td>
                                            <td>
                                                <asp:TextBox ID="other_phone" runat="server" Text='<%# Eval("other_phone") %>' ReadOnly="true" Enabled="false"   />
                                                <asp:Button ID="other_phone_edit" runat="server" Text="Edit"  Height="30" Width="40"   AlternateText=" " OnClick="edit_Click" CommandArgument="other_phone"  CommandName="manageWiki"   CausesValidation="True" />
                                                <asp:Button ID="other_phone_save" runat="server" Text="Save" Height="30" Width="40" OnClick="save_Click" CommandArgument="other_phone" CommandName="manageWiki" CausesValidation="true" Visible="false" Enabled="false" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Mobile:
                                            </td>
                                            <td>
                                                <asp:TextBox ID="mobile" runat="server" Text='<%# Eval("mobile") %>' ReadOnly="true" Enabled="false"   />
                                                <asp:Button ID="mobile_edit" runat="server" Text="Edit"  Height="30" Width="40"   AlternateText=" " OnClick="edit_Click" CommandArgument="mobile"  CommandName="manageWiki"   CausesValidation="True" />
                                                <asp:Button ID="mobile_save" runat="server" Text="Save" Height="30" Width="40" OnClick="save_Click" CommandArgument="mobile" CommandName="manageWiki" CausesValidation="true" Visible="false" Enabled="false" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Mailing Street:
                                            </td>
                                            <td>
                                                <asp:TextBox ID="mailing_street" runat="server" Text='<%# Eval("mailing_street") %>' ReadOnly="true" Enabled="false"   />
                                                <asp:Button ID="mailing_street_edit" runat="server" Text="Edit"  Height="30" Width="40"   AlternateText=" " OnClick="edit_Click" CommandArgument="mailing_street"  CommandName="manageWiki"   CausesValidation="True" Enabled="true" Visible="true" />
                                                <asp:Button ID="mailing_street_save" runat="server" Text="Save" Height="30" Width="40" OnClick="save_Click" CommandArgument="mailing_street" CommandName="manageWiki" CausesValidation="true" Visible="false" Enabled="false" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Other Street:
                                            </td>
                                            <td>
                                                <asp:TextBox ID="other_street" runat="server" Text='<%# Eval("other_street") %>' ReadOnly="true" Enabled="false"   />
                                                <asp:Button ID="other_street_edit" runat="server" Text="Edit"  Height="30" Width="40"   AlternateText=" " OnClick="edit_Click" CommandArgument="other_street"  CommandName="manageWiki"   CausesValidation="True" />
                                                <asp:Button ID="other_street_save" runat="server" Text="Save" Height="30" Width="40" OnClick="save_Click" CommandArgument="other_street" CommandName="manageWiki" CausesValidation="true" Visible="false" Enabled="false" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Mailing City:
                                            </td>
                                            <td>
                                                <asp:TextBox ID="mailing_city" runat="server" Text='<%# Eval("mailing_city") %>' ReadOnly="true" Enabled="false"   />
                                                <asp:Button ID="mailing_city_edit" runat="server" Text="Edit"  Height="30" Width="40"   AlternateText=" " OnClick="edit_Click" CommandArgument="mailing_city"  CommandName="manageWiki"   CausesValidation="True" />
                                                <asp:Button ID="mailing_city_save" runat="server" Text="Save" Height="30" Width="40" OnClick="save_Click" CommandArgument="mailing_city" CommandName="manageWiki" CausesValidation="true" Visible="false" Enabled="false" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Other City:
                                            </td>
                                            <td>
                                                <asp:TextBox ID="other_city" runat="server" Text='<%# Eval("other_city") %>' ReadOnly="true" Enabled="false"   />
                                                <asp:Button ID="other_city_edit" runat="server" Text="Edit"  Height="30" Width="40"   AlternateText=" " OnClick="edit_Click" CommandArgument="other_city"  CommandName="manageWiki"   CausesValidation="True" />
                                                <asp:Button ID="other_city_save" runat="server" Text="Save" Height="30" Width="40" OnClick="save_Click" CommandArgument="other_city" CommandName="manageWiki" CausesValidation="true" Visible="false" Enabled="false" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Mailing State:
                                            </td>
                                            <td>
                                                <asp:TextBox ID="mailing_state" runat="server" Text='<%# Eval("mailing_state") %>' ReadOnly="true" Enabled="false"   />
                                                <asp:Button ID="mailing_state_edit" runat="server" Text="Edit"  Height="30" Width="40"   AlternateText=" " OnClick="edit_Click" CommandArgument="mailing_state"  CommandName="manageWiki"   CausesValidation="True" />
                                                <asp:Button ID="mailing_state_save" runat="server" Text="Save" Height="30" Width="40" OnClick="save_Click" CommandArgument="mailing_state" CommandName="manageWiki" CausesValidation="true" Visible="false" Enabled="false" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Other State:
                                            </td>
                                            <td>
                                                <asp:TextBox ID="other_state" runat="server" Text='<%# Eval("other_state") %>' ReadOnly="true" Enabled="false"   />
                                                <asp:Button ID="other_state_edit" runat="server" Text="Edit"  Height="30" Width="40"   AlternateText=" " OnClick="edit_Click" CommandArgument="other_state"  CommandName="manageWiki"   CausesValidation="True" />
                                                <asp:Button ID="other_state_save" runat="server" Text="Save" Height="30" Width="40" OnClick="save_Click" CommandArgument="other_state" CommandName="manageWiki" CausesValidation="true" Visible="false" Enabled="false" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Mailing Zip:
                                            </td>
                                            <td>
                                                <asp:TextBox ID="mailing_zip" runat="server" Text='<%# Eval("mailing_zip") %>' ReadOnly="true" Enabled="false"   />
                                                <asp:Button ID="mailing_zip_edit" runat="server" Text="Edit"  Height="30" Width="40"   AlternateText=" " OnClick="edit_Click" CommandArgument="mailing_zip"  CommandName="manageWiki"   CausesValidation="True" />
                                                <asp:Button ID="mailing_zip_save" runat="server" Text="Save" Height="30" Width="40" OnClick="save_Click" CommandArgument="mailing_zip" CommandName="manageWiki" CausesValidation="true" Visible="false" Enabled="false" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Other Zip:
                                            </td>
                                            <td>
                                                <asp:TextBox ID="other_zip" runat="server" Text='<%# Eval("other_zip") %>' ReadOnly="true" Enabled="false"   />
                                                <asp:Button ID="other_zip_edit" runat="server" Text="Edit"  Height="30" Width="40"   AlternateText=" " OnClick="edit_Click" CommandArgument="other_zip"  CommandName="manageWiki"   CausesValidation="True" />
                                                <asp:Button ID="other_zip_save" runat="server" Text="Save" Height="30" Width="40" OnClick="save_Click" CommandArgument="other_zip" CommandName="manageWiki" CausesValidation="true" Visible="false" Enabled="false" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Mailing Country:
                                            </td>
                                            <td>
                                                <asp:TextBox ID="mailing_country" runat="server" Text='<%# Eval("mailing_country") %>' ReadOnly="true" Enabled="false"   />
                                                <asp:Button ID="mailing_country_edit" runat="server" Text="Edit"  Height="30" Width="40"   AlternateText=" " OnClick="edit_Click" CommandArgument="mailing_country"  CommandName="manageWiki"   CausesValidation="True" />
                                                <asp:Button ID="mailing_country_save" runat="server" Text="Save" Height="30" Width="40" OnClick="save_Click" CommandArgument="mailing_country" CommandName="manageWiki" CausesValidation="true" Visible="false" Enabled="false" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Other Country:
                                            </td>
                                            <td>
                                                <asp:TextBox ID="other_country" runat="server" Text='<%# Eval("other_country") %>' ReadOnly="true" Enabled="false"   />
                                                <asp:Button ID="other_country_edit" runat="server" Text="Edit"  Height="30" Width="40"   AlternateText=" " OnClick="edit_Click" CommandArgument="other_country"  CommandName="manageWiki"   CausesValidation="True" />
                                                <asp:Button ID="other_country_save" runat="server" Text="Save" Height="30" Width="40" OnClick="save_Click" CommandArgument="other_country" CommandName="manageWiki" CausesValidation="true" Visible="false" Enabled="false" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Description:
                                            </td>
                                            <td>
                                                <asp:TextBox ID="description" runat="server" Text='<%# Eval("description") %>' ReadOnly="true" Enabled="false"   />
                                                <asp:Button ID="description_edit" runat="server" Text="Edit"  Height="30" Width="40"   AlternateText=" " OnClick="edit_Click" CommandArgument="description"  CommandName="manageWiki"   CausesValidation="True" />
                                                <asp:Button ID="description_save" runat="server" Text="Save" Height="30" Width="40" OnClick="save_Click" CommandArgument="description" CommandName="manageWiki" CausesValidation="true" Visible="false" Enabled="false" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Address:
                                            </td>
                                            <td>
                                                <asp:TextBox ID="address" runat="server" Text='<%# Eval("address") %>' ReadOnly="true" Enabled="false"   />
                                                <asp:Button ID="address_edit" runat="server" Text="Edit"  Height="30" Width="40"   AlternateText=" " OnClick="edit_Click" CommandArgument="address"  CommandName="manageWiki"   CausesValidation="True" />
                                                <asp:Button ID="address_save" runat="server" Text="Save" Height="30" Width="40" OnClick="save_Click" CommandArgument="address" CommandName="manageWiki" CausesValidation="true" Visible="false" Enabled="false" />
                                            </td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                            </asp:DataList>
                            


                            </div>
                        </td>
                </tr>
            </table>
        
    </form>
</body>
</html>
