var React = require('react'),
    MessageStore = require('../../stores/message_store'),
    DraftStpre = require('../../stores/draft_store'),
    messageApiUtil = require('../../util/message_api_util');

var NewMessageWindow = React.createClass({
  getInitialState: function () {
    return {
      target_address: this.props.draft.target_address,
      title: this.props.draft.title,
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

  changeSubject: function (e) {
    this.setState({title: e.target.value});
    this.setUpdateClock();
  },

  changeBody: function (e) {
    this.setState({body: e.target.value});
    this.setUpdateClock();
  },

  close: function (e) {
    messageApiUtil.updateDraft(this.state, false, this.props.close);
  },

  send: function (e) {
    messageApiUtil.updateDraft(this.state, true, this.props.close);
  },

  render: function () {
    return (
      <div className={"new-message-window " + this.props.className}>
        <div className="new-message-topbar clearfix">
          <span>New Message</span>

          <i className="fa fa-times" onClick={this.close}></i>
        </div>
        <input onChange={this.changeTarget}
        type="text"
        className="new-message-source input"
        value={this.state.target}
        placeholder="Recipients"
        />
        <input
        onChange={this.changeSubject}
        type="text"
        className="new-message-target input"
        value={this.state.subject}
        placeholder="Subject"
        />
        <textarea
        className="new-message-body input"
        onChange={this.changeBody}
        value={this.state.body}
        ></textarea>
        <div className="new-message-bottombar clearfix">
          <div
            className="send-button button"
            onClick={this.send}
            >Send</div>
        </div>
      </div>
    );
  }
});

module.exports = NewMessageWindow;
