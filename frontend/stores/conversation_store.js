var Dispatcher = require('../dispatcher/dispatcher'),
    Store = require('flux/utils').Store,
    ConversationConstants = require('../constants/conversation_constants'),
    _und = require('underscore');

var ConversationStore = new Store(Dispatcher);

var _conversations = [],
    _beenFetched = false,
    _min = 0,
    _max = 0,
    _total = 0;

var ordering = function (con1, con2) {
  var time1 = new Date(con1.message_timestamp);
  var time2 = new Date(con2.message_timestamp);
  var diff = time2.valueOf() - time1.valueOf();
  return diff;
};

ConversationStore.all = function (filter) {
  filter = filter || function () {return true;};

  return _conversations.slice(0).filter(filter);
};

ConversationStore.find = function (id) {
  return _conversations.find(function (conversation) {
    return conversation.id == id;
  });
};

ConversationStore.findRelative = function (id, offset) {
  idx = _conversations.findIndex(function (conversation) {
    return conversation.id == id;
  });
  if (idx === -1) {
    return undefined;
  } else {
    return _conversations[idx + offset];
  }
};

ConversationStore.beenFetched = function () {
  return _beenFetched;
};

ConversationStore.pageData = function () {
  return {min: _min, max: _max, total: _total};
};

ConversationStore.resetStore = function (conversationPacket) {

  if (conversationPacket) {
    _conversations = conversationPacket.conversations.sort(ordering);
    _max = conversationPacket.max;
    _min = conversationPacket.min;
    _total = conversationPacket.total;
  } else {
    _conversations = [];
  }
  _conversations.forEach(function (conv, index) {
    conv.index = index;
  });

};

ConversationStore.updateCoversation = function (conversation) {
  if (_conversations[conversation.index]) {
    _conversations[conversation.index] = conversation;
  } else {
    _conversations.push(conversation);
    _conversations = _conversations.sort(ordering);
  }
};

ConversationStore.__onDispatch = function (payload) {
  if (payload.actionType === ConversationConstants.receiveAll) {
    this.resetStore(payload.conversationPacket);
    _beenFetched = true;
    this.__emitChange();
  } else if (payload.actionType === ConversationConstants.updateOne) {
    this.updateCoversation(payload.conversation);
    this.__emitChange();
  }
};

module.exports = ConversationStore;
