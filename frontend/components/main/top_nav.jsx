import React from 'react';
import lodash from 'lodash';



class TopNav extends React.Component {
  constructor(props) {
    super(props);

    this.state = { query: "Search" };
    this.firstFocus = true;

    this.logout = this.logout.bind(this);
    this.update = this.update.bind(this);
    this.clearSearchBar = this.clearSearchBar.bind(this);
    this.resetSearchBar = this.resetSearchBar.bind(this);
    this.handleKeyPress = this.handleKeyPress.bind(this);

    this.search = this.search.bind(this);
    this.dbSearch = lodash.debounce((query) => this.search(query), 250);

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
    this.props.history.push('/search');
  }

  resetSearchBar () {
    if (this.state.query === "") {
      this.setState( { query: "Search"} );
      this.firstFocus = true;

      this.props.history.goBack();
    }
  }

  update (e) {

    this.setState( { query: e.target.value } );

    this.dbSearch(e.target.value);

  }

  search (query) {
    if (query !== "") {
      this.props.fetchResults(query);

    } else {
      this.props.clearResults();
    }
  }

  handleKeyPress (e) {
    if (e.key === 'enter') {
      if (e.target.value !== "") {
        this.props.fetchResults(e.target.value);
      }
    }
  }

  hideImage (e) {
    e.target.classList.add('hidden');
  }

  render(){


    const {currentUser} = this.props;
    return (
      <nav id="top-nav">
        <div id="top-nav-search">

          <input id="main-search-bar"
            type="text"
            value={this.state.query}
            onFocus={this.clearSearchBar}
            onChange={this.update}
            onBlur={this.resetSearchBar}
            onKeyPress={this.handleKeyPress}
            />

        </div>
        <div id="top-nav-profile">
          <div id="top-nav-profile-flex">
            <img src="" id="top-nav-user-profile-img" onError={this.hideImage}/>
            <div id="top-nav-user-profile-img-default" />
            <h1 id="top-nav-profile-link">{currentUser.username}</h1>
          </div>

          <button type="button" onClick={this.logout}>Log Out</button>
        </div>
      </nav>
    );
  }
}


export default TopNav;