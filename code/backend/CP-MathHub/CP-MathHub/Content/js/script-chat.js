﻿/**
 * Author: HaiNNT
 * Created Date: 2015-07-30
 * Description: This script file store script for realtime chat system.
 */

$(function () {
    // Reference the auto-generated proxy for the hub.
    var chat = $.connection.chatHub;
    // Create a function that the hub can call back to display messages.
    chat.client.addChatMessage = function (name, message) {
        // Add the message to the page.
        $('#discussion').append('<li><strong>' + htmlEncode(name)
            + '</strong>: ' + htmlEncode(message) + '</li>');
    };
    // Show online users
    chat.client.showOnlineUser = function (json, count) {
        // Add the message to the page.
        $('#count').html(count);
        console.log(json);
    };
    // Get the user name and store it to prepend to messages.
    $('#displayname').val(prompt('Enter your name:', ''));
    // Set initial focus to message input box.
    $('#message').focus();
    // Start the connection.
    $.connection.hub.start().done(function () {
        chat.server.joinConversation($('#displayname').val());
        $('#sendmessage').click(function () {
            // Call the Send method on the hub.
            chat.server.sendToConversation($('#message').val(), $('#displayname').val());
            // Clear text box and reset focus for next comment.
            $('#message').val('').focus();
        });
    });
});
// This optional function html-encodes messages for display in the page.
function htmlEncode(value) {
    var encodedValue = $('<div />').text(value).html();
    return encodedValue;
}