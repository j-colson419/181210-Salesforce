/*Fill in the functions and submit them to your branch in a file called JSHWPart1.js
gp*/
var homework = {};

/*
 1. Return the nth fibonacci number

 f(0) = 0
 f(1) = 1
 f(10) = 55
*/
homework.fibonacci = function(n){
	if(n > 1){
		return fibonacci(n-1) + fibonacci(n-2); //recursively calls n to 
	}
	else{
		
		return n;
	}
}

/*
 2. Sort array of integers

 f([2,4,5,1,3,1]) = [1,1,2,3,4,5]

 Don't use the Array sort() method... that would be lame.
*/
homework.sort = function(array)
{
	var swap;
	for(var i = 0; i < array.length; i++)
	{
		for(var j = i+1; j < array.length-1-i; j++)
		{
			if(array[i] > array[j])
			{
				swap = array[i];
				array[i] = array[j];
				array[j] = swap;
			}
			else
			{
				i++;
			}
		}
	}
}//end sort function

/*
 3. Return the factorial of n

 f(0) = 1
 f(1) = 1
 f(3) = 6
*/
homework.factorial = function(n){
	
	if(n >= 1){
		return n * factorial(n-1);//recursively returns n * n!
	}
	else{
		return n;
	}
}

/*
 4. Rotate left

 Given array, rotate left n times and return array

 f([1,2,3,4,5], 1) = [2,3,4,5,1]
 f([1,2,3,4,5], 6) = [2,3,4,5,1]
 f([1,2,3,4,5], 3) = [4,5,1,2,3]

*/
homework.rotateLeft = function(array, n) 
{
	console.log('Beginning array: ' + array);
	var stack;
	for(i = 0; i < array.length; i++){
		for(j = i; j < n; j++){
			stack = array.splice(i, j);
			console.log('array after elements removed: ' + array);
			console.log('stack of removed elements: ' + stack);
			array.add(stack);
		}
	}
	console.log('new array after shift: ' + array);
}

/*
 5. Balanced Brackets

 A bracket is any one of the following: (, ), {, }, [, or ]

 The following are balanced brackets:
    ()
    ()()
    (())
    ({[]})

 The following are NOT balanced brackets:
 (
 )
 (()
 ([)]

 Return true if balanced
 Return false if not balanced
*/
homework.balancedBrackets = function(bracketsString){
	var openBracket = [];
	var j = openBracket.lenght;
	
	for(i = 0; i < bracketsString.length; i++){
		if(bracketsString[i] === '(' || bracketsString[i] === '{' || bracketsString[i] === '[' || bracketsString[i] === '<'){
			openBracket.push(bracketsString[i]);
		}
		if(bracketsString[i] === ')' && openBracket[j-1] === '(' ){
			openBrackets[i].pop;
		}
		if(bracketsString[i] === '}' && openBracket[j-1] === '{' ){
			openBrackets[i].pop;
		}
		if(bracketsString[i] === ']' && openBracket[j-1] === '[' ){
			openBrackets[i].pop;
		}
		if(bracketsString[i] === '>' && openBracket[j-1] === '<' ){
			openBrackets[i].pop;
		}
		if(bracketsString[i] === ')' && openBracket[j-1] !== '(' ){
			return false;
		}
		if(bracketsString[i] === '}' && openBracket[j-1] !== '{' ){
			return false;
		}
		if(bracketsString[i] === ']' && openBracket[j-1] !== '[' ){
			return false;
		}
		if(bracketsString[i] === '>' && openBracket[j-1] !== '<' ){
			return false;
		}
	}//end while loop
	if(openBracket == isEmpty()){
		return true;
	}
}//end function
