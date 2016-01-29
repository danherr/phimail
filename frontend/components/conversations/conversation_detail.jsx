var React = require('react'),
    ConversationStore = require('../../stores/conversations_list_store'),
    conversationApiUtil = require('../../util/conversation_api_util');


var ConversationDetail = React.createClass({
  render: function () {
    return (
      <section className="content conversation-detail">
        Conversation Detail View
      </section>
    );
  }
});

module.exports = ConversationDetail;
