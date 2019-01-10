<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="EjemploPageMethods.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script>
        function HandleIT() {
            var name = document.getElementById('<%=txtname.ClientID %>').value;
            var address = document.getElementById('<%=txtaddress.ClientID%>').value;

            PageMethods.ProcessIT(name, address, onSuccess, onError);

            function onSuccess(result) {
                alert(result);
            }

            function onError() {
                alert("Something wrong");
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
   <div>
        <p>Say bye-bey to Postbacks.</p>

        <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true"></asp:ScriptManager>

        <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
        <br />
        <asp:TextBox ID="txtaddress" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="btnCreateAccount" runat="server" Text="Signup" OnClientClick="HandleIT(); return false;" />
    </div>
    </form>
</body>
</html>
