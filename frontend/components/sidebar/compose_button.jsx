var React = require('react'),
    MessageStore = require('../../stores/message_store'),
    NewMessageWindow = require('./new_message_window'),
    messageApiUtil = require('../../util/message_api_util'),
    popupActions = require('../../actions/popup_actions'),
    _und = require('underscore');

var ComposeButton = React.createClass({
  getInitialState: function () {
    return {newMessageList: []};
  },

  componentDidMount: function () {
    popupActions.addCallback("popUpDraftWindow", this.popUpDraftWindow);
  },

  componentWillUnmount: function () {
    popupActions.removeCallback("popUpDraftWindow");
  },

  createMessage: function () {
    messageApiUtil.createDraft(this.popUpDraftWindow);
  },

  popUpDraftWindow: function (draft) {

    var messages = this.state.newMessageList;
    messages.push(<NewMessageWindow
      close={this.closeMessageWindow.bind(this, messages.length)}
      draft={draft}
      key={messages.length}
      closable={true}
      />
    );

    this.setState( { newMessageList: messages } );
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
