var React = require('react'),
    ReactDOM = require('react-dom'),
    UserStore = require('../../stores/user_store');

UserDetail = React.createClass({
    componentWillReceiveProps: function (newProps) {
        if (newProps.hidden !== this.props.hidden) this.setState({hidden: newProps.hidden});
    },

    componentDidMount: function () {
        window.addEventListener('click', this.handleClickAway);        
    },

    componentWillUnMount: function () {
        window.removeEventListener('click', this.handleClickAway);
    },

    handleClickAway: function (e) {
        if (ReactDOM.findDOMNode(this).contains(e.target)) {
            return;
        }
        
        if (!this.props.hidden) {
            this.props.toggle();
        }       
    },

    render: function () {

        return (
            <div
                className={"user-detail-window " + (this.props.hidden ? "hideme" : "")}
            >

                <div className="profile-container-detail">
                    <img
                        src={UserStore.currentUser().avatar_url}
                        alt=""
                        className="profile-pic-detail"
                        onClick={this.props.toggle}
                    />
                </div>

                <div className="user-details">
                    <p className="user-name">
                        {this.props.user.fname} {this.props.user.lname}
                    </p>
                    <p className="user-email">
                        {this.props.user.username}@phimail.pw
                    </p>
                </div>

                <div className="user-detail-footer">
                    <div
                        className="logout-button button"
                        onClick={this.props.logOut}
                    >Sign Out</div>

                    <div
                        className="change-acount button"
                        onClick={this.props.logOut}
                    >Change Account</div>
                </div>
            </div>
        );
    }
});

module.exports = UserDetail;
