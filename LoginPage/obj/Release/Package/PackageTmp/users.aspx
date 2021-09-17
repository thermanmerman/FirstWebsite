<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="users.aspx.cs" Inherits="LoginPage.users" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<body>
    
    
    
    <form id="form1" runat="server">
        <table>

            <tr>
                <td>
                    <asp:GridView ID="grCustomers" PageSize="25" OnRowDataBound="OnRowDataBound" OnPageIndexChanging="grCustomers_PageIndexChanging" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="project_id" PagerSettings-Mode="Numeric" PagerSettings-Position="TopAndBottom" AllowSorting="True" AlternatingRowStyle-BackColor="White" HeaderStyle-BackColor="#eac117" Font-Size="16px" runat="Server" EmptyDataText="There are no current clients in this project" OnRowDeleting="grCustomers_RowDeleting" CellPadding="4" ForeColor="#333333" GridLines="None">
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />

                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"></HeaderStyle>

                        <PagerSettings FirstPageText="First" LastPageText="Last" />
                        <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>
                        <Columns>
                            <asp:TemplateField HeaderText="View">
                                <ItemTemplate><a href='projdetails.aspx?id=<%#Eval("contact_id")%>'>View</a></ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Remove">
                                <ItemTemplate>
                                    <span onclick="return confirm('Are you sure to Delete the record?')">
                                        <asp:LinkButton ID="delete" runat="Server" Text="Remove" CommandName="Delete"></asp:LinkButton>
                                    </span>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="contact_id" HeaderText="Contact ID">
                            </asp:BoundField>
                            <asp:BoundField DataField="first_name" HeaderText="First Name">
                            </asp:BoundField>
                            <asp:BoundField DataField="last_name" HeaderText="Last Name">
                            </asp:BoundField>
                            <asp:BoundField DataField="account_name" HeaderText="Account Name">
                            </asp:BoundField>
                            <asp:BoundField DataField="email" HeaderText="Email">
                            </asp:BoundField>
                            <asp:BoundField DataField="title" HeaderText="Title">
                            </asp:BoundField>
                            <asp:BoundField DataField="department" HeaderText="Department">
                            </asp:BoundField>
                            <asp:BoundField DataField="phone" HeaderText="Phone">
                            </asp:BoundField>
                            <asp:BoundField DataField="address" HeaderText="Address">
                            </asp:BoundField>

                        </Columns>

                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />

                    </asp:GridView>
                    <br />


                    <asp:Button ID="add" Visible="true" Enabled="true" Text="Add/Search" runat="server" OnClick="add_Click" Style="background: #213364; color: white; font-size: 15px; font-family: Helvetica, Arial, sans-serif; font-weight: 300;" />
                    <asp:Button ID="submit" Text="Submit" runat="server" OnClick="submit_Click" Visible="false" Enabled="false" Style="background: #213364; color: white; font-size: 15px; font-family: Helvetica, Arial, sans-serif; font-weight: 300;" />
                    <asp:TextBox ID="first_name" Width="80" Text="First name" runat="server" Visible="false" Enabled="false"></asp:TextBox>
                    <asp:TextBox ID="last_name" Width="80" Text="Last name" runat="server" Visible="false" Enabled="false"></asp:TextBox>
                    <asp:TextBox ID="account_name" Width="80" Text="Account name" runat="server" Visible="false" Enabled="false"></asp:TextBox>
                    <asp:TextBox ID="email" Width="80" Text="Email" runat="server" Visible="false" Enabled="false"></asp:TextBox>
                    <asp:TextBox ID="title" Width="80" Text="Title" runat="server" Visible="false" Enabled="false"></asp:TextBox>
                    <asp:TextBox ID="department" Width="80" Text="Department" runat="server" Visible="false" Enabled="false"></asp:TextBox>
                    <asp:TextBox ID="phone" Width="80" Text="Phone" runat="server" Visible="false" Enabled="false"></asp:TextBox>
                    <asp:TextBox ID="address" Width="80" Text="Address" runat="server" Visible="false" Enabled="false"></asp:TextBox>

                </td>
               <td>
                     
                    <asp:DataList ID="projList" runat="server" CellPadding="4" ForeColor="#333333">
                        
                        <AlternatingItemStyle BackColor="White" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <ItemStyle BackColor="#EFF3FB" />
                        <ItemTemplate>
                            <tr>
                                <th colspan="2"></th>
                            </tr>
                            <tr>
                                <td>Project name:
                                </td>
                                <td>
                                    <asp:TextBox ID="proj_name" runat="server" Text='<%# Eval("name") %>' ReadOnly="true" Enabled="false" />
                                </td>
                            </tr>
                            <tr>
                                <td>Description:
                                </td>
                                <td>
                                    <asp:TextBox ID="proj_desc" runat="server" Text='<%# Eval("description") %>' ReadOnly="true" Enabled="false" />
                                </td>
                            </tr>
                            <tr>
                                <td>Other Notes:
                                </td>
                                <td>
                                    <asp:TextBox ID="notes" TextMode="MultiLine" runat="server" Text='<%# Eval("note") %>' Height="300" Width="100" ReadOnly="true" Enabled="false" />
                                    <asp:Button ID="projSave" runat="server" Text="Save" Visible="false" Enabled="false" Height="30" Width="40" OnClick="projSave_Click" Style="background: #213364; color: white; font-size: 15px; font-family: Helvetica, Arial, sans-serif; font-weight: 300;" />
                                    <asp:Button ID="projEdit" runat="server" Text="Edit" Height="30" Width="40" OnClick="projEdit_Click" Style="background: #213364; color: white; font-size: 15px; font-family: Helvetica, Arial, sans-serif; font-weight: 300;" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    
                                </td>
                            </tr>
                        </ItemTemplate>
                        <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    </asp:DataList>
            
                   </td> 
                
            </tr>

                </table>

            </form>
     </body>   
</html>
