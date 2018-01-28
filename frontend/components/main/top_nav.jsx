import React from 'react';

class TopNav extends React.Component {
  constructor(props) {
    super(props);

    this.logout = this.logout.bind(this);
  }


  logout(e) {
    e.preventDefault();
    this.props.logout()
      .then(this.props.history.push('/splash'));
  }

  render(){
    return (
      <nav id="top-nav">
        <div id="top-nav-search">
          <input id="main-search-bar" type="text" defaultValue="Search"/>
        </div>
        <div id="top-nav-profile">
          <h1>Profile</h1>
          <h1>Dropdown</h1>
          <button type="button" onClick={this.logout}>Log Out</button>
        </div>
      </nav>
    );
  }
}


export default TopNav;