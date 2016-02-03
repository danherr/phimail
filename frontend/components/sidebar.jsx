var React = require('react');


var SideBar = React.createClass({
  render: function () {
    return (
      <section className="sidebar clearfix">
        <div className="app-name">
          <h4>φ</h4>
          <h5>
            mail
          </h5>
        </div>

        <div className="compose-button-area">
          <span className="compose-button">
            COMPOSE
          </span>
        </div>
      </section>
    );
  }
});

module.exports = SideBar;
