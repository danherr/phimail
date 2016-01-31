var React = require('react'),
    MessageStore = require('../../stores/message_store'),
    messageApiUtil = require('../../util/message_api_util'),
    Message = require('./message'),
    _und = require('underscore');


var ConversationDetail = React.createClass({

  getInitialState: function () {
    var conversation = MessageStore.all();

    if (conversation.id === this.props.params.conversation_id) {
      return {conversation: conversation, expanded: this.generateInitialExpanded(conversation.messages), fetched: true};
    } else {
      return {conversation: {messages: [], expanded: {},  fetched: false}};
    }
  },

  generateInitialExpanded: function (messageArr) {
    var expandedHash = {};
    messageArr.forEach(function (message) {
      expandedHash[message.id] = false;
    });
    expandedHash[_und.last(messageArr).id] = true;
    return expandedHash;
  },

  componentDidMount: function () {
    this.messageStoreListener = MessageStore.addListener( function () {
      var nuState = {conversation: MessageStore.all()};

      if (!this.state.fetched) {
        nuState.fetched = true;
        nuState.expanded = this.generateInitialExpanded(nuState.conversation.messages);
      }

      this.setState(nuState);
    }.bind(this));

    messageApiUtil.fetchConversation(this.props.params.conversation_id);
  },

  componentWillUnmount: function () {
    this.messageStoreListener.remove();
  },

  toggleExpanded: function (id, e) {
    var nuExpanded = this.state.expanded;

    nuExpanded[id] = !nuExpanded[id];

    this.setState({expanded: nuExpanded});

  },

  render: function () {
    messageList = this.state.conversation.messages.map(function (message) {
      return (
        <Message
          key={message.id}
          expanded={this.state.expanded[message.id]}
          message={message}
          history={this.props.history}
          toggleExpanded={this.toggleExpanded.bind(this, message.id)} />
      );
    }.bind(this));

    return (
      <section className="content conversations-detail">
        {messageList}
      </section>
    );
  }

});

module.exports = ConversationDetail;
