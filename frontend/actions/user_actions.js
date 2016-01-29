var Dispatcher = require('../dispatcher/dispatcher'),
    UserConstants = require('../constants/user_constants');

var UserActions = {
  receiveUser: function (user) {
    Dispatcher.dispatch({
      actionType: UserConstants.receiveCurrent,
      user: user
    });
  },

};

module.exports = UserActions;
