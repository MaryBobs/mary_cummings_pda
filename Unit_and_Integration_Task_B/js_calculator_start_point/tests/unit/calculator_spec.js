var Calculator = require('../../public/js/calculator.js')
var assert = require('assert')

describe('calculator', function () {
  beforeEach(function () {
    calculator = new Calculator()
  });

  // write unit tests here in the form of "it should do something..."
  it('it has a sample test', function(){
    assert.equal(true, true)
  })

  it('it can add 1 to 4 and get 5', function(){
    const expected = 5;
    calculator.previousTotal = 4;
    calculator.add(1);
    assert.equal(calculator.runningTotal, expected);
  });

  it("it can subtract 4 from 7 and get 3", function(){
    const expected = 3;
    calculator.previousTotal = 7;
    calculator.subtract(4);
    assert.equal(calculator.runningTotal, expected)
  })
});
