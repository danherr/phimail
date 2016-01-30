var Dispatcher = require('../dispatcher/dispatcher'),
    Store = require('flux/utils').Store,
    ConversationConstants = require('../constants/conversation_constants');

var ConversationStore = new Store(Dispatcher);

var _conversations = {};
var _beenFetched = false;

ConversationStore.all = function () {
  var out = [];
  for (var id in _conversations) {
    out.push(_conversations[id]);
  }
  return out;
};

ConversationStore.beenFetched = function () {
  return _beenFetched;
};

ConversationStore.selected = function () {
  return ConversationStore.all().filter( function (conversation) {
    return conversation.isSelected;
  });
};

ConversationStore.addToStore = function (conversationArray) {
  newConversations = {};
  conversationArray.forEach( function (conversation) {
    newConversations[conversation.id] = $.extend(_conversations[conversation.id], conversation);
  });

  _conversations = newConversations;
};

ConversationStore.__onDispatch = function (payload) {
  if (payload.actionType === ConversationConstants.getAll) {
    this.addToStore(payload.conversations);
    _beenFetched = true;
    this.__emitChange();
  } else if (payload.actionType === ConversationConstants.updateOne) {
    _conversations[payload.conversation.id] = payload.conversation;
    this.__emitChange();
  }
};

module.exports = ConversationStore;
