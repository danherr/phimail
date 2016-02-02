var React = require('react'),
    ConversationStore = require('../../stores/conversation_store'),
    SelectionStore = require('../../stores/selection_store'),
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
    if (e.target.type !== "checkbox" && e.target.tagName !== "I") this.props.history.pushState({}, "conversation/" + this.props.conversation.id);
  },

  render: function () {

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
            className={"starrer fa fa-" + (this.state.isSelected ? "check-square-o checked" : "square-o empty") }
            name="starred"
            />
        <i
          onClick={this.toggleStar}
          className={"starrer fa fa-" + (this.props.conversation.starred ? "star full" : "star-o empty") }
          name="starred"
          />
        <i
          onClick={this.toggleImp}
          className={"starrer fa fa-" + (this.props.conversation.important ? "square full" : "square-o empty") }
          name="important"
          />
        <span className="addresses">
          {this.props.conversation.address}
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
