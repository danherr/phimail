var Dispatcher = require('../dispatcher/dispatcher'),
    Store = require('flux/utils').Store,
    FlashConstants = require('../constants/flash_constants');

var FlashStore = new Store(Dispatcher);

var _message = "";

FlashStore.message = function () {
    return _message;
};

FlashStore.rewriteStore = function (message) {
    _message = message;
};

FlashStore.__onDispatch = function (payload) {

    if (payload.actionType === FlashConstants.newMessage) {
        this.rewriteStore(payload.message);
        this.__emitChange();
    }
};

module.exports = FlashStore;
