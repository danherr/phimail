var React = require('react'),
    userApiUtil = require('../util/user_api_util');


var SearchBar = React.createClass({
  logOut: function () {
    userApiUtil.logOut( function () {
      this.props.history.pushState({}, "/login");
    }.bind(this));
  },

  render: function () {
    return (
      <section className="searchbar">
        SearchBar
        <button onClick={this.logOut} >Log Out</button>
      </section>
    );
  }
});

module.exports = SearchBar;
