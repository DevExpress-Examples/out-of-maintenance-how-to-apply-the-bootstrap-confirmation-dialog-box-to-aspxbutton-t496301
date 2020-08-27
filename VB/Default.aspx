<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v16.2, Version=16.2.17.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript" src="jquery-3.2.0.min.js"></script>
    <link type="text/css" href="Scripts/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Optional theme -->
    <link type="text/css" href="Scripts/bootstrap-3.3.7-dist/css/bootstrap-theme.min.css" rel="stylesheet" />
    <!-- Latest compiled and minified JavaScript -->
    <script type="text/javascript" src="Scripts/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <script src="Scripts/bootstrap-confirmation.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="col-md-12 col-lg-10 col-lg-offset-1">
                <br />
                <br />
                <br />
                <br />
                <br />
                <a id="btWrapper" data-toggle="confirmationButton">
                    <dx:ASPxButton ID="btConfirmation" runat="server" Text="PostBack" AutoPostBack="false">
                        <ClientSideEvents Click="function(s, e){ $('#btWrapper').confirmation('show'); }" />
                    </dx:ASPxButton>
                </a>
                <dx:ASPxButton ID="btAction" runat="server" Text="ASPxButton" ClientInstanceName="btAction" ClientVisible="false" OnClick="btAction_Click">
                </dx:ASPxButton>

                <a id="btWrapper2" data-toggle="confirmationButton2">
                    <dx:ASPxButton ID="ASPxButton1" runat="server" Text="Alert" AutoPostBack="false">
                        <ClientSideEvents Click="function(s, e){ $('#btWrapper2').confirmation('show'); }" />
                    </dx:ASPxButton>
                </a>
                <dx:ASPxButton ID="ASPxButton2" runat="server" Text="ASPxButton" ClientInstanceName="btAction2" ClientVisible="false" AutoPostBack="false">
                    <ClientSideEvents Click="function(s, e){ alert('OK'); }" />
                </dx:ASPxButton>
                <script type="text/javascript">
                    $('[data-toggle=confirmationButton]').confirmation({
                        rootSelector: '[data-toggle=confirmation]',
                        container: 'body',
                        onConfirm: function () { btAction.DoClick(); }
                    });

                    $('[data-toggle=confirmationButton2]').confirmation({
                        rootSelector: '[data-toggle=confirmation]',
                        container: 'body',
                        onConfirm: function () { btAction2.DoClick(); }
                    });
                </script>
                <br />
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>