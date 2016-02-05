var React = require('react'),
    MessageStore = require('../../stores/message_store'),
    DraftStore = require('../../stores/draft_store'),
    messageApiUtil = require('../../util/message_api_util'),
    conversationApiUtil = require('../../util/conversation_api_util');

var Reply = React.createClass({
  reply: function (e) {
    if (e.target.className.split(' ').indexOf('reply-all') !== -1) {

    } else {

    }
  },

  render: function () {

    return (
      <section>
      </section>
    );
  }
});

module.exports = Reply;
