var Dispatcher = require('../dispatcher/dispatcher'),
    Store = require('flux/utils').Store,
    UserConstants = require('../constants/user_constants');

var UserStore = new Store(Dispatcher);

var _user = {};
var _fetched = false;

UserStore.currentUser = function () {
  return $.extend({}, _user);
};

UserStore.beenFetched = function () {
  return _fetched;
};

UserStore.loggedIn = function () {
  return !!_user.id;
} ;

UserStore.rewriteStore = function (user) {
  _user = user;
  _fetched = true;
  this.__emitChange();
};

UserStore.__onDispatch = function (payload) {
  if (payload.actionType === UserConstants.receiveCurrent) {
    UserStore.rewriteStore(payload.user);
  }
};

module.exports = UserStore;
