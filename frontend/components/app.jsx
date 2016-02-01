var React = require('react'),
    SideBar = require('./sidebar.jsx'),
    SearchBar = require('./searchbar.jsx');


var App = React.createClass({
  render: function () {
    
    return (
      <main className="app">
        <SearchBar history={this.props.history} />
        <section className="clearfix below-search-bar">
          <SideBar history={this.props.history} />
          {this.props.children}
        </section>
      </main>
    );
  }
});


module.exports = App;
