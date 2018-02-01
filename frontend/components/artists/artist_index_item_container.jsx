import React from 'react';
import { connect } from 'react-redux';
import ArtistIndexItem from './artist_index_item';

const mapStateToProps = (state, ownProps) => ({
  artist: state.entities.artists[ownProps.id]
});

const mapDispatchToProps = (dispatch) => ({

});

export default connect(mapStateToProps, mapDispatchToProps)(ArtistIndexItem);