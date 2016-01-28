var React = require('react'),
    ReactDOM = require('react-dom'),
    Router = require('react-router').Router,
    Route = require('react-router').Route,
    IndexRoute = require('react-router').IndexRoute,
    Redirect = require('react-router').Redirect,
    hashHistory = require('history').createHashHistory(),
    SideBar = require('./components/sidebar.jsx'),
    SearchBar = require('./components/searchbar.jsx'),
    ConversationsList = require('./components/conversations/conversations_list.jsx'),
    ConversationDetail = require('./components/conversations/conversation_detail.jsx');


var App = React.createClass({
  render: function () {
    return (
      <div>
        <SearchBar history={hashHistory} />
        <main className="clearfix below-search-bar">
          <SideBar history={hashHistory} />
          {this.props.children}
        </main>
      </div>
    );
  }
});

var router = (
  <Router history={hashHistory}>
    <Route path="/" component={App}>
      <Redirect from="" to="inbox" />
      // <IndexRoute component={ConversationsList}/>
      <Route path="inbox" folder="inbox" component={ConversationsList}/>
      <Route path="starred" folder="starred" component={ConversationsList}/>
      <Route path="imp" folder="imp" component={ConversationsList}/>
      <Route path="sent" folder="sent" component={ConversationsList}/>
      <Route path="drafts" folder="drafts" component={ConversationsList}/>
      <Route path="all" folder="all" component={ConversationsList}/>
      <Route path="label/:label" folder="label/:label" component={ConversationsList}/>

      // <Route path=":foldername/:conversation_id" component={ConversationDetail} />
    </Route>
  </Router>
);

document.addEventListener('DOMContentLoaded', function () {
  ReactDOM.render(router, document.getElementById('root'));
});
