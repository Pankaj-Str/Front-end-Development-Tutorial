## Topic
```
1. Dates
2. Date Formats
3. Date Get Methods
4. Date Set Methods
```
# Date
The `Date` object is used to work with dates and times. 
It allows you to create, manipulate, and format dates and times

**1. Creating a Date:**

You can create a `Date` object using various constructors:

```javascript
// Current date and time
let currentDate = new Date();

// Specific date and time
let specificDate = new Date("August 11, 2023 10:00:00");

// Date using individual components
let dateComponents = new Date(2023, 7, 11, 10, 0, 0); // Month is 0-based (0 = January)
```

**2. Getting Date Components:**

You can retrieve various components of a `Date` object:

```javascript
let year = currentDate.getFullYear();
let month = currentDate.getMonth(); // 0-based (0 = January)
let day = currentDate.getDate();
let hours = currentDate.getHours();
let minutes = currentDate.getMinutes();
let seconds = currentDate.getSeconds();
let milliseconds = currentDate.getMilliseconds();
```

**3. Formatting Dates:**

You can format dates into strings using various methods:

```javascript
let formattedDate = currentDate.toDateString();
let formattedTime = currentDate.toTimeString();
let formattedDateTime = currentDate.toLocaleString();
```

**4. Date Methods:**

The `Date` object provides methods to manipulate and compare dates:

```javascript
currentDate.setFullYear(2024);
currentDate.setMonth(11); // 0-based (11 = December)
currentDate.setDate(25);
currentDate.setHours(12);
currentDate.setMinutes(30);
currentDate.setSeconds(0);

let futureDate = new Date();
futureDate.setDate(futureDate.getDate() + 7); // Adding 7 days
```

**5. Time Operations:**

You can perform time-related operations using milliseconds:

```javascript
let startTime = new Date();
// ... do something ...
let endTime = new Date();

let elapsedTime = endTime - startTime; // Difference in milliseconds
```

**6. Timezones:**

JavaScript's `Date` object operates in the user's local timezone. To work with specific timezones, you might need to use third-party libraries or APIs.

**7. Parsing Dates:**

You can parse date strings using `Date.parse()`:

```javascript
let timestamp = Date.parse("August 11, 2023");
let parsedDate = new Date(timestamp);
```
# Date Formats
 
Formatting dates involves converting `Date` objects into human-readable strings using various patterns. The `Intl.DateTimeFormat` object is commonly used for formatting dates and times according to specific locales. Here are some common date formats in JavaScript:

**1. Default Format:**

The default format of `Date` objects is typically something like: `"Wed Aug 11 2023 10:00:00 GMT+0300 (Eastern European Summer Time)"`.

**2. Using `Intl.DateTimeFormat`:**

The `Intl.DateTimeFormat` object provides more control over date and time formatting, including options for specifying locales and formats.

```javascript
let currentDate = new Date();

let options = { year: 'numeric', month: 'long', day: 'numeric' };
let formattedDate = new Intl.DateTimeFormat('en-US', options).format(currentDate);
console.log(formattedDate); // Output: August 11, 2023

options = { hour: 'numeric', minute: 'numeric', second: 'numeric', timeZoneName: 'short' };
let formattedTime = new Intl.DateTimeFormat('en-US', options).format(currentDate);
console.log(formattedTime); // Output: 10:00:00 AM GMT+3
```

**3. Custom Formatting:**

If you need specific custom date formats, you can manually construct the desired format using `Date` object methods.

```javascript
let currentDate = new Date();

let formattedDate = `${currentDate.getMonth() + 1}/${currentDate.getDate()}/${currentDate.getFullYear()}`;
console.log(formattedDate); // Output: 8/11/2023

let formattedTime = `${currentDate.getHours()}:${currentDate.getMinutes()}:${currentDate.getSeconds()}`;
console.log(formattedTime); // Output: 10:0:0
```

**4. Third-Party Libraries:**

There are also third-party libraries like `date-fns`, `moment.js`, and `luxon` that offer more advanced and flexible date formatting capabilities.

