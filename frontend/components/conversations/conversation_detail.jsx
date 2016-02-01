var React = require('react'),
    MessageStore = require('../../stores/message_store'),
    ConversationStore = require('../../stores/conversation_store'),
    messageApiUtil = require('../../util/message_api_util'),
    conversationApiUtil = require('../../util/conversation_api_util'),
    Message = require('./message'),
    ActionBar = require('./action_bar'),
    _und = require('underscore');


var ConversationDetail = React.createClass({

  getInitialState: function () {
    var conversation = MessageStore.all();

    if (conversation.id === this.props.params.conversation_id) {
      return {conversation: conversation, expanded: this.generateInitialExpanded(conversation.messages), fetched: true};
    } else {
      return {conversation: {messages: []}, expanded: {},  fetched: false, allExpanded: false};
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

  setInitialExpanded: function () {
    this.setState({expanded: this.generateInitialExpanded(this.state.conversation.messages)});
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
    if (!ConversationStore.fetched) conversationApiUtil.fetchConversations();
    messageApiUtil.fetchConversation(this.props.params.conversation_id);
  },

  componentWillUnmount: function () {
    this.messageStoreListener.remove();
  },

  componentWillReceiveProps: function (newProps) {
    if (newProps.location.pathname !== this.props.location.pathname) {
      this.setState({conversation: {messages: []}, expanded: {},  fetched: false, allExpanded: false});
    }
    messageApiUtil.fetchConversation(newProps.params.conversation_id);
  },

  componentWillUpdate: function (newProps, newState) {
    newState.allExpanded = _und.values(newState.expanded).reduce(function(so_far, new_bool) {return so_far && new_bool;}, true);
  },

  toggleExpanded: function (id, e) {
    var nuExpanded = this.state.expanded;

    nuExpanded[id] = !nuExpanded[id];

    this.setState({expanded: nuExpanded});

  },

  expandAll: function () {
    var newExpanded = {};

    this.state.conversation.messages.forEach(function (message) {
      newExpanded[message.id] = true;
    });

    this.setState({expanded: newExpanded});
  },

  turnPage: function(num) {
    var pathArr = this.props.location.pathname.split('/');
    var pageNum = parseInt(pathArr.pop());
    pageNum += num;
    pathArr.push(pageNum);
    var path = pathArr.join('/');
    this.props.history.pushState({}, path);
  },

  render: function () {
    var messageList = this.state.conversation.messages.map(function (message) {
      return (
        <Message
          key={message.id}
          expanded={this.state.expanded[message.id]}
          message={message}
          history={this.props.history}
          toggleExpanded={this.toggleExpanded.bind(this, message.id)}
          shortenTime={this.props.route.shortenTime} />
      );
    }.bind(this));

    var expandAllButton;

    if (this.state.allExpanded) {
      expandAllButton = (
        <i className="fa fa-caret-square-o-up" title="Contract all" onClick={this.setInitialExpanded}></i>
      );
    } else {
      expandAllButton = (
        <i className="fa fa-caret-square-o-down" title="Expand all" onClick={this.expandAll}></i>
      );
    }

    return (
      <section className="content conversations-detail clearfix">
        <ActionBar
          turnPage={this.turnPage}
          referents={[this.props.params.conversation_id]}
          context="detail"
          history={this.props.history}
           />

        <section className="contacts-pane">
        </section>

        <section className="conversation-pane">

          <div className="conversation-detail-header">
            <h4 className="conversation-title">
              {this.state.conversation.title}
            </h4>
            <div className="conversation-detail-buttons">
              {expandAllButton}
            </div>
          </div>

          <div className="messages-list">
            {messageList}
          </div>

        </section>
      </section>
    );
  }

});

module.exports = ConversationDetail;
