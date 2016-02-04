var React = require('react'),
    MessageStore = require('../../stores/message_store'),
    NewMessageWindow = require('./new_message_window'),
    messageApiUtil = require('../../util/message_api_util'),
    _und = require('underscore'),
    classNames = require('classnames');

var ComposeButton = React.createClass({
  getInitialState: function () {
    return {newMessageList: []};
  },

  createMessage: function () {

    messageApiUtil.createDraft(function (draft) {

      var messages = this.state.newMessageList;
      messages.push(<NewMessageWindow
        close={this.closeMessageWindow.bind(this, messages.length)}
        draft={draft}
        key={messages.length}
        />
      );

      this.setState( { newMessageList: messages } );
    }.bind(this));

  },

  closeMessageWindow: function (ind) {
    var messages = this.state.newMessageList;
    messages[ind] = "";
    this.setState( {newMessageList: messages});
  },

  render: function () {
    var newMessageWindows = this.state.newMessageList.filter(function (thing) {return thing !== "";}).reverse();
    var mWindow;

    for (var i = 3; i < newMessageWindows.length; i++) {
      mWindow = newMessageWindows[i];
      if (mWindow !== "") mWindow.props.className = "hideme";
    }

    return (
      <section className="new-messages-section">
        <div className="compose-button-area">
          <span onClick={this.createMessage} className="compose-button button">
            COMPOSE
          </span>
        </div>

        <div className="new-message-window-list">
          {newMessageWindows}
        </div>
      </section>
    );
  }
});

module.exports = ComposeButton;
