var React = require('react'),
    ConversationStore = require('../../stores/conversations_list_store'),
    conversationApiUtil = require('../../util/conversation_api_util'),
    ConversationActions = require('../../actions/conversation_actions'),
    ConversationListItem = require('./conversation_list_item');


var ConversationsList = React.createClass({
  getInitialState: function () {
    folder = this.props.params.foldername || "inbox";
    return {folder: folder, conversations: ConversationStore.all()};
  },

  componentDidMount: function () {
    this.conversationStoreListener = ConversationStore.addListener( function () {
      this.setState({conversations: ConversationStore.all()});
    }.bind(this));

    conversationApiUtil.fetchConversations();
  },

  componentWillUnmount: function () {
    this.conversationStoreListener.remove();
  },

  render: function () {
    theList = this.state.conversations.map(function (conversation) {
      return (
        <ConversationListItem key={conversation.id} conversation={conversation} />
      );
    });

    return (
      <section className="content conversations-list">
        {theList}
      </section>
    );
  }
});

module.exports = ConversationsList;
