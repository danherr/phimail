var Dispatcher = require('../dispatcher/dispatcher'),
    PopupConstants = require('../constants/popup_constants');

var PopupActions = {
  addCallback: function (name, callback) {
    Dispatcher.dispatch({
      actionType: PopupConstants.add,
      name: name,
      callback: callback
    });
  },

  removeCallback: function (name) {
    Dispatcher.dispatch({
      actionType: PopupConstants.remove,
      name: name
    });
  },

};

module.exports = PopupActions;
