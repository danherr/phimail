var React = require('react'),
    ConversationStore = require('../../stores/conversation_store'),
    SelectionStore = require('../../stores/selection_store'),
    conversationApiUtil = require('../../util/conversation_api_util'),
    ConversationActions = require('../../actions/conversation_actions'),
    ConversationListItem = require('./conversation_list_item');

var ActionBar = React.createClass({
    getInitialState: function () {
        return {
            midDropExpanded: false,
            leftDropExpanded: false
        }
    },
    
    markAllRead: function (e) {
        var conversationIds = ConversationStore.allIds();

        var page = ConversationStore.pageData().pageNumber;
        var context = this.props.parentContext;

        conversationApiUtil.updateConversations(
            {read: true},
            conversationIds,
            {page: page, context: context});
    },

    markSelectedRead: function (markRead, e) {
        var page = ConversationStore.pageData().pageNumber;
        var context = this.props.parentContext;

        conversationApiUtil.updateConversations(
            {read: markRead},
            this.props.referents,
            {page: page, context: context});
    },

    delete: function (e) {
        var page = ConversationStore.pageData().pageNumber;
        var context = this.props.parentContext;

        conversationApiUtil.deleteConversations(
            this.props.referents,
            {page: page, context: context});
    },

    changeMark: function (markType, markVal, dropDownContract, e) {
        var page = ConversationStore.pageData().pageNumber;
        var context = this.props.parentContext;
        var ob = {};
        ob[markType] = markVal;

        conversationApiUtil.updateConversations(
            ob,
            this.props.referents,
            {page: page, context: context});

        if (dropDownContract) {
            this.toggleDropDown(dropDownContract)
        }
    },

    toggleDropDown: function (stateBool, e) {
        var ob = {};
        ob[stateBool] = !this.state[stateBool];
        this.setState(ob);
    },

    select: function (selector, dropDownContract, e) {
        ConversationActions.selectAll(selector);
        this.toggleDropDown(dropDownContract)
    },

    render: function () {
        var leftButtons,
            midButtons,
            pageMessage,
            rightButtons,
            conv_num,
            total,
            disableLeft,
            disableRight;
        
        if (this.props.context === 'detail') {
            leftButtons = (
                <div className="left-buttons button-group">
                    <div
                        className="button"
                        onClick={this.props.goBack}
                    >
                        Back
                    </div>
                </div>
            );
            var conversation = ConversationStore.find(this.props.referents[0]);
            if (conversation) {
                conv_num = ConversationStore.pageData().min + 1 + conversation.index;
                total = ConversationStore.pageData().total;
                disableLeft = conv_num <= 1;
                disableRight = conv_num >= total;
                pageMessage = (
                    <div className="page-message">
                        <em>
                            {conv_num}
                        </em>
                        of
                        <em>
                            {total}
                        </em>
                    </div>
                );

            }
        } else if (this.props.context === 'list') {
            leftButtons = (
                <div className="left-buttons button-group">
                    <div
                        className={"left-button-dropdown actionbar-dropdown-button"
                                 + (this.state.leftDropExpanded ? "-expanded " : " ")
                                + " button"}
                        onClick={this.toggleDropDown.bind(this, "leftDropExpanded")}
                    >
                        Select

                        <i className="fa fa-caret-down arrow"></i>

                        <div className={"actionbar-dropdown-list "
                                      + (this.state.leftDropExpanded ? "" : " hideme")}
                        >
                        
                            
                            <div
                                className="action-dropdown-item"
                                onClick={this.select.bind(
                                        this,
                                        null,
                                        "leftDropExpanded")}
                            >
                                Select All
                            </div>
                            <div
                                className="action-dropdown-item"
                                onClick={this.select.bind(
                                        this,
                                        function () {return false;},
                                        "leftDropExpanded")}
                            >
                                Select none
                            </div>
                            <div
                                className="action-dropdown-item"
                                onClick={this.select.bind(
                                        this,
                                        function (con) {return con.starred;},
                                        "leftDropExpanded")}
                            >
                                Select Starred
                            </div>
                            <div
                                className="action-dropdown-item"
                                onClick={this.select.bind(
                                        this,
                                        function (con) {return !con.starred;},
                                        "leftDropExpanded")}
                            >
                                Select Unstarred
                            </div>
                            <div
                                className="action-dropdown-item"
                                onClick={this.select.bind(
                                        this,
                                        function (con) {return con.important;},
                                        "leftDropExpanded")}
                            >
                                Select Important
                            </div>
                            <div
                                className="action-dropdown-item"
                                onClick={this.select.bind(
                                        this,
                                        function (con) {return !con.important;},
                                        "leftDropExpanded")}
                            >
                                Select Unimportant
                            </div>
                        </div>
                    </div>
                </div>
            );

            disableLeft = (ConversationStore.pageData().min <= 0);
            disableRight = (ConversationStore.pageData().max
                >= ConversationStore.pageData().total);

            pageMessage = (
                <div className="page-message">
                    <em>
                        {ConversationStore.pageData().min + 1}-{ConversationStore.pageData().max}
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
                    <div className="button"
                         onClick={this.delete}
                    >
                        Delete
                    </div>
                    
                    <div
                        className={"mid-button-dropdown actionbar-dropdown-button"
                                 + (this.state.midDropExpanded ? "-expanded " : " ")
                                + " button"}
                        onClick={this.toggleDropDown.bind(this, "midDropExpanded")}
                    >
                        
                        <span> More </span>
                        
                        <i className="fa fa-caret-down arrow"></i>
                        
                        <div className={"actionbar-dropdown-list "
                                      + (this.state.midDropExpanded ? "" : " hideme")}
                        >
                            <div className="action-dropdown-item"
                                 onClick={this.changeMark.bind(
                                         this,
                                         'read',
                                         true,
                                         "midDropExpanded")}>
                                Mark as Read
                            </div>
                            <div className="action-dropdown-item"
                                 onClick={this.changeMark.bind(
                                         this,
                                         'read',
                                         false,
                                         "midDropExpanded")}>
                                Mark as Unread
                            </div>
                            <div className="action-dropdown-item"
                                 onClick={this.changeMark.bind(
                                         this,
                                         'important',
                                         true,
                                         "midDropExpanded")}>
                                Mark Important
                            </div>
                            <div className="action-dropdown-item"
                                 onClick={this.changeMark.bind(
                                         this,
                                         'important',
                                         false,
                                         "midDropExpanded")}>
                                Mark Unimportant
                            </div>
                            <div className="action-dropdown-item"
                                 onClick={this.changeMark.bind(
                                         this,
                                         'starred',
                                         true,
                                         "midDropExpanded")}>
                                Star
                            </div>
                            <div className="action-dropdown-item"
                                 onClick={this.changeMark.bind(
                                         this,
                                         'starred',
                                         false,
                                         "midDropExpanded")}>
                                Unstar
                            </div>
                        </div>
                    
                    </div>
                </div>
            );
        }
        
        rightButtons = (
            <div className="right-buttons button-group">
                <i
                    className={"button fa fa-angle-left" + (disableLeft ? " disabled" : "")}
                    onClick={disableLeft ? (function () {}) : this.props.turnPage.bind(null, -1)}
                >
                </i>
                <i
                    className={"button fa fa-angle-right" + (disableRight ? " disabled" : "")}
                    onClick={disableRight ? (function () {}) : this.props.turnPage.bind(null, 1)}
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
