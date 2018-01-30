import React from 'react';

const SessionErrors = (props) => {
  return (
    <ul className="session-errors-list">
    {
        props.errors.map((error, idx) => {
          return (
            <li key={idx}>{error}</li>
          );
        })
    }
    </ul>
  );
};

export default SessionErrors;