var React = require('react'),
    userApiUtil = require('../util/user_api_util'),
    conversationApiUtil = require('../util/conversation_api_util');


var Login = React.createClass({
    getInitialState: function () {
        return {username: "", pass: ""};
    },

    inputChange: function (e) {
        name = e.currentTarget.name;
        val = e.currentTarget.value;
        ob = {};
        ob[name] = val;
        this.setState(ob);
    },

    login: function (e) {
        e.preventDefault();
        userApiUtil.logIn(this.state.username, this.state.pass, this._toInbox);
    },

    demoLogin: function (e) {
        e.preventDefault();
        userApiUtil.logIn('daimonic', 'Iamplato1', function () {            
            conversationApiUtil.refreshAdmin();
            this._toInbox();
        }.bind(this));
    },

    _toInbox: function () {
        this.props.history.pushState({}, "/inbox/1");
    },

    _toSignup: function () {
        this.props.history.pushState({}, "/signup");
    },

    render: function () {
        return (
            <main className="auth-page log-in">

                <h1>One account. All of this App.</h1>

                <h3> Sign in to continue to φmail </h3>

                <form className="log-in-form auth-page-form" method="post">

                    <input type="text" name="username" value={this.state.username} placeholder="Enter Your Email" onChange={this.inputChange}/>
                    <input type="password" name="pass" value={this.state.pass} placeholder="Password" onChange={this.inputChange}/>

                    <button onClick={this.login}>Sign In</button>

                    <button className="demo-button" onClick={this.demoLogin}>Demo Account</button>

                </form>

                <a className="new-user-link" onClick={this._toSignup} >Create account</a>
            </main>
        );
    }
});

module.exports = Login;
