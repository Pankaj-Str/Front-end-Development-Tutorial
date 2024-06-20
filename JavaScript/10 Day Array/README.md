
## Topic
```
1. Arrays
2. Array Methods
3. Array Sort
4. Array Iteration
5. Array Const
```
# Arrays

Arrays are a data structure used to store and organize multiple values. Arrays can hold values of different types, including numbers, strings, objects, and even other arrays. Arrays are incredibly versatile and widely used in JavaScript programming. Here's an overview of working with arrays:

**1. Creating Arrays:**

You can create arrays using array literals or the `Array` constructor.

```javascript
let fruits = ['apple', 'banana', 'orange'];
let numbers = new Array(1, 2, 3, 4, 5);
```

**2. Accessing Array Elements:**

Array elements are accessed using zero-based indices.

```javascript
console.log(fruits[0]); // Output: apple
console.log(numbers[2]); // Output: 3
```

**3. Modifying Array Elements:**

You can modify array elements by assigning new values.

```javascript
fruits[1] = 'grape';
console.log(fruits); // Output: ['apple', 'grape', 'orange']
```

**4. Array Methods:**

JavaScript provides a wide range of built-in methods for working with arrays, such as `push`, `pop`, `shift`, `unshift`, `slice`, `splice`, `concat`, `join`, `indexOf`, `includes`, and more.

```javascript
fruits.push('pear');         // Add element to end
fruits.pop();                // Remove last element
fruits.shift();              // Remove first element
fruits.unshift('kiwi');      // Add element to the beginning
let slicedFruits = fruits.slice(1, 3); // Create a new array with elements from index 1 to 2
```

**5. Iterating through Arrays:**

You can use loops or iteration methods to traverse through array elements.

```javascript
for (let i = 0; i < fruits.length; i++) {
    console.log(fruits[i]);
}

fruits.forEach(function(fruit) {
    console.log(fruit);
});
```

**6. Multidimensional Arrays:**

Arrays can contain other arrays, creating multidimensional arrays or "arrays of arrays."

```javascript
let matrix = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
];
```

**7. Array Length:**

The `length` property of an array indicates the number of elements in the array.

```javascript
console.log(fruits.length); // Output: 3
```

# Array Methods


**1. `push()` and `pop()`:**

- `push()`: Adds one or more elements to the end of an array.
- `pop()`: Removes and returns the last element of an array.

```javascript
let fruits = ['apple', 'banana', 'orange'];
fruits.push('kiwi'); // ['apple', 'banana', 'orange', 'kiwi']
let removedFruit = fruits.pop(); // 'kiwi'
```

**2. `unshift()` and `shift()`:**

- `unshift()`: Adds one or more elements to the beginning of an array.
- `shift()`: Removes and returns the first element of an array.

```javascript
let colors = ['red', 'green', 'blue'];
colors.unshift('yellow'); // ['yellow', 'red', 'green', 'blue']
let removedColor = colors.shift(); // 'yellow'
```

**3. `concat()`:**

Concatenates two or more arrays and returns a new array.

```javascript
let array1 = [1, 2, 3];
let array2 = [4, 5, 6];
let combinedArray = array1.concat(array2); // [1, 2, 3, 4, 5, 6]
```

**4. `slice()`:**

Returns a shallow copy of a portion of an array into a new array.

```javascript
let originalArray = [1, 2, 3, 4, 5];
let slicedArray = originalArray.slice(1, 4); // [2, 3, 4]
```

**5. `splice()`:**

Changes the contents of an array by removing or replacing existing elements.

```javascript
let array = [1, 2, 3, 4, 5];
array.splice(2, 1); // Removes element at index 2
array.splice(1, 0, 'a', 'b'); // Inserts 'a' and 'b' at index 1
```

**6. `forEach()`:**

Executes a provided function once for each array element.

```javascript
let numbers = [1, 2, 3, 4, 5];
numbers.forEach(function(number) {
    console.log(number);
});
```

**7. `map()`:**

Creates a new array by applying a provided function to each element of the array.

```javascript
let doubledNumbers = numbers.map(function(number) {
    return number * 2;
}); // [2, 4, 6, 8, 10]
```

**8. `filter()`:**

Creates a new array with all elements that pass a provided test function.

```javascript
let evenNumbers = numbers.filter(function(number) {
    return number % 2 === 0;
}); // [2, 4]
```

**9. `find()`:**

Returns the first element in the array that satisfies a provided testing function.

```javascript
let firstEvenNumber = numbers.find(function(number) {
    return number % 2 === 0;
}); // 2
```

**10. `indexOf()` and `lastIndexOf()`:**

- `indexOf()`: Returns the first index at which a given element is found.
- `lastIndexOf()`: Returns the last index at which a given element is found.

```javascript
let array = [1, 2, 3, 4, 2, 5];
let index1 = array.indexOf(2); // 1
let index2 = array.lastIndexOf(2); // 4
```

# Array Sort

In JavaScript, arrays can be sorted using the `sort()` method. By default, the `sort()` method sorts the elements of an array in lexicographic (alphabetical) order. However, you can also provide a custom sorting function to define your own sorting criteria. Here's how array sorting works:

**1. Default Sorting:**

The `sort()` method sorts array elements in lexicographic order (string order) by default.

