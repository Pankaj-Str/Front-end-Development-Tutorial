# JavaScript variables

In JavaScript, variables are used to store data values. These values can be numbers, strings, objects, arrays, functions, and more. Variables provide a way to label and reference these values throughout your code.

Here's how you can declare a variable in JavaScript:

```javascript
var myVariable; // Declaration
```

In modern JavaScript, you can also use `let` and `const` to declare variables. The key difference between these three keywords lies in their scoping and mutability:

1. `var`: Variables declared with `var` are function-scoped or globally-scoped. This means they are accessible within the function where they are defined or globally if defined outside of any function.

2. `let`: Variables declared with `let` are block-scoped. They are accessible only within the block (portion of code within curly braces) where they are defined.

3. `const`: Variables declared with `const` are also block-scoped, but they cannot be reassigned after their initial assignment. However, it's important to note that while a `const` variable cannot be reassigned, the value it holds might still be mutable if it's an object or an array.

Here's how you can assign values to variables:

```javascript
var name = "John"; // String
let age = 30;      // Number
const PI = 3.1416; // Constant
```

And you can later change the values of `name` and `age`:

```javascript
name = "Jane";
age = 25;
```

Remember that JavaScript is a dynamically typed language, which means you don't need to explicitly declare the data type of a variable. The interpreter figures out the data type based on the assigned value.

You can also declare and assign a value to a variable in a single line:

```javascript
let greeting = "Hello, World!";
```

It's good practice to give variables meaningful names that indicate their purpose. This makes your code more readable and maintainable. Additionally, JavaScript variable names are case-sensitive.

Here's a simple example that demonstrates these concepts:

```javascript
function greet() {
    var message = "Hello from inside the function!";
    console.log(message);
}

var message = "Hello from outside the function!";
greet();
console.log(message);
```

