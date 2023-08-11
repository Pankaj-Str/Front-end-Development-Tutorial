
## Topic

```
1. Loop For
2. Loop For In
3. Loop For Of
4. Loop While
5. Break
6. Iterables
```

# Loop For 

JavaScript, the `for` loop is a common type of loop that allows you to repeatedly execute a block of code for a specified number of iterations. It consists of three parts: initialization, condition, and iteration.

Here's the basic syntax of a `for` loop:

```javascript
for (initialization; condition; iteration) {
  // code to be executed in each iteration
}
```

- **Initialization:** This part is executed only once at the beginning of the loop. It usually involves initializing a loop control variable.

- **Condition:** This part is evaluated before each iteration. If the condition is `true`, the loop continues; if it's `false`, the loop terminates.

- **Iteration:** This part is executed at the end of each iteration. It's usually used to update the loop control variable.

Here's an example of using a `for` loop to iterate through numbers from 1 to 5 and print them:

```javascript
for (var i = 1; i <= 5; i++) {
  console.log(i);
}
```

Output:
```
1
2
3
4
5
```

In this example:
- The `i` variable is initialized to 1.
- The loop will continue as long as `i` is less than or equal to 5.
- After each iteration, the value of `i` is incremented by 1 (`i++`).


# `for...in` loop


The `for...in` loop in JavaScript is used to iterate over the properties of an object. It's particularly useful for looping through the keys or properties of an object. Here's the basic syntax:

```javascript
for (var key in object) {
  // code to be executed for each property
}
```

Here's an example of using the `for...in` loop to iterate through the properties of an object:

```javascript
var person = {
  name: "John",
  age: 30,
  occupation: "Engineer"
};

for (var key in person) {
  console.log(key + ": " + person[key]);
}
```

Output:
```
name: John
age: 30
occupation: Engineer
```

In this example, the loop iterates over each property in the `person` object. The `key` variable holds the name of the current property, and `person[key]` accesses the value of that property.

However, there are a few things to note about using the `for...in` loop:

1. It iterates over enumerable properties, including properties from the object's prototype chain. To avoid unexpected behavior, it's recommended to use `Object.hasOwnProperty()` to ensure that the property belongs to the object itself.
   
   ```javascript
   for (var key in object) {
     if (object.hasOwnProperty(key)) {
       // code to be executed for each own property
     }
   }
   ```

2. The order of iteration is not guaranteed and might vary between different JavaScript engines.

3. It's recommended to use `for...in` with objects and not with arrays, as it might not work as expected when dealing with arrays due to potential issues with the array's non-numeric properties.

# Loop For Of

The `for...of` loop in JavaScript is used to iterate over the elements of an iterable object, such as arrays, strings, maps, sets, and more. Unlike the `for...in` loop, which iterates over object properties, the `for...of` loop directly iterates over the values of the iterable object. Here's the basic syntax:

```javascript
for (var element of iterable) {
  // code to be executed for each element
}
```

Here's an example of using the `for...of` loop to iterate through an array:

```javascript
var colors = ["red", "green", "blue"];

for (var color of colors) {
  console.log(color);
}
```

Output:
```
red
green
blue
```

In this example, the `for...of` loop iterates over each element in the `colors` array, and the `color` variable holds the value of the current element.

Here are a few points to consider when using the `for...of` loop:

1. It's designed for iterating over values in iterable objects and provides a more concise and readable syntax compared to traditional `for` loops.

2. It doesn't work with objects directly because objects are not inherently iterable. Instead, it's best used with data structures like arrays, strings, maps, and sets.

3. The order of iteration is guaranteed for arrays and strings, and it follows the insertion order for sets and maps.

4. The `for...of` loop cannot be used to directly access the index or key of the current element. If you need access to indices, you might still prefer using the traditional `for` loop or combining the `for...of` loop with the `entries()` method for arrays and maps.

```javascript
// Using for...of with entries() for arrays
for (const [index, value] of colors.entries()) {
  console.log(index, value);
}
```

# Loop While 

The `while` loop in JavaScript is used to repeatedly execute a block of code as long as a specified condition evaluates to `true`. It's especially useful when the number of iterations is not known beforehand or when you want to loop until a certain condition is met.

Here's the basic syntax of a `while` loop:

```javascript
while (condition) {
  // code to be executed as long as the condition is true
}
```

