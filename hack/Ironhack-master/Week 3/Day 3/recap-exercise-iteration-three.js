function zeroCool(array) {
  return exampleArray.reduce(function (finalResult, i, posI) {
    return exampleArray.reduce(function (iterationResult, j, posJ) {
      return i + j === 0
        ? iterationResult.concat('(' + posI + ',' + posJ + ')')
        : iterationResult;
    }, finalResult);
  }, [])
}

var exampleArray = [ 2, -5, 10,  5,  4, -10,  0 ];
console.log(getZeroSums(exampleArray));
console.log(zeroCool(exampleArray));