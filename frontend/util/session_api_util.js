export const requestSignup = (user) => (
  $.ajax({
    method: 'POST',
    url: '/api/users/',
    data: user
  })
);

export const requestLogin = (user) => (
  $.ajax({
    method: 'POST',
    url: '/api/sessions/',
    data: user
  })
);

export const requestLogout = () => (
  $.ajax({
    method: 'DELETE',
    url: '/api/sessions/'
  })
);
