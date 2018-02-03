import React from 'react';
import SessionErrorsContainer from '../splash/session_errors_container';

class LoginForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {title: '', description: '', genre: '', img_url: ''};
    if (this.props.playlist) {
      const {id, title, description, genre, img_url} = this.props.playlist;
      this.state = {
        id,
        title,
        description,
        genre,
        img_url
      };
    }

    this.update = this.update.bind(this);
    this.cancel = this.cancel.bind(this);
    this.submitForm = this.submitForm.bind(this);
  }

  componentDidMount () {

  }

  update (prop) {
    return e => this.setState( { [prop]: e.target.value } );
  }

  submitForm (e) {
    e.preventDefault();
    let playlist = Object.assign({}, this.state);
    if (this.props.formType === 'create') {
      playlist["user_id"] = this.props.currentUser.id;
      this.props.createPlaylist(playlist)
        .then( () => {
          this.props.clearSessionErrors();
          this.props.close();
        });
    } else {
      playlist["user_id"] = this.props.currentUser.id;
      this.props.updatePlaylist(playlist)
        .then( () => {
          this.props.clearSessionErrors();
          this.props.close();
        });
    }
  }

  cancel () {
    this.props.clearSessionErrors();
    this.props.close();
  }


  render () {
    const {id, title, description, genre, img_url} = this.state;
    let img;
    if (!img_url) {
      img = "";
    }
    let buttonText;
    let headerText;
    if (this.props.formType === 'update') {
      buttonText = "Edit Playlist";
      headerText = "Edit Playlist";
    } else {
      buttonText = "Create Playlist";
      headerText = "Create New Playlist";
    }

    return (
      <div className="playlist-modal-content">
        <header>
          <h2 className="addSongModal-header">{headerText}</h2>
        </header>
        <div className="playlist-form-modal">
          <form className="form playlist" onSubmit={this.submitForm}>
            <label>Title:
              <br/>
              <input
                type="text" value={title}
                onChange={this.update('title')}
                required
              />
            </label>

            <label>Description:
              <br/>
              <input
                type="text" value={description}
                onChange={this.update('description')}

              />
            </label>

            <label>Genre:
              <br/>
              <input
                type="text" value={genre}
                onChange={this.update('genre')}

              />
            </label>

            <label>Image URL:
              <br/>
              <input
                type="text" value={img}
                onChange={this.update('img_url')}

              />
            </label>

            <SessionErrorsContainer />


            <button
              type="submit"
            >{buttonText}</button>


            <div>
              <button
                type="button"
                className="cancel-button"
                onClick={this.cancel}
              >Cancel</button>
            </div>
          </form>

        </div>
      </div>
    );
  }
}

export default LoginForm;