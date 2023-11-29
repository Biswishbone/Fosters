<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Fosters Interface.aspx.vb" Inherits="WebApplication1.Fosters_Interface" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 321px;
        }
        .auto-style3 {
            margin-left: 320px;
        }
        .auto-style4 {
            width: 321px;
            height: 26px;
        }
        .auto-style5 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style3">
            <asp:Image ID="Image1" runat="server" Height="61px" Width="91px" />
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">FosterID </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="285px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">First Name </td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox2" runat="server" Width="279px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Last Name </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Width="278px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Email</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" Width="284px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Address</td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" Width="277px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Phone Number </td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server" Width="273px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Last Intake Date </td>
                <td>
                    <asp:TextBox ID="TextBox7" runat="server" Width="277px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Current Pets</td>
                <td>
                    <asp:TextBox ID="TextBox8" runat="server" Width="275px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Children</td>
                <td>
                    <asp:TextBox ID="TextBox9" runat="server" Width="273px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Fence</td>
                <td>
                    <asp:TextBox ID="TextBox10" runat="server" Width="310px"></asp:TextBox>
                </td>
            </tr>
        </table>
&nbsp;&nbsp;&nbsp;
        <div class="auto-style3">
            <asp:Button ID="Button1" runat="server" Text="Enter" />
        </div>
    </form>
</body>
</html>