```javascript
// Using date-fns
const format = require('date-fns/format');
const currentDate = new Date();
const formattedDate = format(currentDate, 'MMMM d, yyyy');
console.log(formattedDate); // Output: August 11, 2023

// Using moment.js
const moment = require('moment');
const currentDate = new Date();
const formattedDate = moment(currentDate).format('MMMM D, YYYY');
console.log(formattedDate); // Output: August 11, 2023
```

Different scenarios may require different formatting approaches. Using the built-in `Intl.DateTimeFormat` object is recommended for most cases, as it provides a standardized way to format dates according to user preferences and locales.

# Date Get Methods

The `Date` object provides several methods to retrieve various components of a date, such as the year, month, day, and time. Here are the commonly used methods for getting date components:

**1. `getFullYear()`:**

Returns the year (as a four-digit number) of the `Date` object.

```javascript
let currentDate = new Date();
let year = currentDate.getFullYear();
console.log(year); // Output: Current year (e.g., 2023)
```

**2. `getMonth()`:**

Returns the month (0-based, where 0 represents January and 11 represents December) of the `Date` object.

```javascript
let currentDate = new Date();
let month = currentDate.getMonth();
console.log(month); // Output: Current month (0 to 11)
```

**3. `getDate()`:**

Returns the day of the month (1 to 31) of the `Date` object.

```javascript
let currentDate = new Date();
let day = currentDate.getDate();
console.log(day); // Output: Current day of the month (1 to 31)
```

**4. `getDay()`:**

Returns the day of the week (0-based, where 0 represents Sunday and 6 represents Saturday) of the `Date` object.

```javascript
let currentDate = new Date();
let dayOfWeek = currentDate.getDay();
console.log(dayOfWeek); // Output: Current day of the week (0 to 6)
```

**5. `getHours()`, `getMinutes()`, `getSeconds()`, `getMilliseconds()`:**

These methods return the respective components of the time portion of the `Date` object.

```javascript
let currentDate = new Date();
let hours = currentDate.getHours();
let minutes = currentDate.getMinutes();
let seconds = currentDate.getSeconds();
let milliseconds = currentDate.getMilliseconds();

console.log(hours, minutes, seconds, milliseconds);
```
# Date Set Methods

The `Date` object provides methods to set various components of a date and time. These methods allow you to modify individual parts of a `Date` object. Here are the commonly used `Date` set methods:

**1. `setFullYear(year [, month [, day]])`:**

Sets the year, optionally the month (0-11), and optionally the day (1-31) of the `Date` object.

```javascript
let currentDate = new Date();
currentDate.setFullYear(2024);
currentDate.setMonth(11); // 0-based (11 = December)
currentDate.setDate(25);

console.log(currentDate);
```

**2. `setMonth(month [, day])`:**

Sets the month (0-11) and optionally the day (1-31) of the `Date` object.

```javascript
let currentDate = new Date();
currentDate.setMonth(6); // 0-based (6 = July)
currentDate.setDate(15);

console.log(currentDate);
```

**3. `setDate(day)`:**

Sets the day of the month (1-31) of the `Date` object.

```javascript
let currentDate = new Date();
currentDate.setDate(10);

console.log(currentDate);
```

**4. `setHours(hours [, minutes [, seconds [, milliseconds]]])`:**

Sets the hours, optionally the minutes, optionally the seconds, and optionally the milliseconds of the `Date` object.

```javascript
let currentDate = new Date();
currentDate.setHours(14);
currentDate.setMinutes(30);
currentDate.setSeconds(0);
currentDate.setMilliseconds(0);

console.log(currentDate);
```

**5. `setMinutes(minutes [, seconds [, milliseconds]])`:**

Sets the minutes, optionally the seconds, and optionally the milliseconds of the `Date` object.

```javascript
let currentDate = new Date();
currentDate.setMinutes(45);
currentDate.setSeconds(0);
currentDate.setMilliseconds(0);

console.log(currentDate);
```

**6. `setSeconds(seconds [, milliseconds])`:**

Sets the seconds and optionally the milliseconds of the `Date` object.

```javascript
let currentDate = new Date();
currentDate.setSeconds(30);
currentDate.setMilliseconds(0);

console.log(currentDate);
```

**7. `setMilliseconds(milliseconds)`:**

Sets the milliseconds of the `Date` object.

```javascript
let currentDate = new Date();
currentDate.setMilliseconds(500);

console.log(currentDate);
```

