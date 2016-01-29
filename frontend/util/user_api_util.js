var UserActions = require('../actions/user_actions');

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
      error: function (data) {
        UserActions.receiveUser({});
        debugger;
        if (callback) callback();
      }
    });
  },

  logIn: function (username, password) {
    $.ajax({
      type: 'POST',
      url: '/api/session',
      dataType: 'json',
      data: credentials,
      success: function (data) {
        UserActions.receiveUser(data);
      },
      error: function (data) {
        debugger;
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
      error: function (data) {
        debugger;
      }
    });
  },

  createUser: function (new_user) {
    $.ajax({
      type: 'POST',
      url: '/api/user',
      dataType: 'json',
      data: {user: new_user},
      success: function (data) {
        UserActions.receiveUser(data);
      },
      error: function (data) {
        debugger;
      }
    });
  }
};

module.exports = userApiUtil;
