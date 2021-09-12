﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Redirectpage.aspx.cs" Inherits="Default.WebForm2" EnableEventValidation="false"%>                  
<!DOCTYPE html>

<body>  
    <div style="background=line-height: 2em; padding: 5px 0px 6px; background:#213364; margin:0 auto; text-align:center; width:100%; color:white; font-size:15px; font-family: Helvetica, Arial, sans-serif;  font-weight:300;"><img src="https://acuityprocess.com/wp-content/uploads/2019/04/acuity-Process-Solutions-logo-white-original-1-resize.png" /></div>

    <form id="form2" runat="server">  
        <div >  
            <table style="width:100%;">  
                <caption class="style1"> 
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                    <strong>Projects</strong>  

                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </caption>  
                <tr>  
                    <td class="style2">  

                        <asp:TextBox ID="searchbar" Text="Search Query" runat="server"></asp:TextBox>
                        <asp:Button ID="searchbutton" Text="Search" runat="server" OnClick="searchbutton_Click" style="background:#213364; color:white; font-size:15px; font-family: Helvetica, Arial, sans-serif;  font-weight:300;" />
 </td>  
                    
                    <td> 
              
                        
                        


                            <asp:Button ID="newProjTrigger" Text="New Project" runat="server" OnClick="newProjbutt" style="background:#213364; color:white; font-size:15px; font-family: Helvetica, Arial, sans-serif;  font-weight:300;"/>
                            <asp:Button ID="submitButton" Text="Submit" runat="server" OnClick="subButt" Visible="false" Enabled="false" style="background:#213364; color:white; font-size:15px; font-family: Helvetica, Arial, sans-serif;  font-weight:300;"/>
                            <asp:TextBox ID="tb" Text="Project name" runat="server" Visible="false" Enabled="false"></asp:TextBox>
                            <asp:TextBox ID="tb2" Text="Project description" runat="server" Visible="false" Enabled="false"></asp:TextBox>

                            




                            <div style="width: 100%; height: 400px;">
                            
                            <asp:GridView ID="projects" PageSize="25" AllowPaging="True" AutoGenerateColumns="False" pagersettings-Mode = "Numeric" pagersettings-Position="TopAndBottom" AllowSorting="True" BorderWidth="0" AlternatingRowStyle-BackColor="White" HeaderStyle-BackColor="#213364" headerstyle-forecolor="White" font-size="17px" Runat="Server" EmptyDataText="No current projects" AutoGenerateDeleteButton="false" OnRowDeleting="OnRowDeleting" OnRowDataBound="OnRowDataBound" OnPageIndexChanging="projects_PageIndexChanging" > <PagerSettings Mode="NumericFirstLast" FirstPageText="First" LastPageText="Last" />
                                <Columns>
                                    <asp:TemplateField HeaderText="View"><ItemTemplate><a href='projdetails.aspx?id=<%#Eval("id")%>&name=<%#Eval("name")%>'>View</a></ItemTemplate></asp:TemplateField>
                                    <asp:TemplateField HeaderText="Delete">
                                        <ItemTemplate>
                                            <span onclick="return confirm('Are you sure to Delete the record?')">
                                                <asp:LinkButton ID="delete" runat="Server" Text="Delete" CommandName="Delete"></asp:LinkButton>
                                            </span>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="id" HeaderText="id" ><ItemStyle Wrap="true" /></asp:BoundField>
                                    <asp:BoundField DataField="name" HeaderText="name"><ItemStyle Wrap="true" /></asp:BoundField>
                                    <asp:BoundField DataField="description" HeaderText="description" ><ItemStyle Wrap="true" /></asp:BoundField>
                                    <asp:BoundField DataField="created_date" HeaderText="created date" ><ItemStyle Wrap="true" /></asp:BoundField>
                                </Columns>
                                
                            </asp:GridView>
                        
                        
                        
                            </div>
                        
                        
                        
                    </td> 
                    
                    <td>  
                         
                         
                    </td>  
                    <td>
 </td>  
                    <td>
 </td>  
                </tr>  
                <tr>  
                    
                    <td>  
</table>
            </div>
        </form>
    </body>