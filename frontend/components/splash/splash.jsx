import React from 'react';
import { Route, Link } from 'react-router-dom';
import LoginFormContainer from './login_form_container';
import SignupFormContainer from './signup_form_container';

class Splash extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    return (
      <section className="splash-container">
        <div className="img-darken">

          <div className="splash-button-container">
            <h2>DownBeat</h2>
            <Link to="/login" ><button type="button" id="login-button">Log In</button></Link>

            <Route exact path="/login" component={LoginFormContainer} />

            <div className="separator-container">
              <div className="before"></div>
              <span>
                Already Have An Account?
              </span>
              <div className="after"></div>
            </div>

            <Link to="/signup"><button type="button" id="signup-button">Sign Up</button></Link>

            <Route exact path="/signup" component={SignupFormContainer} />
          </div>

          <div className="splash-text-container">
            <h1>Get the right music, right now</h1>
            <h4>Listen to millions of songs for free.</h4>
            <ul>
              <li>Search & discover music that you'll love</li>
              <li>Create playlists of your favorite music</li>
            </ul>
          </div>

        </div>
      </section>
    );
  }
}


export default Splash;