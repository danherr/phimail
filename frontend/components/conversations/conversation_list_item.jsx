var React = require('react'),
    ConversationStore = require('../../stores/conversation_store'),
    apiUtil = require('../../util/api_util');

var ConversationListItem = React.createClass({
  render: function () {
    return (
      <div class="conversation-list-item">
          <h3>
            {this.props.conversation.last_message.title}
          </h3>
          <p>
            {this.props.conversation.last_message.body}
          </p>
      </div>
    );
  }
});

module.exports = ConversationListItem;
