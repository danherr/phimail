var React = require('react'),
    ConversationStore = require('../../stores/conversations_list_store'),
    ConversationActions = require('../../actions/conversation_actions');
    conversationApiUtil = require('../../util/conversation_api_util');

var ConversationListItem = React.createClass({
  getInitialState: function () {
    return {};
  },

  shortenTime: function () {
    var timestamp = new Date(this.props.conversation.message_timestamp),
        time =  timestamp.toLocaleTimeString(),
        oldDate = timestamp.toLocaleDateString(),
        newDate = timestamp.toDateString().split(" ").splice(1,2).join(" "),
        fullTime = timestamp.toDateString() + " at " + time,
        now = new Date(),
        thing;

    if (now.getYear() !== timestamp.getYear()) {
      thing = oldDate;
    } else if (now.getMonth() !== timestamp.getMonth() && now.getDate() !== timestamp.getDate()) {
      thing = newDate;
    } else {
      thing = time;
    }

    return([fullTime, thing]);
  },

  toggleSelected: function (e) {
    conversation = this.props.conversation;
    conversation.isSelected = e.currentTarget.checked;
    ConversationActions.updateConversation(conversation);
  },

  toggleProp: function (e) {
    conversation = this.props.conversation;
    key = e.currentTarget.name;
    conversation[key] = e.currentTarget.checked;
    conversationApiUtil.updateConversation(conversation);
  },

  linkToDetail: function (e) {
    if (e.target.type !== "checkbox") this.props.history.pushState({}, "conversation/" + this.props.conversation.id);
  },

  render: function () {
    var foo = ConversationStore.selected();

    var theClass = "conversation-list-item clearfix";

    if (this.props.conversation.isSelected) {
      theClass = theClass + " selected";
    }

    if (this.props.conversation.unread) {
      theClass = theClass + " unread";
    }

    timePair = this.shortenTime();

    return (
      <div className={theClass} key={this.props.conversation.id} onClick={this.linkToDetail}>
        <input
          onChange={this.toggleSelected}
          type="checkbox"
          className="selector"
          checked={this.props.conversation.isSelected}/>
        <input
          onChange={this.toggleProp}
          type="checkbox"
          className="starrer"
          name="starred"
          checked={this.props.conversation.starred}/>
        <input
          onChange={this.toggleProp}
          type="checkbox"
          className="important"
          name="important"
          checked={this.props.conversation.important}/>
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
