function matrixElementsSum(matrix) {
  var grandTotal = 0;
  for (var i=0;i< matrix.length;i++) {
    for (var k=0;k< matrix[i].length;k++) {

      if (matrix[i][k] > 0) {
        var ghost = false;
        for (var j = i; j >= 0; j--) {
          if (matrix[j][k] <= 0) {
            ghost = true;
          }
        }
        if (ghost === false) {
          grandTotal += matrix[i][k]
        }
      }
    }
  }
  return grandTotal;
}
// testing git
// testing new branch
