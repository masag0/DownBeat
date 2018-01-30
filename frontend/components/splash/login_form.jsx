import React from 'react';
import SessionErrorsContainer from './session_errors_container';

class LoginForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {username: "", password: ""};

    this.update = this.update.bind(this);
    this.cancel = this.cancel.bind(this);
    this.keyPress = this.keyPress.bind(this);
    this.submitForm = this.submitForm.bind(this);
    this.demo = this.demo.bind(this);
  }

  update (prop) {
    return e => this.setState( { [prop]: e.target.value } );
  }

  submitForm () {
    this.props.login(this.state)
    .then( () => {
      console.log('here');
      if (this.props.loggedIn) {
        this.props.history.push('/');
      }
    }
    );
  }

  demo () {
    this.props.login({username: "guest", password:"password"})
    .then(this.props.history.push('/'));
  }

  cancel () {
    this.props.history.push('/splash');
  }

  keyPress (e) {
    if (e.key === 'Enter') {
      this.submitForm();
    }
  }

  render () {
    const {username, password} = this.state;
    return (
      <div className="modal">
        <form className="form login">
          <label>Username:
            <br/>
            <input
              type="text" value={username}
              onChange={this.update('username')}
              required
            />
          </label>
          <br/>

          <label>Password:
            <br/>
            <input
              type="password" value={password}
              onChange={this.update('password')}
              onKeyPress={this.keyPress}
              required
            />
          </label>

          <SessionErrorsContainer />


          <button
            type="button"
            onClick={this.submitForm}
          >Log In</button>


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

export default LoginForm;