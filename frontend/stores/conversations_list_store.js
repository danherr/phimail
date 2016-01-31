var Dispatcher = require('../dispatcher/dispatcher'),
    Store = require('flux/utils').Store,
    ConversationConstants = require('../constants/conversation_constants'),
    _und = require('underscore');

var ConversationStore = new Store(Dispatcher);

var _conversations = {};
var _beenFetched = false;

ConversationStore.all = function (filter, ordering) {
  filter = filter || function () {return true;};
  ordering = ordering || function (con1, con2) {
    time1 = con1.message_timestamp.valueOf();
    time2 = con2.message_timestamp.valueOf();
    return time2 - time1;
  };

  return _und.values(_conversations).filter(filter).sort(ordering);
};

ConversationStore.beenFetched = function () {
  return _beenFetched;
};

ConversationStore.resetStore = function (conversationArray) {
  conversationArray = conversationArray || [];
  _conversations = conversationArray.reduce(function (_conv, conv) {
    _conv[conv.id] = conv;
    return _conv;
  }, {});
};

ConversationStore.__onDispatch = function (payload) {
  if (payload.actionType === ConversationConstants.receiveAll) {
    this.resetStore(payload.conversations);
    _beenFetched = true;
    this.__emitChange();
  } else if (payload.actionType === ConversationConstants.updateOne) {
    _conversations[payload.conversation.id] = payload.conversation;
    this.__emitChange();
  }
};

module.exports = ConversationStore;
