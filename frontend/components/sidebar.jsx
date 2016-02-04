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

        <section className="sidebar-folder-list">
          <a href= "#/inbox/1">Inbox</a>
          <a href= "#/drafts/1">Drafts</a>
          <a href= "#/sent/1">Sent Mail</a>
        </section>

      </section>
    );
  }
});

module.exports = SideBar;
