var Dispatcher = require('../dispatcher/dispatcher'),
    Store = require('flux/utils').Store,
    ConversationConstants = require('../constants/conversation_constants');

var ConversationStore = new Store(Dispatcher);

var _conversations = [];

ConversationStore.all = function () {
  return _conversations.slice();
};

ConversationStore.__onDispatch = function (payload) {
  if (payload.actionType === ConversationConstants.getAll) {
    _conversations = payload.conversations;
    this.__emitChange();
  }
};

module.exports = ConversationStore;
