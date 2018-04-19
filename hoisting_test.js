let letTest = function() {
  for (let i = 0; i < 3; i++) {
    console.log(i);
  }
  // console.log(i); // causes error bc i is not defined in this scope
};

let varTest = function () {
  for (var i = 0; i < 3; i++) {
    console.log(i);
  }
  console.log(i); // prints out 3 because of variable hoisting
};

letTest();
varTest();