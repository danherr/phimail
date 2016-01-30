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
  out = out.sort(function (con1, con2) {
    num1 = con1.message_timestamp.valueOf();
    num2 = con2.message_timestamp.valueOf();
    if (num1 < num2) {
      return 1;
    } else if (num1 > num2) {
      return -1;
    } else return 0;
  });

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
    newConversations[conversation.id].message_timestamp = new Date(conversation.message_timestamp);
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
