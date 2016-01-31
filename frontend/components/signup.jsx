var React = require('react');


var Signup = React.createClass({
  getInitialState: function () {
    return {user: {}, otherPass: ""};
  },

  inputChange: function (e) {
    var name = e.currentTarget.name;
    var val = e.currentTarget.value;
    var nuState = {};
    if (name === "otherPass") {
      nuState = {};
      nuState.otherPass = val;
    } else {
      nuState.user = this.state.user;
      nuState.user[name] = val;
    }

    this.setState(nuState);
  },

  signup: function (e) {
    e.preventDefault();
    if (this.state.user.pass === this.state.otherPass) {
      userApiUtil.createUser(this.state);
    } else {
      alert("You Entered Two Different Passwords.");
      var nuState = this.state;
      nuState.otherPass = "";
      nuState.user.pass = "";
      this.setState(nuState);
    }
  },

  render: function () {
    return (
      <main className="auth-page new-user clearfix">

        <h1> Create your φmail Account </h1>

        <form className="new-user-form auth-page-form" method="post">

        <label className="new-user-name clearfix">Name
          <div className="clearfix">
            <input
              className="new-user-fname"
              type="text"
              name="fname"
              placeholder="First"
              value={this.state.user.fname}
              onChange={this.inputChange}
              />
            <input
              className="new-user-lname"
              type="text"
              name="lname"
              placeholder="Last"
              value={this.state.user.lname}
              onChange={this.inputChange}
              />
          </div>
        </label>

          <label className= "new-user-username">Choose your username
            <input
              type="text"
              name="username"
              placeholder="@phimail.pw"
              value={this.state.user.username}
              onChange={this.inputChange}
              />
          </label>

          <label>And Your Password
            <input
              type="password"
              name="pass"
              value={this.state.user.pass}
              onChange={this.inputChange}
              />
          </label>

          <label>Repeat Your Password
            <input
              type="password"
              name="otherPass"
              value={this.state.otherPass}
              onChange={this.inputChange}
              />
          </label>


          <label className="new-birthday">Birthday
            <input
              type="date"
              name="birthday"
              value={this.state.user.birthday}
              onChange={this.inputChange}
              />
          </label>

          <label>Mobile Phone
            <input
              type="text"
              name="phone_number"
              value={this.state.user.phone_number}
              onChange={this.inputChange}
              />
          </label>

          <label>Email
            <input
              type="text"
              name="outside_email"
              value={this.state.user.outside_email}
              onChange={this.inputChange}
              />
          </label>


        <button onClick={this.signup}>Next step</button>
        </form>

        <section className="advertising-copy">
        </section>

      </main>
    );
  }
});

module.exports = Signup;
