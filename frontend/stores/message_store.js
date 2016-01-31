var Dispatcher = require('../dispatcher/dispatcher'),
    Store = require('flux/utils').Store,
    MessageConstants = require('../constants/message_constants');

var MessageStore = new Store(Dispatcher);

var _conversation = {};

MessageStore.all = function () {
  return $.extend({}, _conversation);
};

MessageStore.rewriteStore = function (conversation) {
  _conversation = conversation;
};

MessageStore.__onDispatch = function (payload) {
  if (payload.actionType === MessageConstants.receiveAll) {
    this.rewriteStore(payload.conversation);
    this.__emitChange();
  }
};

module.exports = MessageStore;
