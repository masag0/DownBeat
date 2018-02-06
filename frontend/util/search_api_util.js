export const fetchResults = (query) => (
  $.ajax ({
    method: 'GET',
    url: `/api/search/${query}`
  })
);