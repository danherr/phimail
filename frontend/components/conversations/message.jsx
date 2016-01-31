var React = require('react'),
    MessageStore = require('../../stores/message_store'),
    messageApiUtil = require('../../util/message_api_util');


var Message = React.createClass({

  render: function () {
    var expandedClass,
        theBody = this.props.message.body;

    if (this.props.expanded) {
      if (this.props.message.body_is_full) {
          expandedClass = "expanded";
      } else {
        expandedClass = "expanding";
        messageApiUtil.fetchMessage(this.props.message.id);
      }
    } else {
      expandedClass = "contracted";
      theBody = theBody.substring(0,77);
    }

    return (
      <div
        className={"message-detail " + expandedClass}
        onClick={this.props.toggleExpanded}
        >
        <h10 className="message-source">
          {this.props.message.source_address}
        </h10>
        <h10 className="message-target">
          {this.props.message.target_address}
        </h10>
        <p className={"message-body"}>
          {theBody}
        </p>
      </div>
    );
  }
});

module.exports = Message;
