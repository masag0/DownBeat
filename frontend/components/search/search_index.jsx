import React from 'react';
import lodash from 'lodash';
import SongList from '../songs/song_list';

class SearchIndex extends React.Component {
  constructor(props) {
    super(props);

    this.state = { songs: {} };

  }

  componentDidMount () {

  }

  componentWillReceiveProps ()  {

  }

  render(){



    return (
      <div>
        <h2 className="category-header">Search Results</h2>
      </div>
    );
  }
}


export default SearchIndex;


