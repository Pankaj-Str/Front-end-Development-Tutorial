// Creating Arrays:

let fruits = ['apple', 'banana', 'orange'];

console.log(fruits)

//let numbers = new Array(1, 2, 3, 4, 5);

//console.log(numbers)

// Accessing Array Elements:

console.log(fruits[1])

// Modifying Array Elements:

fruits[1] = 'samosa'
console.log(fruits)

// Array Methods:

fruits.push('pear');         // Add element to end
console.log(fruits);
let item = fruits.pop();                // Remove last element

console.log("remove item from array ",item)
console.log("After Remove - ",fruits)


item = fruits.shift();              // Remove first element
console.log("remove first element from array ",item)
console.log("After Remove - ",fruits)

fruits.unshift('kiwi');      // Add element to the beginning
console.log("After Add Elements - ",fruits)

let slicedFruits = fruits.slice(1, 3); // Create a new array with elements from index 1 to 2
console.log(slicedFruits)

// Iterating through Arrays:

fruits.forEach(function(fruit) {
    console.log(fruit);
})

// other way 

for (let index = 0; index < fruits.length; index++) {
    
    console.log(fruits[index])
    
}

let matrix = [[1, 2, 3],[4, 5, 6],[7, 8, 9]];

console.log(matrix[0][1])

//concat()

let array1 = [1, 2, 3];
let array2 = [4, 5, 6];
let combinedArray = array1.concat(array2); // [1, 2, 3, 4, 5, 6]
console.log(combinedArray)


function print(){
   
    let fruits = ['apple', 'banana', 'orange'];

   for (let index = 0; index < fruits.length; index++) {
    
    let element = fruits[index];

    document.write("<li>"+element+"</li>")
    
   }
}