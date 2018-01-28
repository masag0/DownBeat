import React from 'react';

class SignupForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {username: "", email: "", password: ""};

    this.update = this.update.bind(this);
    this.cancel = this.cancel.bind(this);
    this.keyPress = this.keyPress.bind(this);
    this.submitForm = this.submitForm.bind(this);
  }

  update (prop) {
    return e => this.setState( { [prop]: e.target.value } );
  }

  submitForm () {
    this.props.signup( { user: this.state } )
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
    const {username, password, email} = this.state;
    return (
      <div className="modal">
        <form className="form login">
          <label>Username:
            <br/>
            <input
              type="text" value={username}
              onChange={this.update('username')}
            />
          </label>
          <br/>

          <label>Email:
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
              onKeyPress={this.keyPress}
            />
          </label>

          <button
            type="button"
            onClick={this.submitForm}
          >Log In</button>

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

export default SignupForm;