```javascript
let fruits = ['banana', 'apple', 'orange', 'grape'];
fruits.sort();
console.log(fruits); // Output: ['apple', 'banana', 'grape', 'orange']
```

**2. Numeric Sorting:**

For numbers, the default sorting behavior may not work as expected because it sorts elements as strings. To sort numbers properly, provide a comparison function.

```javascript
let numbers = [10, 5, 8, 1, 7];
numbers.sort(function(a, b) {
    return a - b;
});
console.log(numbers); // Output: [1, 5, 7, 8, 10]
```

**3. Custom Sorting:**

You can define a custom sorting function to determine the order of elements based on specific criteria.

```javascript
let people = [
    { name: 'Alice', age: 30 },
    { name: 'Bob', age: 25 },
    { name: 'Eve', age: 28 }
];

people.sort(function(personA, personB) {
    return personA.age - personB.age;
});

console.log(people);
/* Output:
[
    { name: 'Bob', age: 25 },
    { name: 'Eve', age: 28 },
    { name: 'Alice', age: 30 }
]
*/
```

**4. Reversed Sorting:**

To sort in descending order, simply reverse the comparison logic in the custom sorting function.

```javascript
let reversedNumbers = [10, 5, 8, 1, 7];
reversedNumbers.sort(function(a, b) {
    return b - a;
});
console.log(reversedNumbers); // Output: [10, 8, 7, 5, 1]
```

Remember that the `sort()` method modifies the original array. If you want to keep the original array intact while obtaining a sorted version, you can make a copy of the array before sorting or use the `slice()` method to create a new array with the same elements.

```javascript
let originalArray = [3, 1, 2];
let sortedArray = originalArray.slice().sort(); // Creates a sorted copy of the array
console.log(originalArray); // Output: [3, 1, 2]
console.log(sortedArray);   // Output: [1, 2, 3]
```


# Array Iteration

Iterating over arrays is a fundamental task in JavaScript programming. You can use various methods to loop through array elements and perform operations on them. Here are different ways to iterate over arrays in JavaScript:

**1. `for` Loop:**

The traditional `for` loop allows you to iterate through each array index and access its elements.

```javascript
let numbers = [1, 2, 3, 4, 5];

for (let i = 0; i < numbers.length; i++) {
    console.log(numbers[i]);
}
```

**2. `forEach()` Method:**

The `forEach()` method is a more concise way to loop through array elements. It calls a provided function for each element.

```javascript
numbers.forEach(function(number) {
    console.log(number);
});
```

**3. `for...of` Loop:**

The `for...of` loop provides a simpler syntax to iterate over the values of an iterable object, such as an array.

```javascript
for (let number of numbers) {
    console.log(number);
}
```

**4. `map()` Method:**

The `map()` method creates a new array by applying a function to each element of the original array.

```javascript
let doubledNumbers = numbers.map(function(number) {
    return number * 2;
});

console.log(doubledNumbers);
```

**5. `filter()` Method:**

The `filter()` method creates a new array with elements that pass a specified test function.

```javascript
let evenNumbers = numbers.filter(function(number) {
    return number % 2 === 0;
});

console.log(evenNumbers);
```

**6. `reduce()` Method:**

The `reduce()` method applies a function to reduce the array to a single value.

```javascript
let sum = numbers.reduce(function(total, number) {
    return total + number;
}, 0);

console.log(sum);
```

**7. `every()` and `some()` Methods:**

The `every()` method tests if all array elements pass a specified test, while the `some()` method tests if at least one element passes the test.

```javascript
let allPositive = numbers.every(function(number) {
    return number > 0;
});

let hasNegative = numbers.some(function(number) {
    return number < 0;
});

console.log(allPositive); // false
console.log(hasNegative); // false
```

# Array Const

In JavaScript, the `const` keyword is used to declare variables that are meant to remain constant and immutable after their initial assignment. However, when it comes to arrays and objects declared with `const`, there's an important distinction to understand.

Using `const` with arrays means that you cannot reassign the variable to a completely new array. However, you can still modify the existing array by changing its elements or properties. This is because the variable itself holds a reference to the array's memory location, and that reference doesn't change.

Here's an example to illustrate this behavior:

```javascript
const numbers = [1, 2, 3];

numbers[0] = 10; // Modifying an element is allowed
console.log(numbers); // Output: [10, 2, 3]

numbers.push(4); // Modifying the array using array methods is allowed
console.log(numbers); // Output: [10, 2, 3, 4]

numbers = [5, 6, 7]; // This will result in an error
```

In this example, you can modify the elements of the `numbers` array and even use array methods to modify its content. However, trying to reassign the `numbers` variable to a new array will result in an error because `const` prevents reassignment of the variable itself.

If you want to create an array that is completely immutable and cannot be modified after its creation, you might consider using the `Object.freeze()` method:

```javascript
const immutableNumbers = Object.freeze([1, 2, 3]);
immutableNumbers[0] = 10; // This will have no effect
console.log(immutableNumbers); // Output: [1, 2, 3]
```

Keep in mind that while `Object.freeze()` can make an array's elements immutable, it comes with some limitations and might not provide deep immutability for nested objects within the array. If deep immutability is required, you might need to use more complex techniques or libraries that provide immutable data structures.
