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
  replace({}, "/inbox/1");
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

var shortenTime = function (timeString) {
    var timestamp = new Date(timeString),
        time =  timestamp.toLocaleTimeString(),
        oldDate = timestamp.toLocaleDateString(),
        newDate = timestamp.toDateString().split(" ").splice(1,2).join(" "),
        fullTime = timestamp.toDateString() + " at " + time,
        now = new Date(),
        thing;

    if (now.getYear() !== timestamp.getYear()) {
      thing = oldDate;
    } else if (now.getMonth() !== timestamp.getMonth() || now.getDate() !== timestamp.getDate()) {
      thing = newDate;
    } else {
      thing = time;
    }

    return([fullTime, thing]);
  };

var router = (
  <Router history={hashHistory}>
    <Route path="/login" component={ Login } />
    <Route path="/signup" component={ Signup } />

    <Route path="/" component={ App } onEnter={ _ensureLoggedIn }>
      <IndexRoute component={ ConversationsList } onEnter={ _noIndex }/>

      <Route path="inbox/:page_num" ajaxUrl="/api/conversations" shortenTime={shortenTime} component={ConversationsList}>
      </Route>

      <Route path="drafts/:page_num" ajaxUrl="/api/conversations/drafts" shortenTime={shortenTime} component={ConversationsList}>
      </Route>

      <Route path="sent/:page_num" ajaxUrl="/api/conversations/sent" shortenTime={shortenTime} component={ConversationsList}>
      </Route>

      <Route path="conversation/:conversation_id" shortenTime={shortenTime} component={ConversationDetail} />
    </Route>
  </Router>
);

document.addEventListener('DOMContentLoaded', function () {
  ReactDOM.render(router, document.getElementById('root'));
});
