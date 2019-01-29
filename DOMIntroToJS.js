var doc = document;
var p1 = document.getElementById('p1');
console.log(p1);
var divs = document.getElementsByName('paragraphHolder');
console.log(divs);
document.getElementsByClassName('row');
document.getElementsByTagName('p');
document.getElementsByTagName('link');

var btnElement = document.getElementById('btn');//retrieve DOM by ID
console.log(btnElement.hasAttribute('disabled'));//can pass in the name of any attribute  in quotes

function toggleButton(){
    if(btnElement.hasAttribute('disabled')){
        btnElement.removeAttribute('disabled');
    }
    else {
        btnElement.disabled = true;
    }
}

var p1Sibling = p1.nextSibling;
var p1ElementSibling = p1.nextElementSibling;
/*
    nodes 
    -   elements are element nodes
    -   node.nodevalue(); would obtain the node info
*/

console.log('p1 Sibling');
console.log('p1 Element Sibling');
console.log(p1ElementSibling);

var div1Children = document.getElementById('div1').children;
console.log(div1Children);

function addToTable(){
    //grab the info from the form
    var name = document.getElementById('name').value;
    var age = document.getElementById('age').value;
    var color = document.getElementById('favoriteColor').value;
    //add the info to the table

    //sub-steps
    //  create the table elements that we want to add
    var newRow = document.createElement('tr');//creates a new table row element
    var nameData = document.createElement('td');//created dummy table elements
    var ageData = document.createElement('td');
    var colorData = document.createElement('td');

    //step 2.2: add table data elements as children of the table row
    newRow.appendChild('nameData');//creates a new 
    console.log(newRow.innerHTML);
    newRow.appendChild('ageData');
    console.log(newRow.innerHTML);
    newRow.appendChild('colorData');
    console.log(newRow.innerHTML);

    //2.3 utilize form info to customize the td elements
    nameData.innerText = name;
    ageData.innerText = age;
    colorData.style.backgroundColor = color;//accessing the style property of the DOM element within javascript

    //2.4 add new table row to the table
    document.getElementById('personTable').appendChild(newRow);//creates a new row under the parent table
    console.log(newRow.innerHTML);

    document.getElementById('name').value = "";
    document.getElementById('age').value = "";
    document.getElementById('color').value = "#000000";

}