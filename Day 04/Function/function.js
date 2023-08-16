// basic function
function info(){
    console.log("codeswithpankaj.com")
}

info()

// function with parameters

function web(website){
    console.log("this is website name : "+website);
}

// calling function
web("p4n.in")
web("p4n.store")

//Function Expression:
let msg = function(info){
    console.log("Website Name : "+info);
    console.log("Welcome to Learning JAVASCRIPT");
}

msg("p4n.in")

//Arrow Functions (ES6+): 
let getinfo = (name,age,height) => console.log(name+height+age);

getinfo("joy",12,4.5);

// Return Statement
function subtract(a, b) {
    return a - b;
}

console.log(subtract(8, 4)); // Output: 4

// Anonymous Functions:
setTimeout(function() {
    console.log("Delayed message");
}, 1000);

setTimeout(() => {
    console.log("Delayed for 1 second.");
  }, 1000);
  
