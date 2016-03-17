var React = require('react'),
    userApiUtil = require('../../util/user_api_util'),
    UserStore = require('../../stores/user_store'),
    FlashStore = require('../../stores/flash_store'),
    UserDetail = require('./user_detail.jsx');


var SearchBar = React.createClass({
    getInitialState: function () {
        return {
            hideUserDetail: true,
            searchString: "",
            flashMessage: "",
        };
    },

    componentDidMount: function () {
        this.flashStoreListener = FlashStore.addListener( function () {
            this.setState({flashMessage: FlashStore.message()})
        }.bind(this));
    },
    
    componentWillUnmount: function () {
        this.flashStoreListener.remove();
    },

    toggleUserDetail: function (value) {
        value = value || !this.state.hideUserDetail;
        this.setState({hideUserDetail: value});
    },

    userDetailButtonClick: function (e) {
        this.toggleUserDetail();
        e.stopPropagation();
    },

    logOut: function () {
        userApiUtil.logOut( function () {
            this.props.history.pushState({}, "/login");
        }.bind(this));
    },

    changeSearchString: function (e) {
        this.setState({searchString: e.target.value})
    },

    search: function (e) {
        var path = document.location.hash.split("?")[0].split("#")[1];
        var searchString = this.state.searchString

        this.props.history.pushState(null, path, {search: searchString})
    },

    render: function () {
        return (
            <section className="searchbar clearfix">
                <div className="logo">
                    φ<p>ι</p><div>λ</div>ο<em>σ</em>ο<p>φ</p><div>ί</div>α
                </div>

                <figure className={"flash " + (this.state.flashMessage ? "" : "hideme")}>
                    {this.state.flashMessage}
                </figure>

                <div className="search-bar">
                    <input
                        type="text"
                        className="search-input"
                        value={this.state.searchString}
                        onChange={this.changeSearchString}
                    />
                    <i
                        className="fa fa-search search-button"
                        onClick={this.search}
                    ></i>
                </div>

                <div className="profile-container">
                    <img
                        src={UserStore.currentUser().avatar_url}
                        alt=""
                        className="profile-pic"
                        onClick={this.userDetailButtonClick}
                    />
                </div>

                <UserDetail
                    hidden={this.state.hideUserDetail}
                    toggle={this.toggleUserDetail.bind(this, null)}
                    logOut={this.logOut}
                    user={UserStore.currentUser()}
                />
                 
            </section>
        );
    }
});

module.exports = SearchBar;
