const redisClient = require('./signin').redisClient;

const delToken = (token) => {
  return Promise.resolve(redisClient.del(token));
}

const getAuthTokenId = (req) => {
  const { authorization } = req.headers;
  return redisClient.get(authorization, (err, reply) => {
    if (err || !reply) {
      return res.status(400).json('Unauthorized');
    }
    return delToken(authorization)
            .then(message => console.log('logged out'))
            .catch(err => res.status(400).json(err))
  });
}

const signoutAuthentication = () => (req, res) => {
  const { authorization } = req.headers;
  if (authorization) {
    return getAuthTokenId(req);
  }
  return res.status(400).json('Unauthorized');
}

module.exports = {
  signoutAuthentication: signoutAuthentication
}