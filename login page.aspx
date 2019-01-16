<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="login page.aspx.cs" Inherits="buspass.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        .auto-style1 {
            width: 500px;
            height: 300px;
            border-style: solid;
            border-width: 0px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
    <%--<img src="bus.png" alt="white bus" width="100" height="100"> --%>
   
      
    <table align="center" class="auto-style1">
        <tr>
            <td colspan="2"><asp:Image ID="Image1" runat="server" ImageUrl="C:\Users\supritha.kulkarni\Pictures\bus.png" Height="189px" Width="486px" />&nbsp;</td>
            
        </tr>
        <tr>
            <td>  <asp:Label ID="Label1" runat="server" Text="UserId"></asp:Label> &nbsp;</td>
            <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>&nbsp;</td>
        </tr>
        <tr>
            <td><asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>&nbsp;</td>
            <td> <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>&nbsp;</td>
        </tr>
        <tr>
            <td> <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />&nbsp;</td>
            <td> <asp:Button ID="Button2" runat="server" Text="Reset" OnClick="Button2_Click" />&nbsp;</td>
        </tr>
    </table>
    
   
    <br />
    <asp:Label ID="lblmsg" runat="server"></asp:Label>
    
   
    <br />
   
 
     
</asp:Content>
