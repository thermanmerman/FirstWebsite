<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Default.WebForm1" %>

<!DOCTYPE html>

<body>  
    <div style="line-height: 2em; padding: 5px 0px 6px; background:#213364; margin:0 auto; text-align:center; width:100%; color:white; font-size:15px; font-family: Helvetica, Arial, sans-serif;  font-weight:300;"><img src="https://acuityprocess.com/wp-content/uploads/2019/04/acuity-Process-Solutions-logo-white-original-1-resize.png" /></div>
    <strong>Login Form</strong> 
    <form id="form1" runat="server">  
          
            <table style="width:100%;">  
  
                <tr>  
                    <td>  
Username:</td>  
                    <td>  
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>  
                    </td>  
                    <td>  
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"   
ControlToValidate="TextBox1" ErrorMessage="Please Enter Your Username"   
ForeColor="Red"></asp:RequiredFieldValidator>  
                    </td>  
                </tr>  
                <tr>  
                    <td>  
Password:</td>  
                    <td>  
                        <asp:TextBox ID="TextBox2" TextMode="Password" runat="server"></asp:TextBox>  
                    </td>  
                    <td>  
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"   
ControlToValidate="TextBox2" ErrorMessage="Please Enter Your password"   
ForeColor="Red"></asp:RequiredFieldValidator>  
                    </td>  
                </tr>  
                <tr>  
                    <td>  
 </td>  
                    <td>  
 </td>  
                    <td>  
 </td>  
                </tr>  
                <tr>  
                    <td>  
 </td>  
                    <td>  
                        <asp:Button ID="Button1" runat="server" Text="Log In" onclick="Button1_Click" style="background:#213364; color:white; font-size:15px; font-family: Helvetica, Arial, sans-serif;  font-weight:300;"/>  
                    </td>  
                    <td>  
                        <asp:Label ID="Label1" runat="server"></asp:Label>  
                    </td>  
                </tr>  
            </table>  
    </form>  
</body> 
