var React = require('react'),
    ReactDOM = require('react-dom'),
    Router = require('react-router').Router,
    Route = require('react-router').Route,
    IndexRoute = require('react-router').IndexRoute,
    Redirect = require('react-router').Redirect,
    hashHistory = require('history').createHashHistory(),
    Login = require('./components/login'),
    Signup = require('./components/signup'),
    App = require('./components/app'),
    ConversationsList = require('./components/conversations/conversations_list.jsx'),
    ConversationDetail = require('./components/conversations/conversation_detail.jsx'),
    UserStore = require('./stores/user_store'),
    userApiUtil = require('./util/user_api_util');




var _noIndex = function (nextState, replace, callback) {
  replace({}, "/inbox");
  callback();
};

var _ensureLoggedIn = function (nextState, replace, callback) {
  if (UserStore.beenFetched()) {
    _loginRedirect(replace, callback);
  } else {
    userApiUtil.fetchUser(_loginRedirect.bind(this, replace, callback));
  }
};

var _loginRedirect = function (replace, callback) {
  if (!UserStore.loggedIn()) {
    replace({}, "/login");
  }
  callback();
};

var router = (
  <Router history={hashHistory}>
    <Route path="/login" component={ Login } />
    <Route path="/signup" component={ Signup } />

    <Route path="/" component={ App } onEnter={ _ensureLoggedIn }>
      <IndexRoute component={ ConversationDetail } onEnter={ _noIndex }/>

      <Route path="inbox" folder="inbox" component={ConversationsList}/>

      <Route path="conversation/:conversation_id" component={ConversationDetail} />
    </Route>
  </Router>
);

document.addEventListener('DOMContentLoaded', function () {
  ReactDOM.render(router, document.getElementById('root'));
});
