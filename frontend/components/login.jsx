var React = require('react'),
    userApiUtil = require('../util/user_api_util');


var Login = React.createClass({
  getInitialState: function () {
    return {login: "", pass: ""};
  },

  inputChange: function (e) {
    name = e.currentTarget.name;
    val = e.currentTarget.value;

    this.setState({name: val});
  },

  login: function (e) {
    userApiUtil.logIn(this.state.username, this.state.pass);
  },

  demoLogin: function (e) {
    userApiUtil.logIn('daimonic', 'Iamplato1');
  },

  render: function () {
    return (
      <main class="auth-page log-in">

        <h1>One account. All of this App.</h1>

        <h3> Sign in to continue to Pmail </h3>

        <form class="log-in-form auth-page-form" action="<%= session_url %>" method="post">

          <input type="text" name="username" value="" placeholder="Enter Your Email" onChange={inputChange}/>
          <input type="password" name="pass" value="" placeholder="Password" onChange={inputChange}/>

          <button onClick={login}>Sign In</button>

          <button class="demo-button" onClick={demoLogin}>Demo Account</button>

        </form>

        <form id="demo-button" class="demo-account-button auth-page-form" action="<%= session_url %>" method="post">

          <input type="hidden" name="username" value="daimonic"/>
          <input type="hidden" name="pass" value="Iamplato1"/>
        </form>


        <a class="new-user-link" href="<%= new_user_url %>" >Create account</a>
      </main>
    );
  }
});

module.exports = Login;
