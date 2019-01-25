function Person(n,a){
    this.name=n;
    this.age=a;
    this.printName=function(){
        console.log(this.name);
    }
}

function makePerson(n,a){
    var p={"name" : n, "age" : a};
    return p;
}

/*
Functions:
    -   they ignore extra parameters passed to them
    -   funcitons are objects
    -   cannot be overloaded
    -   default data type is undefined(Javascript) vs null(Apex)
    -   they can be passed or stored like any other value
    -   call functions that are properties of objects "methods"
    -   every function has a 'this' property. what 'this' returns is bound at invocation time (run time)
    -   three different invocations:
        -   global
        -   the current object being created (current instantiation)
        -   references the object your calling the method on
*/

function thisFunc(){
    //invoked function form
    console.log(this);
}

/*
Scopes
    -   function scope(local scope)
        -   declare a variable  inside a functions using the var keyword
        -   only accessible within the function
    -   global scope
        -   declared anywhere without using the var keyword
        -   accessable everywhere
    -   block scope
        -   declaring a variable with the let keyword
        -   accessable within the block statement or expression it's decalred within
*/

function globalTest(){
    globalVar = 5;
    var funcyVar = 'Funcy Cole Medina';
    printGlobalVar();
}
globalTest();
console.log(globalVar);
globalVar = 10; //console.log(funcyVar);//not local so throws error
var funcyVar = 'I am global now';//local variable hoisting...will hoist the new var defenition to the 

function printGlobalVar(){
    console.log(globalVar);
}

function varTest(){
    var x = 1; // keyword var (non-shadowing)
    if(true){
        var x = 2; //same variable x
        console.log(x); //retunrs 2
    }
    console.log(x); //returns 2
}

function letTest(){
    let x = 1; // 
    if(true){
        let x = 2; //different variables x (block scope shadwoing)
        console.log(x); // returns 2
    }
    console.log(x); // returns 1
}

function varTest2(){
    var x = 1; // keyword var (non-shadowing)
    console.log(y);
    if(true){
        var x = 2; //same variable x
        console.log(x); //retunrs 2
    }
    console.log(x); //returns 2
}

function letTest2(){
    let x = 1; // 
    if(true){
        let y = 2; //different variables x (block scope shadwoing)
        console.log(x); // x will not be returned because its within a nested block and not accessable
    }
    console.log(y); // since y is inaccessable from the nested block scope, returns undefined.
}