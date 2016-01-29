var Dispatcher = require('../dispatcher/dispatcher'),
    Store = require('flux/utils').Store,
    ConversationConstants = require('../constants/conversation_constants');

var ConversationStore = new Store(Dispatcher);

var _conversations = {};

ConversationStore.all = function () {
  var out = [];
  for (var id in _conversations) {
    out.push(_conversations[id]);
  }
  return out;
};

ConversationStore.selected = function () {
  return ConversationStore.all().filter( function (conversation) {
    return conversation.isSelected;
  });
};

ConversationStore.rewriteStore = function (conversationArray) {
  _conversations = {};
  conversationArray.forEach( function (conversation) {
    conversation.isSelected = false;
    _conversations[conversation.id] = conversation;
  });
};

ConversationStore.__onDispatch = function (payload) {
  if (payload.actionType === ConversationConstants.getAll) {
    this.rewriteStore(payload.conversations);
    this.__emitChange();
  } else if (payload.actionType === ConversationConstants.updateOne) {
    _conversations[payload.conversation.id] = payload.conversation;
    this.__emitChange();
  }
};

module.exports = ConversationStore;
