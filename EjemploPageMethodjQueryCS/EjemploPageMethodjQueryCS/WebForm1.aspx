<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="EjemploPageMethodjQueryCS.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js" type="text/javascript"></script>
    <script>
        function ShowCurrentTime() {
            $.ajax({
                type: "POST",
                url: "WebForm1.aspx/GetCurrentTime",                
                 data: '{name: "' + $("#<%=txtUserName.ClientID%>")[0].value + '" }',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: onSuccess,
                failure: function (response) {
                    alert(response.d);
                }
            });
        }

        function onSuccess(response) {
            alert(response.d);
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Your Name :
            <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
            <input id="btnGetTime" type="button" value="Show Current Time"
                onclick="ShowCurrentTime()" />
        </div>
    </form>
</body>
</html>
