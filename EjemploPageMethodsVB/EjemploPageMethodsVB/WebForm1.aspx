<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm1.aspx.vb" Inherits="EjemploPageMethodsVB.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script>
        function ShowCurrentTime() {
            PageMethods.GetCurrentTime(document.getElementById("<%=txtUserName.ClientID%>").value, OnSuccess);
        }

        function OnSuccess(response, userContext, methodName) {
            alert(response);
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true">
        </asp:ScriptManager>
        <div>
            Your Name :
            <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
            <input id="btnGetTime" type="button" value="Show Current Time" onclick="ShowCurrentTime()" />
        </div>
    </form>
</body>
</html>
