var React = require('react'),
    ConversationStore = require('../../stores/conversation_store'),
    SelectionStore = require('../../stores/selection_store'),
    UserStore = require('../../stores/user_store'),
    PopupStore = require('../../stores/popup_store'),
    ConversationActions = require('../../actions/conversation_actions'),
    conversationApiUtil = require('../../util/conversation_api_util');

var ConversationListItem = React.createClass({
  getInitialState: function () {
    return {isSelected: SelectionStore.isSelected(this.props.conversation.id)};
  },

  componentDidMount: function () {
    this.selectionStoreListener = SelectionStore.addListener( function () {
      this.setState({isSelected: SelectionStore.isSelected(this.props.conversation.id)});
    }.bind(this));
  },

  componentWillUnmount: function () {
    this.selectionStoreListener.remove();
  },

  toggleSelected: function (e) {
    ConversationActions.toggleSelected(this.props.conversation.id);
  },

  toggleStar: function (e) {
    conversation = this.props.conversation;
    conversation.starred = !conversation.starred;
    conversationApiUtil.updateConversation(conversation);
  },

  toggleImp: function (e) {
    conversation = this.props.conversation;
    conversation.important = !conversation.important;
    conversationApiUtil.updateConversation(conversation);
  },


  linkToDetail: function (e) {
    if (e.target.tagName !== "I") {
      if (this.props.conversation.received) {
        this.props.history.pushState({source: this.props.pathname}, "conversation/" + this.props.conversation.id);
      } else {
        var draft = {};
        draft.conversation_id = this.props.conversation.id;
        draft.id = this.props.conversation.last_message.id;
        draft.body = this.props.conversation.last_message.body;
        draft.title = this.props.conversation.title;
        draft.target_address = this.props.conversation.last_message.target_address;
        PopupStore.popupCB("popUpDraftWindow")(draft);
      }
    }
  },

  makeAddressList: function (addresses, num_messages) {
    addresses = addresses.map(function(address) {
      var arr = address.split('@');
      var name = arr[0];
      if (name == UserStore.currentUser().username) name = 'Me';
      return name;
    });

    if (addresses.join(", ").length > 25) {
      first = addresses[0];
      last = addresses.pop();
      addresses = [first, "...", last];
    }

    addresses = addresses.join(", ");

    if (num_messages > 1) {
      addresses = addresses + " (" + num_messages + ")";
    }

    return addresses;
  },

  render: function () {
    var addresses = this.makeAddressList(this.props.conversation.addresses, this.props.conversation.num_messages);

    var theClass = "conversation-list-item clearfix";

    if (this.state.isSelected) {
      theClass = theClass + " selected";
    }

    if (!this.props.conversation.read) {
      theClass = theClass + " unread";
    }

    timePair = this.props.shortenTime(this.props.conversation.message_timestamp);

    return (
      <div className={theClass} key={this.props.conversation.id} onClick={this.linkToDetail}>
          <i
            onClick={this.toggleSelected}
            className={"checker fa fa-" + (this.state.isSelected ? "check-square-o checked" : "square-o empty") }
            name="starred"
            />
        <i
          onClick={this.toggleStar}
          className={"starrer fa fa-" + (this.props.conversation.starred ? "star full" : "star-o empty") }
          name="starred"
          />
        <i
          onClick={this.toggleImp}
          className={"importer fa fa-" + (this.props.conversation.important ? "square full" : "square-o empty") }
          name="important"
          />
        <span className="addresses">
          {addresses}
        </span>
        <span className="title">
          {this.props.conversation.title}
        </span>
        <span className="body-preview">
          {this.props.conversation.body_preview}
        </span>
        <span className="timestamp" title={timePair[0]}>
          {timePair[1]}
        </span>
      </div>
    );
  }
});

module.exports = ConversationListItem;
