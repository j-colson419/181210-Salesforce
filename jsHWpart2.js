/* 	1. USA
	Define function getUSA()
	Find the html element that contains "USA".
	Print that element's contents.
 */

function getUSA(){
    var usofa = document.getElementsByTagName("span");

    for(i = 0; i < usofa.length; i++){

        if(usofa[i].innerHTML == "USA"){
            //console.log(usofa[i]);
            return usofa[i];
        }
    }
}


/* 	2. Sales
	Define function getPeopleInSales()
	Print the names of all the people in the sales department.
 */
function getPeopleInSales(){
    var tempEmp;
    var sales = document.getElementsByTagName("tr");
    var salesStack = [];
    //console.log(sales);

    for(var i = 1; i < sales.length; i++){ //iteration starts at element 1 to prevent returning the header row "Name"
        var elemChild = sales[i].childNodes;
        //console.log(elemChild.length);
        
        for(var j = 0; j < elemChild.length; j++){
            if(tempEmp == null){
                tempEmp = elemChild[j].innerHTML;
                //console.log(tempEmp);
            }
            if(elemChild[j].innerHTML == "Sales"){
                salesStack.push(tempEmp);
                tempEmp = null;
            }
        }
    }
    return salesStack;
}

/* 	3. Click Here
	Define function getAnchorChildren()
	Find all anchor elements with a <span> child.
	Print the contents of <span>
*/
function getAnchorChildren(){
	var spans = document.getElementsByTagName("a");
    //console.log(spans);
    var anchorStack = [];

    for(i = 0; i < spans.length; i++){
			var nodesChildren = spans[i].childNodes;

			for(var j = 0; j < nodesChildren.length; j++){
				if(nodesChildren[j].tagName == "SPAN"){
					anchorStack.push(nodesChildren[j].innerHTML);
					//console.log(anchorStack);
				}
			}
        }
	return anchorStack;
}

/* 	4. Hobbies
	Define function getSkills()
	Find all checked options in the 'skills' select element.
	Print the value and the contents.
*/
function getSkills(){

}

/*	5. Custom Attribute
	Define function getCustomAttribute()
	Find all elements with "data-customAttr" attribute
	Print the value of the attribute.
	Print the element that has the attribute.
*/
function getCustomAttribute(){
	var elemAttributes = Element.getAttribute("data-customAttr");
	console.log(elemAttributes);
	var attrStack = [];

    for(var i = 0; i < elemAttributes.length; i++){
		var attrNodes = elemAttributes[i];

		for(j = 0; j < attrNodes.length; j++){
			console.log(attrNodes);
			/*if(elemAttributes.getNamedItem == "data-customAttr"){
            console.log(elemAttributes);
        	}*/
		}
	}
	return attrStack;
}


/* 	6. Sum Event
	NOTE: Write unobtrusive Javascript
	Regarding these elements:
	<input id="num1" class="nums" type="text"/>
	<input id="num2" class="nums" type="text"/>
	<h3>Sum: span id="sum"></span></h3>
	define onchange event handler.
	Add <input> element values.
	Put the sum in the <span> element.
	If values cannot be added, put "Cannot add" in the <span> element
*/


/*	7. Skills Event
	NOTE: Write unobtrusive Javascript
	When user selects a skill, create an alert with a message similar to:
	"Are you sure CSS is one of your skills?"
	NOTE: no alert should appear when user deselects a skill.
*/


/*	8. Favorite Color Event
	NOTE: Write unobtrusive Javascript
	NOTE: This is regarding the favoriteColor radio buttons.
	When a user selects a color, create an alert with a message similar to:
	"So you like green more than blue now?"
	In this example, green is the new value and blue is the old value.
	Make the background color (of all favoriteColor radio buttons) the newly selected favoriteColor
*/



/*	9. Show/Hide Event
	NOTE: Write unobtrusive Javascript
	When user hovers over an employees name:
	Hide the name if shown.
	Show the name if hidden.
*/


/*	10. Current Time
	Regarding this element:
	<h5 id="currentTime"></h5>
	Show the current time in this element in this format: 9:05:23 AM
	The time should be accurate to the second without having to reload the page.
*/


/*	11. Delay
	Regarding this element:
	<p id="helloWorld">Hello, World!</p>
	Three seconds after a user clicks on this element, change the text to a random color.
*/


/*	12. Walk the DOM
	Define function walkTheDOM(node, func)
	This function should traverse every node in the DOM. Use recursion.
	On each node, call func(node).
*/