var React = require('react'),
    userApiUtil = require('../../util/user_api_util'),
    UserStore = require('../../stores/user_store'),
    UserDetail = require('./user_detail.jsx');


var SearchBar = React.createClass({
  getInitialState: function () {
    return { hideUserDetail: true };
  },

  toggleUserDetail: function (value, e) {
    value = value || !this.state.hideUserDetail;
    this.setState({hideUserDetail: value});
  },

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

        <div className="profile-container">
            <img
              src={UserStore.currentUser().avatar_url}
              alt=""
              className="profile-pic"
             onClick={this.toggleUserDetail.bind(this, null)}
              />
        </div>

        <UserDetail
          hideme={this.state.hideUserDetail ? "hideme" : ""}
          toggle={this.toggleUserDetail.bind(this, null)}
          logOut={this.logOut}
          user={UserStore.currentUser()}
          />
      </section>
    );
  }
});

module.exports = SearchBar;
