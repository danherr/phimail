var React = require('react'),
    ComposeButton = require('./conversations/compose_button');


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

        <ComposeButton/>

      </section>
    );
  }
});

module.exports = SideBar;
