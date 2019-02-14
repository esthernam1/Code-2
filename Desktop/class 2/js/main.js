
// document.getElementById("george").innerHTML = "Hi I am George"; 

// document.getElementsByClassName("classy")[0].innerHTML = "i'm soooo classy"; 

document.getElementsByTagName("p")[0].innerHTML = "Hi!"; 

// document.querySelector("div").innerHTML = "Divtastic!"; 

// document.querySelector(".classy").innerHTML = "Addition & Subtraction"; 

// document.querySelector("#george").innerHTML = " WELCOME TO YOUR CALCULATOR"; 

// document.createElement("P");

const this_btn = document.getElementById("clickMe");

const add_btn = document.getElementById("add");
const sub_btn = document.getElementById("sub");
const mult_btn = document.getElementById("mult");
const div_btn = document.getElementById("div");

const output = document.getElementById("output");

// document.creatElement("resetButton").innerHTML =

//custom function that is called when the button is clicked
// function clickMe(){
// 	alert("Welcome! This is a calculator!");
// }

this_btn.addEventListener("click",anyClick);
that_btn.addEventListener("click",anyClick);
other_btn.addEventListener("click",anyClick);

add_btn.addEventListener("click",anyClick);
sub_btn.addEventListener("click",anyClick);
mult_btn.addEventListener("click",anyClick);
div_btn.addEventListener("click",anyClick);
// that_btn.addEventListener("click",anyClick);
// other_btn.addEventListener("click",anyClick);

function anyClick(e){

	//identify which button sent the event
   let btn = e.target.id; 
   console.log(btn);

   if(btn == "clickMe"){
   		output.innerHTML = "How are ya";
   }
};

function anyClick(e){

	//identify which button sent the event
   let btn = e.target.id; 
   console.log(btn);

   if(btn == "add"){
   		output.innerHTML = "ADDED";
   }else if(btn == "sub"){
		output.innerHTML = "SUBTRACTED";
   }else if(btn == "mult"){
		output.innerHTML = "MULTIPLIED";	
   }else if(btn == "div"){
		output.innerHTML = "DIVIDED";	
   }
};


//global variables
	//for adding
	var n1 = document.getElementById("num1").value;
	var n2 = document.getElementById("num2").value;

	//for subtracting
	var n3 = document.getElementById("num3").value;
	var n4 = document.getElementById("num4").value;

	//for multiplying
	var n5 = document.getElementById("num5").value;
	var n6 = document.getElementById("num6").value;

	//for division
	var n5 = document.getElementById("num7").value;
	var n6 = document.getElementById("num8").value;


function addMe(){
	//sum is local to the function
	var sum = 
	Number(document.getElementById("num1").value) + 
	Number(document.getElementById("num2").value); 
		document.getElementById("input1").innerHTML = sum;
	// console.log(sum);
}



// function addMeToo(){
// 	n1=document.getElementById("num1").value;
// 	n2=document.getElementById("num2").value;
// 	var sum = 
// 		NumbeR(n1) + 
// 		Number(n2);
// 	console.log(sum);
// }


function subtractMe(){
	var diff = 
	Number(document.getElementById("num3").value) - 
	Number(document.getElementById("num4").value);
		document.getElementById("input2").innerHTML = diff;
	// console.log(diff);
}

function multiplyMe(){
	var product = 
	Number(document.getElementById("num5").value) *
	Number(document.getElementById("num6").value);
		document.getElementById("input3").innerHTML = product;
	// console.log(product);
}

function divideMe(){
	var quotient = 
	Number(document.getElementById("num7").value) /
	Number(document.getElementById("num8").value);
		document.getElementById("input4").innerHTML = quotient;
	// console.log(quotient);
}

function resetButton(){
	console.log('Runs');
	document.getElementById("input1").innerHTML = "<input type = 'text' id = 'num1'> <span> + </span><input type = 'text' id = 'num2'> <span> = </span>";
	document.getElementById("input2").innerHTML = "<input type = 'text' id = 'num3'> <span> + </span><input type = 'text' id = 'num4'> <span> = </span>";
	document.getElementById("input3").innerHTML = "<input type = 'text' id = 'num5'> <span> + </span><input type = 'text' id = 'num6'> <span> = </span>";
	document.getElementById("input4").innerHTML = "<input type = 'text' id = 'num7'> <span> + </span><input type = 'text' id = 'num8'> <span> = </span>";
}


