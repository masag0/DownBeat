import React from 'react';

class TopNav extends React.Component {
  constructor(props) {
    super(props);

    this.state = { query: "Search" };
    this.firstFocus = true;

    this.logout = this.logout.bind(this);
    this.update = this.update.bind(this);
    this.clearSearchBar = this.clearSearchBar.bind(this);
    this.resetSearchBar = this.resetSearchBar.bind(this);
  }


  logout(e) {
    e.preventDefault();
    this.props.logout()
      .then(this.props.history.push('/splash'));
  }

  clearSearchBar () {
    if (this.firstFocus) {
      this.firstFocus = false;
      this.setState( { query: ""} );
    }
  }

  resetSearchBar () {
    if (this.state.query === "") {
      this.setState( { query: "Search"} );
      this.firstFocus = true;
    }
  }

  update (e) {
    this.setState( { query: e.target.value } );
  }

  render(){
    return (
      <nav id="top-nav">
        <div id="top-nav-search">
          <input id="main-search-bar"
            type="text"
            value={this.state.query}
            onFocus={this.clearSearchBar}
            onChange={this.update}
            onBlur={this.resetSearchBar}
          />
        </div>
        <div id="top-nav-profile">
          <h1>Profile</h1>
          <button type="button" onClick={this.logout}>Log Out</button>
        </div>
      </nav>
    );
  }
}


export default TopNav;