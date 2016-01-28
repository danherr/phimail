var React = require('react'),
    ConversationStore = require('../../stores/conversation_store'),
    apiUtil = require('../../util/api_util');


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
