var UserActions = require('../actions/user_actions'),
    ConversationActions = require('../actions/conversation_actions');

var userApiUtil = {
    fetchUser: function (callback) {
        $.ajax({
            type: 'GET',
            url: '/api/user',
            dataType: 'json',
            success: function (data) {
                UserActions.receiveUser(data);
                if (callback) callback();
            },
            error: function (object, error, messages) {
                UserActions.receiveUser({});
                if (callback) callback();
            }
        });
    },

    logIn: function (username, password, callback) {
        $.ajax({
            type: 'POST',
            url: '/api/session',
            dataType: 'json',
            data: {username: username, pass: password},
            success: function (data) {
                UserActions.receiveUser(data);
                if(callback) callback();
            },
            error: function (object, error, messages) {
            }
        });
    },

    logOut: function (callback) {
        $.ajax({
            type: 'DELETE',
            url: '/api/session',
            dataType: 'json',
            success: function (data) {
                ConversationActions.clearConversations();
                callback();
            },
            error: function (object, error, messages) {
            }
        });
    },

    checkUsername: function (username) {
        $.ajax({
            type: 'POST',
            url: '/api/session/find_user',
            dataType: 'json',
            data: {username: username},
            success: function (data) {
                UserActions.receiveUser(data);
            },
            error: function (object, error, messages) {
            }
        });
    },

    createUser: function (newUser, otherPass, callback) {
        $.ajax({
            type: 'POST',
            url: '/api/user',
            dataType: 'json',
            data: {user: newUser, other_pass: otherPass},
            success: function (data) {
                UserActions.receiveUser(data);
                if(callback) callback();
            },
            error: function (object, error, messages) {
                alert(messages);
            }
        });
    }
};

module.exports = userApiUtil;
