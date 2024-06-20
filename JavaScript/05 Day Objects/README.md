# Objects 

Objects are one of the fundamental data types that allow you to store and organize data in a structured way. Objects are collections of key-value pairs where each key is a string (or a Symbol) that maps to a value. Objects are versatile and widely used for representing structured data, modeling real-world entities, and more. Here's how you can work with objects in JavaScript:

**1. Object Literal:**

The simplest way to create an object is using an object literal, which is a comma-separated list of key-value pairs enclosed in curly braces.

```javascript
let person = {
    firstName: "John",
    lastName: "Doe",
    age: 30,
    isStudent: false
};
```

**2. Accessing Object Properties:**

You can access object properties using dot notation or square brackets.

```javascript
console.log(person.firstName); // Output: John
console.log(person["lastName"]); // Output: Doe
```

**3. Adding and Modifying Properties:**

You can add new properties or modify existing ones using the assignment operator.

```javascript
person.city = "New York";
person.age = 31;
```

**4. Nested Objects:**

Objects can contain other objects as properties, creating a hierarchical structure.

```javascript
let person = {
    firstName: "John",
    lastName: "Doe",
    address: {
        street: "123 Main St",
        city: "Anytown",
        country: "USA"
    }
};
```

**5. Removing Properties:**

You can delete properties from an object using the `delete` operator.

```javascript
delete person.age;
```

**6. Methods:**

You can define functions within an object. These functions are called methods.

```javascript
let person = {
    firstName: "John",
    lastName: "Doe",
    fullName: function() {
        return this.firstName + " " + this.lastName;
    }
};

console.log(person.fullName()); // Output: John Doe
```

**7. Object Constructor:**

You can create objects using a constructor function, but this approach is less common than using object literals.

```javascript
function Person(firstName, lastName) {
    this.firstName = firstName;
    this.lastName = lastName;
}

let person = new Person("John", "Doe");
```

**8. ES6 Classes:**

ES6 introduced classes, which provide a more structured way to create objects, especially when you need constructor functions and methods.

```javascript
class Person {
    constructor(firstName, lastName) {
        this.firstName = firstName;
        this.lastName = lastName;
    }

    fullName() {
        return this.firstName + " " + this.lastName;
    }
}

let person = new Person("John", "Doe");
```



## Examples of working with objects in JavaScript:

**1. Simple Object:**

```javascript
let person = {
    firstName: "John",
    lastName: "Doe",
    age: 30,
    isStudent: false
};

console.log(person.firstName); // Output: John
console.log(person.age);       // Output: 30

person.city = "New York";
console.log(person.city);      // Output: New York
```

**2. Nested Objects:**

```javascript
let person = {
    firstName: "John",
    lastName: "Doe",
    address: {
        street: "123 Main St",
        city: "Anytown",
        country: "USA"
    }
};

console.log(person.address.city); // Output: Anytown
```

**3. Object Methods:**

```javascript
let person = {
    firstName: "John",
    lastName: "Doe",
    fullName: function() {
        return this.firstName + " " + this.lastName;
    }
};

console.log(person.fullName()); // Output: John Doe
```

**4. Constructor Function:**

```javascript
function Person(firstName, lastName) {
    this.firstName = firstName;
    this.lastName = lastName;
}

let person = new Person("John", "Doe");
console.log(person.firstName); // Output: John
```

**5. ES6 Class:**

```javascript
class Person {
    constructor(firstName, lastName) {
        this.firstName = firstName;
        this.lastName = lastName;
    }

    fullName() {
        return this.firstName + " " + this.lastName;
    }
}

let person = new Person("John", "Doe");
console.log(person.fullName()); // Output: John Doe
```

**6. Using Object Methods to Manipulate Data:**

```javascript
let bankAccount = {
    balance: 1000,
    deposit: function(amount) {
        this.balance += amount;
        return "Deposited " + amount + " units. New balance: " + this.balance;
    },
    withdraw: function(amount) {
        if (amount <= this.balance) {
            this.balance -= amount;
            return "Withdrawn " + amount + " units. New balance: " + this.balance;
        } else {
            return "Insufficient balance.";
        }
    }
};

console.log(bankAccount.deposit(500));  // Output: Deposited 500 units. New balance: 1500
console.log(bankAccount.withdraw(300)); // Output: Withdrawn 300 units. New balance: 1200
console.log(bankAccount.withdraw(1500)); // Output: Insufficient balance.
```

These examples demonstrate different aspects of working with objects in JavaScript, from simple properties and nested objects to object methods and constructors. Objects are a powerful way to organize and manipulate data in your JavaScript programs.
