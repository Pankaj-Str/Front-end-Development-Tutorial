# JavaScript variables

In JavaScript, variables are used to store data values. These values can be numbers, strings, objects, arrays, functions, and more. Variables provide a way to label and reference these values throughout your code.

Here's how you can declare a variable in JavaScript:

```javascript
var myVariable; // Declaration
```

In modern JavaScript, you can also use `let` and `const` to declare variables. The key difference between these three keywords lies in their scoping and mutability:

1. `var`: Variables declared with `var` are function-scoped or globally-scoped. This means they are accessible within the function where they are defined or globally if defined outside of any function.

```js
// Declaring multiple Variables
var name = "Peter Parker", age = 21, isMarried = false;

/* Longer declarations can be written to span
multiple lines to improve the readability */
var name = "Peter Parker",
age = 21,
isMarried = false;
```

2. `let`: Variables declared with `let` are block-scoped. They are accessible only within the block (portion of code within curly braces) where they are defined.

```js
// Declaring variables
let name = "Harry Potter";
let age = 11;
let isStudent = true;
```

3. `const`: Variables declared with `const` are also block-scoped, but they cannot be reassigned after their initial assignment. However, it's important to note that while a `const` variable cannot be reassigned, the value it holds might still be mutable if it's an object or an array.

```js
// Declaring constant
const PI = 3.14;
console.log(PI); // 3.14

// Trying to reassign
PI = 10; // error
```
