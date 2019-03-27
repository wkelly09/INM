<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="INM2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">    
    <link rel="stylesheet" href="Estilo1.css" media="all" />
    <title></title>
</head>
<body>
         <div id="login">
        <div class="container">
            <div id="login-row" class="row justify-content-center align-items-center">
                <div id="login-column" class="col-md-6">
                    <div id="login-box" class="col-md-12">
                        <form id="login" runat="server">
                            <h3 class="text-center text-info">Login</h3>
                            <div class="form-group">
                                <label for="username" class="text-info">Username:</label><br>
                               <asp:TextBox ID="txtusername" runat="server" class="form-control"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="password" class="text-info">Password:</label><br>
                                <asp:TextBox ID="txtpassword" runat="server" class="form-control"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <input type="submit" name="submit" class="btn btn-info btn-md" value="submit">
                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
                                
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:INMConnectionString %>" SelectCommand="SELECT * FROM [Usuario] WHERE (([nombre_usuario] = @nombre_usuario) AND ([password_usuario] = @password_usuario))">
             <SelectParameters>
                 <asp:ControlParameter ControlID="txtusername" Name="nombre_usuario" PropertyName="Text" Type="String" />
                 <asp:ControlParameter ControlID="txtpassword" Name="password_usuario" PropertyName="Text" Type="String" />
             </SelectParameters>
         </asp:SqlDataSource>
</body>
</html>
