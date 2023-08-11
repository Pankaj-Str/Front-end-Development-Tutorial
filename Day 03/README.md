# Data Types

JavaScript has several data types that define the kinds of values you can work with. These data types can be broadly categorized into two main groups: primitive types and reference types.

**1. Primitive Data Types:**

Primitive data types represent single values and are immutable, meaning they cannot be changed once they are created. Here are the primitive data types in JavaScript:

- **Number:** Represents both integer and floating-point numbers.
- **String:** Represents sequences of characters enclosed in single ('') or double ("") quotes.
- **Boolean:** Represents true or false values.
- **Undefined:** Represents a variable that has been declared but has not been assigned a value.
- **Null:** Represents the intentional absence of any object value.
- **Symbol (ES6):** Represents a unique and immutable value, often used as object property keys.
- **BigInt (ES11):** Represents integers with arbitrary precision (used for very large numbers).

Examples:
```javascript
let num = 42;          // Number
let name = "Alice";    // String
let isValid = true;    // Boolean
let x;                 // Undefined
let y = null;          // Null
let uniqueKey = Symbol();  // Symbol
let bigNumber = 123cttpBkrznPTK5TkAyTxk1WgYYAGe9Qn;  // BigInt
```

**2. Reference Data Types:**

Reference data types are more complex and can hold multiple values. They are mutable, meaning you can change their contents without changing their identity. Here are the primary reference data types:

- **Object:** Represents a collection of key-value pairs, where values can be of any data type, including other objects or functions.
- **Array:** Represents an ordered list of values, accessible by their numerical indices.
- **Function:** Represents a reusable block of code that can be executed.

Examples:
```javascript
let person = { name: "John", age: 30 };          // Object
let numbers = [1, 2, 3, 4, 5];                  // Array
let greet = function(name) { return "Hello, " + name; };  // Function
```

JavaScript uses dynamic typing, which means you don't need to declare the data type of a variable explicitly. The data type is determined at runtime based on the value assigned to the variable. This dynamic typing allows for more flexibility but also requires careful consideration to avoid unexpected behavior.

