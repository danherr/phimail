var Dispatcher = require('../dispatcher/dispatcher'),
    FlashConstants = require('../constants/flash_constants');

var FlashActions = {
    newMessage: function (message) {
        Dispatcher.dispatch({
            actionType: FlashConstants.newMessage,
            message: message,
        })
    },

    clearFlash: function () {
        Dispatcher.dispatch({
            actionType: FlashConstants.newMessage,
            message: "",
        })
    },
}

module.exports = FlashActions;
