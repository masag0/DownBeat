import React from 'react';
import SessionErrorsContainer from '../splash/session_errors_container';

class LoginForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {title: "", description: "", genre: "", img_url: ""};

    this.update = this.update.bind(this);
    this.cancel = this.cancel.bind(this);
    this.submitForm = this.submitForm.bind(this);
  }

  update (prop) {
    return e => this.setState( { [prop]: e.target.value } );
  }

  submitForm (e) {
    e.preventDefault();
    let playlist = Object.assign({}, this.state);
    playlist["user_id"] = this.props.currentUser.id;
    this.props.createPlaylist(playlist)
      .then( () => {
        this.props.clearSessionErrors();
        this.props.close();
      });
  }

  cancel () {
    this.props.clearSessionErrors();
    this.props.close();
  }


  render () {
    const {title, description, genre, img_url} = this.state;
    return (
      <div className="modal">
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
              type="text" value={img_url}
              onChange={this.update('img_url')}

            />
          </label>

          <SessionErrorsContainer />


          <button
            type="submit"
          >Create Playlist</button>


          <div>
            <button
              type="button"
              className="cancel-button"
              onClick={this.cancel}
            >Cancel</button>
          </div>
        </form>

      </div>
    );
  }
}

export default LoginForm;