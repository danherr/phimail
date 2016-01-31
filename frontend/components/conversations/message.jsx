var React = require('react'),
    MessageStore = require('../../stores/message_store'),
    messageApiUtil = require('../../util/message_api_util');


var Message = React.createClass({
  render: function () {
    return (
      <p className={"message-detail " + (this.props.expanded ? "expanded" : "contracted")}>
        {this.props.message.body}
      </p>
    );
  }
});

module.exports = Message;
