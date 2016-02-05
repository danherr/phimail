var React = require('react'),
    MessageStore = require('../../stores/message_store'),
    messageApiUtil = require('../../util/message_api_util'),
    Reply = require('./reply');


var Message = React.createClass({
  componentWillReceiveProps: function (newProps) {
    if (this.props.message.sent !== newProps.message.sent) this.forceUpdate();
  },

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

    if (this.props.message.sent) {
      return (
        <div key={this.props.message.id} className={"message-detail " + expandedClass} >
          <div className="message-detail-header"
            onClick={this.props.toggleExpanded}
            >

            <button onClick={this.props.reply.bind(null, 'one')}>Reply</button>
            <button onClick={this.props.reply.bind(null, 'all')}>Reply All</button>

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
    } else {

      var draft = {
        target_address: this.props.message.target_address,
        body: this.props.message.body,
        conversation_id: this.props.conversationId,
        id: this.props.message.id,
      }

      return (
        <Reply
          draft={draft}
          key={this.props.message.id}
          />
      );
    }
  }
});

module.exports = Message;
