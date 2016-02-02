var React = require('react'),
    ConversationStore = require('../../stores/conversation_store'),
    conversationApiUtil = require('../../util/conversation_api_util'),
    ConversationActions = require('../../actions/conversation_actions'),
    ConversationListItem = require('./conversation_list_item');

var ActionBar = React.createClass({
  markAllRead: function (e) {
    var conversations = ConversationStore.all();
    var conversationIds = conversations.map(function (conversation) {
      return conversation.id;
    });
    
  },

  markSomeRead: function (e) {

  },

  render: function () {
    var leftButtons, midButtons, pageMessage, rightButtons;
    if (this.props.context === 'detail') {
      leftButtons = (
        <div className="left-buttons button-group">
          <div
            className="button"
            onClick={this.props.history.goBack}
            >
            Back
          </div>
        </div>
      );
      var conversation = ConversationStore.find(this.props.referents[0]);
      if (conversation) {
        pageMessage = (
          <div className="page-message">
            <em>
              {ConversationStore.pageData().min + conversation.index}
            </em>
            of
            <em>
              {ConversationStore.pageData().total}
            </em>
          </div>
        );
      }
    } else if (this.props.context === 'list') {
      leftButtons = (
        <div className="left-buttons button-group">
          <div
            className="button"
            onClick={ConversationActions.selectAll.bind(this, null)}
            >
            Select All
          </div>
          <div
            className="button"
            onClick={ConversationActions.selectAll.bind(this, function () {return false;})}
            >
            Select none
          </div>
          <div
            className="button"
            onClick={ConversationActions.selectAll.bind(this, function (con) {return con.starred;})}
            >
            Select Starred
          </div>
          <div
            className="button"
            onClick={ConversationActions.selectAll.bind(this, function (con) {return !con.starred;})}
            >
            Select Unstarred
          </div>
        </div>
      );

      pageMessage = (
        <div className="page-message">
          <em>
            {ConversationStore.pageData().min}
          </em>
          -
          <em>
            {ConversationStore.pageData().max}
          </em>
          of
          <em>
            {ConversationStore.pageData().total}
          </em>
        </div>
      );

    }


    if (this.props.referents.length === 0) {
      midButtons = (
        <div className="mid-buttons button-group" >
          <div
            className="button"
            onClick={this.markAllRead}
            >
            Mark all as read
          </div>
        </div>
      );
    } else {
      midButtons = (
        <div className="mid-buttons button-group" >
          <div className="button">
            Delete
          </div>
          <div className="button"
            onClick={this.markSomeRead}>
            Mark as Read
          </div>
        </div>
      );
    }

    rightButtons = (
      <div className="right-buttons button-group">
        <i
          className="button fa fa-angle-left"
          onClick={this.props.turnPage.bind(null, -1)}
          >
        </i>
        <i
          className="button fa fa-angle-right"
          onClick={this.props.turnPage.bind(null, 1)}
          >
        </i>
      </div>
    );

    return (
      <div className="action-bar clearfix">
        {leftButtons}
        {midButtons}
        {rightButtons}
        {pageMessage}
      </div>
    );
  }
});

module.exports = ActionBar;
