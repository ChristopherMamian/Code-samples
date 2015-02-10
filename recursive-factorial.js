var factorial = function(n) {
	// base case: 
	if (n === 0) {
	    return 1;
	}
	// recursive case:
	return n * factorial(n-1);
}; 

console.log("The value of 0! is " + factorial(0) + ".");
console.log("The value of 5! is " + factorial(5) + ".");

Program.assertEqual(factorial(0), 1);
Program.assertEqual(factorial(5), 120);
Program.assertEqual(factorial(6), 720);
Program.assertEqual(factorial(4), 24);