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

    var timePair = this.props.shortenTime(this.props.message.updated_at);

    return (
      <div className={"message-detail " + expandedClass} >
        <div className="message-detail-header"
          onClick={this.props.toggleExpanded}
          >

          <span className="timestamp" title={timePair[0]}>
            {timePair[1]}
          </span>

          <h10 className="message-source">
            {this.props.message.source_address}
          </h10>

          <h10 className="message-target">
            to {this.props.message.target_address}
          </h10>

          <p className={"message-detail-body header-body " + expandedClass}>
            {theBody}
          </p>

        </div>

        <p className={"message-detail-body message-body " + expandedClass}>
          {theBody}
        </p>

      </div>
    );
  }
});

module.exports = Message;
