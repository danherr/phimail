var React = require('react'),
    ReactDOM = require('react-dom'),
    Router = require('react-router').Router,
    Route = require('react-router').Route,
    IndexRoute = require('react-router').IndexRoute,
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
      <IndexRoute component={ConversationsList}/>
      // <Route path="/:foldername" component={ConversationsList}/>
      // <Route path=":foldername/:conversation_id" component={ConversationDetail} />
    </Route>
  </Router>
);

document.addEventListener('DOMContentLoaded', function () {
  ReactDOM.render(router, document.getElementById('root'));
});
