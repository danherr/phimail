var Dispatcher = require('../dispatcher/dispatcher'),
    Store = require('flux/utils').Store,
    MessageConstants = require('../constants/message_constants');
    _und = require('underscore');

var _drafts = {};

var DraftStore = new Store(Dispatcher);

DraftStore.all = function () {
  return _und.values(_drafts);
};

DraftStore.one = function (id) {
  return _drafts[id];
};

DraftStore.receiveMany = function (drafts) {
  drafts.forEach(this.addOneToOrRemoveOneFromStore);
};

DraftStore.addOneToOrRemoveOneFromStore = function (draft) {
  if (draft.sent) {
    _drafts[draft.id] = undefined;
  } else {
    _drafts[draft.id] = draft;
  }
};

DraftStore.__onDispatch = function (payload) {

  if (payload.actionType === MessageConstants.receiveDrafts) {
    this.receiveMany(payload.drafts);
    this.__emitChange();
  } else if (payload.actionType === MessageConstants.oneDraft) {
    this.addOneToOrRemoveOneFromStore(payload.draft);
    if (payload.callback) payload.callback(payload.draft);
    this.__emitChange();
  }
};


module.exports = DraftStore;
