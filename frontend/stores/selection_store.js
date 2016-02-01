var Dispatcher = require('../dispatcher/dispatcher'),
    Store = require('flux/utils').Store,
    ConversationStore = require('./conversation_store'),
    ConversationConstants = require('../constants/conversation_constants');

var SelectionStore = new Store(Dispatcher);

var _selections = {};

SelectionStore.isSelected = function (id) {
  return _selections[id];
};

SelectionStore.select = function (criterionCB) {
  ConversationStore.all(criterionCB).forEach(function (conversation) {
    _selections[conversation.id] = true;
  });
  if (criterionCB) {
    var antiCriterionCB = function (thing) {return !criterionCB(thing);};
    ConversationStore.all(antiCriterionCB).forEach(function (conversation) {
      _selections[conversation.id] = false;
    });
  }
};

SelectionStore.__onDispatch = function (payload) {
  if (payload.actionType === ConversationConstants.toggleSelected) {
    _selections[payload.id] = !_selections[payload.id];
    this.__emitChange();
  } else if (payload.actionType === ConversationConstants.selectThese) {
    this.select(payload.criterionCB);
    this.__emitChange();
  }
};

module.exports = SelectionStore;
