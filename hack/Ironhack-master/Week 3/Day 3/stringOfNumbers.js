function stringNumbersToArray(str) {
  return str.split(':').map(function(item) {
    return parseInt(item, 10);
  });
}

function sum(x, y) {
  return x + y;
}

function sumArray(array) {
  return array.reduce(sum, 0);
}

function avgArray(array) {
  return sumArray(array) / array.length;
}

function calculate(numbers) {
  return avgArray(stringNumbersToArray(numbers));
}

console.log(calculate("80:70:90:100"));