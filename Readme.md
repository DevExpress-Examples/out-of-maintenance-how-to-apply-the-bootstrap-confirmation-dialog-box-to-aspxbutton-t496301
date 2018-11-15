<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/Default.aspx) (VB: [Default.aspx.vb](./VB/Default.aspx.vb))
* [Default.aspx.cs](./CS/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/Default.aspx.vb))
<!-- default file list end -->
# How to apply the Bootstrap Confirmation dialog box to ASPxButton


This example illustrates how to apply the <a href="http://bootstrap-confirmation.js.org/">Bootstrap Confirmation</a> dialog to ASPxButton. <br><br>Since this dialog can be applied only to the <em>button</em> and <em>a</em> tags, while our ASPxButton generates the <em>input</em> tag inside, this confirmation dialog cannot be applied to the button directly. As a workaround, wrap ASPxButton with the <em>a</em> tag and show the confirmation dialog on a button click. In this case, the action should be performed by another (hidden) button: <br>


```aspx
<a id="btWrapper" data-toggle="confirmationButton">
    <dx:ASPxButton ID="btConfirmation" runat="server" Text="ASPxButton" AutoPostBack="false">
        <ClientSideEvents Click="function(s, e){ $('#btWrapper').confirmation('show'); }" />
    </dx:ASPxButton>
</a>
<dx:ASPxButton ID="btAction" runat="server" Text="ASPxButton" ClientInstanceName="btAction" ClientVisible="false" OnClick="btAction_Click">
</dx:ASPxButton>
<script type="text/javascript">
    $('[data-toggle=confirmationButton]').confirmation({
        rootSelector: '[data-toggle=confirmation]',
        container: 'body',
        onConfirm: function () { btAction.DoClick(); }
    });
</script>
```



<br/>


