var React = require('react'),
    MessageStore = require('../../stores/message_store'),
    DraftStore = require('../../stores/draft_store'),
    FlashActions = require('../../actions/flash_actions'),
    messageApiUtil = require('../../util/message_api_util'),
    conversationApiUtil = require('../../util/conversation_api_util');

var ReplyEditor = React.createClass({
    getInitialState: function () {
        return {
            target_address: this.props.draft.target_address,
            body: this.props.draft.body,
            conversation_id: this.props.draft.conversation_id,
            id: this.props.draft.id,
            address_input: "",
            address_array: this.props.draft.target_address.split(", "),
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
        var value = e.target.value;
        var address_array = this.state.address_array;
        if (value.endsWith(' ') || value.endsWith(',')) {
            address_array.push(value.trim().replace(',',''));
            this.setState({
                address_input: '',
                address_array: address_array,
                target_address: address_array.join(', ')
            });
        } else {
            this.setState({address_input: value});
        }
        this.setUpdateClock();
    },

    removeAddress: function (e) {
        var value = this.state.address_input;

        if (value === "" && e.key == "Backspace") {
            address_array = this.state.address_array;
            address_array.pop();

            this.setState({
                address_input: '',
                address_array: address_array,
                target_address: address_array.join(', ')
            });
            this.setUpdateClock();
        }
    },

    changeBody: function (e) {
        this.setState({body: e.target.value});
        this.setUpdateClock();
    },

    send: function (e) {
        var callback = function () {
            window.setTimeout(
                FlashActions.newMessage.bind(this, "The Reply has been sent."),
                300
            );
        };

        var state = this.state;

        if (state.address_input.trim()) {
            if (state.target_address.trim()) {
                state.target_address += ", " + state.address_input.trim();
            } else {
                state.target_address = state.address_input.trim();
            }
        }
        
        FlashActions.newMessage("Sending...");
        
        messageApiUtil.updateReply(state, true, callback);
    },

    delete: function (e) {
        var path = window.location.hash.split('/');

        FlashActions.newMessage("The Reply has been Deleted.")

        messageApiUtil.deleteReply(this.state.conversation_id, this.state.id);
    },

    render: function () {
        var address_array = this.state.address_array.map(function (address, index) {
            return (
                <span
                    key={index}
                    className="reply-address-array-item"
                >
                    {address}
                </span>
            );
        });

        return (
            <div className={"reply-editor " + this.props.className}>
                <div className="reply-target input clearfix">
                    {address_array}
                    <input
                        onChange={this.changeTarget}
                        onKeyDown={this.removeAddress}
                        type="text"
                        className="reply-target-inner-input"
                        value={this.state.address_input}
                        placeholder={this.state.address_array.length === 0 ? "Recipients" : ""}
                    />
                </div>
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
