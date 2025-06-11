// app.test.js
const request = require('supertest');
const app = require('./app');

describe('Node.js Docker Test App', () => {
  it('should return status message', async () => {
    const res = await request(app).get('/');
    expect(res.statusCode).toEqual(200);
    expect(res.body.message).toEqual('Node.js Docker Test App');
  });

  it('should respond to health check', async () => {
    const res = await request(app).get('/health');
    expect(res.statusCode).toEqual(200);
    expect(res.text).toEqual('OK');
  });
});