function alertFull(message)
{
    $("#alert_text").text(message);
    $("#alert_panel").css('display', 'block');
}

function showConfirmPanel(messageText,yesButtonText, noButtonText, yesFunc)
{
    $("#confirm_text").text(messageText);
    $("#confirm_yes").attr("value", yesButtonText);
    $("#confirm_no").attr("value", noButtonText);          

    $("#confirm_panel").css("display", "block");
    $("#confirm_yes").focus();
    $("#confirm_yes").click(function()
    {
        $("#confirm_yes").unbind( "click" );
        $("#confirm_no").unbind( "click" );
        $("#confirm_panel").css("display", "none");
        yesFunc();                
    });

    $("#confirm_no").click(function()
    {
        $("#confirm_yes").unbind("click");
        $("#confirm_no").unbind("click");
        $("#confirm_panel").css("display", "none");          
    });
}

