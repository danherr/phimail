var React = require('react'),
    MessageStore = require('../../stores/message_store'),
    DraftStpre = require('../../stores/draft_store'),
    messageApiUtil = require('../../util/message_api_util');

var Reply = React.createClass({
  render: function () {

    return (
      <figure>
        <textarea>          
        </textarea>
      </figure>
    );
  }
});

module.exports = Reply;
