var React = require('react'),
    ConversationStore = require('../../stores/conversation_store'),
    apiUtil = require('../../util/api_util'),
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

    apiUtil.fetchConversations();
  },

  componentWillUnmount: function () {
    this.conversationStoreListener.remove();
  },

  render: function () {
    theList = this.state.conversations.map(function (conversation) {
      return (
        <ConversationListItem conversation={conversation} />
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
