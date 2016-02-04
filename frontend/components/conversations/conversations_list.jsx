var React = require('react'),
    ConversationStore = require('../../stores/conversation_store'),
    SelectionStore = require('../../stores/selection_store'),
    conversationApiUtil = require('../../util/conversation_api_util'),
    ConversationActions = require('../../actions/conversation_actions'),
    ConversationListItem = require('./conversation_list_item'),
    ActionBar = require('./action_bar');


var ConversationsList = React.createClass({
  getInitialState: function () {
    conversations = ConversationStore.all();
    return {conversations: conversations, selectedIds: this.getSelectedIds(conversations) || []};
  },

  getSelectedIds: function (conversations) {
    var output = [];

    conversations.forEach(function (conversation) {
      if (SelectionStore.isSelected(conversation.id)) {
        output.push(conversation.id);
      }
    });

    return output;
  },

  componentDidMount: function () {
    this.conversationStoreListener = ConversationStore.addListener( function () {
      this.setState({conversations: ConversationStore.all()});
    }.bind(this));

    this.selectionStoreListener = SelectionStore.addListener( function () {
      this.setState({selectedIds: this.getSelectedIds(this.state.conversations)});
    }.bind(this));

    this.reload(this.props);

    this.reloadInterval = window.setInterval(this.reload.bind(this, this.props), 5000);

  },

  componentWillReceiveProps: function (newProps) {
    if (newProps.location.pathname !== this.props.location.pathname) {
      this.reload(newProps);
    }
  },

  componentWillUnmount: function () {
    this.conversationStoreListener.remove();
    this.selectionStoreListener.remove();
    window.clearInterval(this.reloadInterval);
  },

  reload: function (theProps) {
    conversationApiUtil.fetchConversations(theProps.params.page_num);
  },

  turnPage: function (num) {
    var pathArr = this.props.location.pathname.split('/');
    var page_num = parseInt(pathArr.pop());
    pathArr.push(page_num + num);
    var path = pathArr.join('/');
    this.props.history.pushState({}, path);
  },

  render: function () {

    theList = this.state.conversations.map(function (conversation) {
      return (
        <ConversationListItem
          key={conversation.id}
          conversation={conversation}
          history={this.props.history}
          pathname={this.props.location.pathname}
          shortenTime={this.props.route.shortenTime}
        />
      );
    }.bind(this));


    return (
      <section className="content conversations-list-pane">
        <ActionBar
          turnPage={this.turnPage}
          referents={this.state.selectedIds}
          context="list"
          history={this.props.history}
          />
        <section className="conversations-list">
        {theList}
        </section>
      </section>
    );
  }
});

module.exports = ConversationsList;
