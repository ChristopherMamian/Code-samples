var factorial = function(n) {
    var result = 1;
    for(var i = n; n > 1; n--) {
        result = result * n;
    }
    
    return result;
};

console.log("The value of 5! should be " + 5*4*3*2*1);
console.log("The value of 5! is " + factorial(5));
console.log("The value of 0! should be 1");
console.log("The value of 0! is " + factorial(0));

Program.assertEqual(factorial(5), 120);
Program.assertEqual(factorial(0), 1);
Program.assertEqual(factorial(3), 6);
Program.assertEqual(factorial(6), 720);