var React = require('react'),
    MessageStore = require('../../stores/message_store'),
    messageApiUtil = require('../../util/message_api_util');

var NewMessageWindow = React.createClass({
  getInitialState: function () {
    return {
      target: "",
      subject: "",
      body: ""
    };
  },

  changeTarget: function (e) {
    this.setState({target: e.target.value});
  },

  changeSubject: function (e) {
    this.setState({subject: e.target.value});
  },

  changeBody: function (e) {
    this.setState({body: e.target.value});
  },

  render: function () {
    return (
      <div className={"new-message-window " + this.props.className}>
        <div className="new-message-topbar clearfix">
          <span>New Message</span>

          <i className="fa fa-times" onClick={this.props.close}></i>
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
          <div className="send-button button">Send</div>
        </div>
      </div>
    );
  }
});

module.exports = NewMessageWindow;
