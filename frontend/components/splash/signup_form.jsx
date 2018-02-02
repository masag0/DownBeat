import React from 'react';
import SessionErrorsContainer from './session_errors_container';


class SignupForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {username: "", email: "", password: ""};

    this.update = this.update.bind(this);
    this.cancel = this.cancel.bind(this);
    this.submitForm = this.submitForm.bind(this);
    this.demo = this.demo.bind(this);
  }

  update (prop) {
    return e => this.setState( { [prop]: e.target.value } );
  }

  demo () {
    this.props.login({username: "guest", password:"password"})
    .then( () => {
      this.props.clearSessionErrors();
      this.props.history.push('/');
    });
  }

  submitForm (e) {
    e.preventDefault();
    this.props.signup( { user: this.state } )
    .then( () => {
      if (this.props.loggedIn) {
        this.props.clearSessionErrors();
        this.props.history.push('/');
      }
    });
  }

  cancel () {
    this.props.clearSessionErrors();
    this.props.history.push('/splash');
  }
  //
  // keyPress (e) {
  //   if (e.key === 'Enter') {
  //     this.submitForm();
  //   }
  // }

  render () {
    const {username, password, email} = this.state;
    return (
      <div className="modal">
        <form className="form login" onSubmit={this.submitForm}>
          <label>Username:
            <br/>
            <input
              type="text" value={username}
              onChange={this.update('username')}
              required
            />
          </label>
          <br/>

          <label>Email <i className="optional-text">(Optional)</i>:
            <br/>
            <input
              type="text" value={email}
              onChange={this.update('email')}
            />
          </label>
          <br/>

          <label>Password:
            <br/>
            <input
              type="password" value={password}
              onChange={this.update('password')}
              required
            />
          </label>

          <SessionErrorsContainer />

          <button
            type="submit"
          >Sign Up</button>

          <div>
            <button
              type="button"
              className="demo-button"
              onClick={this.demo}
              >Demo</button>

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

export default SignupForm;