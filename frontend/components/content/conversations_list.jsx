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
        return {
            conversations: conversations,
            selectedIds: this.getSelectedIds(conversations) || []
        };
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

        this.reloadInterval = window.setInterval(this.reload, 6000);

    },

    componentWillReceiveProps: function (newProps) {
        if (
            newProps.location.pathname !== this.props.location.pathname
         || newProps.location.query.search !== this.props.location.query.search
        ) {
            this.reload(newProps);
        }
    },

    componentWillUnmount: function () {
        this.conversationStoreListener.remove();
        this.selectionStoreListener.remove();
        window.clearInterval(this.reloadInterval);
    },

    reload: function (theProps) {
        var options = {};
        theProps = theProps || this.props;
        options.context = theProps.route.context;
        options.page = theProps.params.page_num;
        options.search = theProps.location.query.search
        conversationApiUtil.fetchConversations(options);
    },

    turnPage: function (num) {
        var pathArr = this.props.location.pathname.split('/');
        var page_num = parseInt(pathArr.pop());
        pathArr.push(page_num + num);
        var path = pathArr.join('/');
        var query = this.props.location.query;
        this.props.history.pushState({}, path, query);
    },

    render: function () {

        theList = this.state.conversations.map(function (conversation) {
            return (
                <ConversationListItem
                    key={conversation.id}
                    conversation={conversation}
                    history={this.props.history}
                    pathname={this.props.location.pathname}
                    query={this.props.location.query}
                    shortenTime={this.props.route.shortenTime}
                    context={this.props.route.context}
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
                    parentContext={this.props.route.context}
                    query={this.props.location.query}
                />

                <section className="below-action-bar clearfix">
                    <section className="conversations-list">
                        {theList}
                    </section>
                </section>
            </section>
        );
    }
});

module.exports = ConversationsList;
