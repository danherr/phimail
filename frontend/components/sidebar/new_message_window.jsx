var React = require('react'),
    MessageStore = require('../../stores/message_store'),
    DraftStore = require('../../stores/draft_store'),
    FlashActions = require('../../actions/flash_actions'),
    messageApiUtil = require('../../util/message_api_util'),
    conversationApiUtil = require('../../util/conversation_api_util');

var NewMessageWindow = React.createClass({
    getInitialState: function () {
        var target_address = this.props.draft.target_address.trim();
        var address_array = (target_address.length > 0) ? target_address.split(', ') : [];
        return {
            target_address: target_address,
            title: this.props.draft.title,
            body: this.props.draft.body,
            conversation_id: this.props.draft.conversation_id,
            id: this.props.draft.id,
            address_input: "",
            address_array: address_array,
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
        var callback = function () {
            window.setTimeout(
                FlashActions.newMessage.bind(this, "The Message has been sent."),
                300
            );

            this.props.close()
        }.bind(this);

        var target_address = this.state.address_array;
        target_address.push(this.state.address_input.trim());
        target_address = target_address.join(", ");

        var state = this.state;

        state.target_address = target_address;
            
        FlashActions.newMessage("Sending...");
        
        messageApiUtil.updateDraft(state, true, callback);
    },

    delete: function (e) {
        var path = window.location.hash.split('/');

        FlashActions.newMessage("The Draft has been Deleted.")
            
            if (path[1] === "drafts") {
                var page = path[2].split("?")[0];
                var options = {context: "drafts", page: page};

                conversationApiUtil.deleteConversations([this.state.conversation_id], options);
            } else {
                conversationApiUtil.deleteDraft(this.state.conversation_id);
            }

        this.props.close();
    },
    render: function () {

        var address_array = this.state.address_array.map(function (address, index) {
            return (
                <span
                    key={index}
                    className="new-message-address-array-item"
                >
                    {address}
                </span>
            );
        });

        return (
            <div className={"new-message-window " + this.props.className}>

                <div className="new-message-topbar clearfix">
                    <span>New Message</span>

                    <i className="fa fa-times" onClick={this.close}></i>
                </div>

                <div className="new-message-target input clearfix">
                    {address_array}
                    <input
                        onChange={this.changeTarget}
                        onKeyDown={this.removeAddress}
                        type="text"
                        className="new-message-target-inner-input"
                        value={this.state.address_input}
                        placeholder={this.state.address_array.length === 0 ? "Recipients" : ""}
                    />
                </div>

                <input
                    onChange={this.changeSubject}
                    type="text"
                    className="new-message-subject input"
                    value={this.state.title}
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

                    <i
                        className="delete-button button fa fa-trash"
                        onClick={this.delete}
                    ></i>
                </div>
            </div>
        );
    }
});

module.exports = NewMessageWindow;
