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
      error: function (object, error, messages) {
        UserActions.receiveUser({});
        if (callback) callback();
        alert(messages);
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
        alert(messages);
      }
    });
  },

  logOut: function (callback) {
    $.ajax({
      type: 'DELETE',
      url: '/api/session',
      dataType: 'json',
      success: function (data) {
        callback();
      },
      error: function (object, error, messages) {
        alert(messages);
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
        alert(messages);
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
      error: function (object, error, messages) {
        alert(messages);
      }
    });
  }
};

module.exports = userApiUtil;