Here's an example of using a `while` loop to count from 1 to 5:

```javascript
var i = 1;

while (i <= 5) {
  console.log(i);
  i++;
}
```

Output:
```
1
2
3
4
5
```

In this example:
- The loop continues as long as the condition `i <= 5` is `true`.
- The variable `i` is incremented by 1 in each iteration using the `i++` shorthand for `i = i + 1`.

It's important to ensure that the condition in a `while` loop eventually becomes `false`, otherwise, you might end up in an infinite loop, causing your program to hang or crash.

Here's another example using a `while` loop to simulate rolling a dice until a desired value is obtained:

```javascript
var targetValue = 6;
var rolledValue;

while (rolledValue !== targetValue) {
  rolledValue = Math.floor(Math.random() * 6) + 1; // Simulates rolling a dice
  console.log("Rolled:", rolledValue);
}

console.log("Target value achieved:", targetValue);
```

This loop continues rolling the dice until the desired `targetValue` is obtained. Once the condition is `false`, the loop terminates.

# `break` statement

The `break` statement is used to exit or terminate the execution of a loop or a switch statement prematurely. It's often used when a certain condition is met and you want to immediately stop the execution of the current loop or switch block. Here's how the `break` statement works:

```javascript
for (var i = 1; i <= 10; i++) {
  if (i === 5) {
    break; // Exit the loop when i is equal to 5
  }
  console.log(i);
}
```

Output:
```
1
2
3
4
```

In this example, the loop runs from `1` to `10`, but when `i` becomes `5`, the `break` statement is executed, causing the loop to terminate immediately. As a result, the numbers `1` to `4` are printed, and the loop doesn't continue to `5` and beyond.

Similarly, the `break` statement can also be used in a `switch` statement:

```javascript
var day = "Wednesday";

switch (day) {
  case "Monday":
    console.log("It's the start of the workweek.");
    break;
  case "Wednesday":
    console.log("Halfway through the week.");
    break; // Exit the switch block when Wednesday is matched
  case "Friday":
    console.log("TGIF - It's Friday!");
    break;
  default:
    console.log("It's another day.");
}
```

Output:
```
Halfway through the week.
```

In this example, the `switch` statement matches the `"Wednesday"` case and executes the corresponding code block, then immediately exits the switch block due to the `break` statement. This prevents the execution of the `"Friday"` case and the `default` case.

# Iterable

An "iterable" is an object that implements the iterable protocol, which defines a standardized way for looping over its values. Iterables are used with constructs like the `for...of` loop and the `...` (spread) operator. Any object that provides an implementation of the iterable protocol is considered iterable and can be iterated over using these constructs.

To be considered an iterable, an object must have a special method named `Symbol.iterator`. This method should return an iterator object. The iterator object should have a method named `next()` which returns an object with properties `value` and `done`. The `value` property represents the current value in the iteration, and the `done` property indicates whether the iteration is complete.

Here's an example of creating a simple iterable:

```javascript
var myIterable = {
  [Symbol.iterator]: function() {
    var index = 0;
    var data = [1, 2, 3, 4, 5];

    return {
      next: function() {
        if (index < data.length) {
          return { value: data[index++], done: false };
        } else {
          return { done: true };
        }
      }
    };
  }
};

// Using for...of loop to iterate over the iterable
for (var value of myIterable) {
  console.log(value);
}
```

Output:
```
1
2
3
4
5
```

In this example, the `myIterable` object implements the iterable protocol by providing a `Symbol.iterator` method that returns an iterator object. The iterator object's `next()` method is used to iterate over the values.

Common built-in examples of iterables in JavaScript include arrays, strings, maps, sets, and more. Here's how you can use the `for...of` loop with some of these built-in iterables:

```javascript
// Using for...of with an array
var numbers = [10, 20, 30];
for (var num of numbers) {
  console.log(num);
}

// Using for...of with a string
var str = "Hello";
for (var char of str) {
  console.log(char);
}

// Using for...of with a map
var myMap = new Map();
myMap.set("a", 1);
myMap.set("b", 2);
for (var [key, value] of myMap) {
  console.log(key, value);
}

// Using for...of with a set
var mySet = new Set([1, 2, 3]);
for (var val of mySet) {
  console.log(val);
}
```

Iterables play a significant role in modern JavaScript for simplifying and standardizing the process of looping over various data structures.
