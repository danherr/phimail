var React = require('react'),
    userApiUtil = require('../util/user_api_util'),
    UserStore = require('../stores/user_store');


var SearchBar = React.createClass({
  logOut: function () {
    userApiUtil.logOut( function () {
      this.props.history.pushState({}, "/login");
    }.bind(this));
  },

  render: function () {
    return (
      <section className="searchbar clearfix">
        <div className="logo">
          φ<p>ι</p><div>λ</div>ο<em>σ</em>ο<p>φ</p><div>ί</div>α
        </div>

        <div className="search-bar">
          <input type="text" className="search-input" />
          <i className="fa fa-search search-button"></i>
        </div>

        <button onClick={this.logOut} >Log Out</button>

        <div className="profile-container">
            <img src={UserStore.currentUser().avatar_url} alt="" className="profile-pic"/>
        </div>
      </section>
    );
  }
});

module.exports = SearchBar;
