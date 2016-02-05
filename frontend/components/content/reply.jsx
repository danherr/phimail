var React = require('react'),
    MessageStore = require('../../stores/message_store'),
    DraftStore = require('../../stores/draft_store'),
    messageApiUtil = require('../../util/message_api_util'),
    conversationApiUtil = require('../../util/conversation_api_util');

var ReplyEditor = React.createClass({
  getInitialState: function () {
    return {
      target_address: this.props.draft.target_address,
      body: this.props.draft.body,
      conversation_id: this.props.draft.conversation_id,
      id: this.props.draft.id
    };
  },

  setUpdateClock: function () {
    if (typeof this.timerID === "number") window.clearTimeout(this.timerID);
    this.timerID = window.setTimeout(this.updateDraft, 2000);
  },

  updateDraft: function () {
    messageApiUtil.updateDraft(this.state);
  },

  changeTarget: function (e) {
    this.setState({target_address: e.target.value});
    this.setUpdateClock();
  },

  changeBody: function (e) {
    this.setState({body: e.target.value});
    this.setUpdateClock();
  },

  send: function (e) {
    messageApiUtil.updateReply(this.state, true);
  },

  delete: function (e) {
    var path = window.location.hash.split('/');

    messageApiUtil.deleteReply(this.state.conversation_id, this.state.id);
  },

  render: function () {
    return (
      <div className={"reply-editor " + this.props.className}>

        <input onChange={this.changeTarget}
        type="text"
        className="reply-source input"
        value={this.state.target_address}
        placeholder="Recipients"
        />
        <textarea
        className="reply-body input"
        onChange={this.changeBody}
        value={this.state.body}
        ></textarea>

      <div className="reply-bottombar clearfix">
          <div
            className="send-button button"
            onClick={this.send}
            >Send</div>

          <i
            className="delete-button button fa fa-trash"
            onClick={this.delete}
            ></i>
        </div>
      </div>
    );
  }
});

module.exports = ReplyEditor;
