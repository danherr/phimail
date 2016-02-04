var Dispatcher = require('../dispatcher/dispatcher'),
    Store = require('flux/utils').Store,
    PopupConstants = require('../constants/popup_constants');

_popupCallbacks = {};

var PopupStore = new Store(Dispatcher);

PopupStore.popupCB = function (name) {
  return _popupCallbacks[name];
};

PopupStore.__onDispatch = function (payload) {
  if (payload.actionType === PopupConstants.add) {
    _popupCallbacks[payload.name] = payload.callback;
    this.__emitChange();
  } else if (payload.actionType === PopupConstants.remove) {
      delete _popupCallbacks[payload.name];
      this.__emitChange();
  }
};

module.exports = PopupStore;
