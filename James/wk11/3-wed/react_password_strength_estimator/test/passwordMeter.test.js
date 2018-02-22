var expect = require('chai').expect
// var PasswordInput = require('../components/PasswordInput')
// import getStrength from '../lib/passwordMeter'
var getStrength = require('../lib/passwordMeter')

describe('passwordMeter', () => {
  it('should return weak by default', () => {
    expect(getStrength('')).to.be.equal('weak')
  })
})