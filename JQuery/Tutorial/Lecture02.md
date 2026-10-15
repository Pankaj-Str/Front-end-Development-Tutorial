# jQuery HTML Tutorial with Examples

jQuery HTML methods allow us to get content, change text, add new elements, remove elements, modify CSS classes, change styles, and calculate element dimensions.

## Topics covered

| No. | Topic              | Important methods                                            |
| --- | ------------------ | ------------------------------------------------------------ |
| 1   | jQuery Get         | `text()`, `html()`, `val()`                                  |
| 2   | jQuery Set         | `text()`, `html()`, `val()`                                  |
| 3   | jQuery Add         | `append()`, `prepend()`, `before()`, `after()`               |
| 4   | jQuery Remove      | `remove()`, `empty()`, `detach()`                            |
| 5   | jQuery CSS Classes | `addClass()`, `removeClass()`, `toggleClass()`, `hasClass()` |
| 6   | jQuery CSS         | `css()`                                                      |
| 7   | jQuery Dimensions  | `width()`, `height()`, `innerWidth()`, `outerWidth()`        |

## 1. jQuery Get

The Get methods retrieve content or values from HTML elements.

- `text()` gets the text content.
- `html()` gets the HTML markup inside an element.
- `val()` gets the value of a form field.

### Example: Get text, HTML, and input value

```

<!DOCTYPE html>
<html>
<head>
    <title>jQuery Get Example</title>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
</head>
<body>

    <h2 id="heading">Welcome to jQuery</h2>

    <p id="message">Learn HTML manipulation.</p>

    <input type="text" id="username" value="Pankaj">

    <button id="getBtn">Get Data</button>

    <script>
        $(document).ready(function () {

            $("#getBtn").click(function () {

                let headingText = $("#heading").text();
                let paragraphHTML = $("#message").html();
                let username = $("#username").val();

                alert("Heading: " + headingText);
                alert("Paragraph HTML: " + paragraphHTML);
                alert("Username: " + username);

            });

        });
    </script>

</body>
</html>

```

Explanation:

1. `.text()` retrieves the heading's text.
2. `.html()` retrieves the paragraph's inner HTML.
3. `.val()` retrieves the input field's value.
4. Clicking the button displays the retrieved information.

For example, `$("#heading").text()` returns `Welcome to jQuery`.

## 2. jQuery Set

Set methods change an element's content or a form field's value.

### Example: Change text, HTML, and input value

```

<!DOCTYPE html>
<html>
<head>
    <title>jQuery Set Example</title>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
</head>
<body>

    <h2 id="heading">Old Heading</h2>

    <p id="message">Old paragraph</p>

    <input type="text" id="username" value="Guest">

    <button id="setBtn">Update Data</button>

    <script>
        $(document).ready(function () {

            $("#setBtn").click(function () {

                $("#heading").text("Welcome to Codes With Pankaj");

                $("#message").html(
                    "<b>Learn jQuery step by step!</b>"
                );

                $("#username").val("Pankaj Chouhan");

            });

        });
    </script>

</body>
</html>

```

Output after clicking Update Data:

- The heading changes to `Welcome to Codes With Pankaj`.
- The paragraph displays bold text.
- The input value changes to `Pankaj Chouhan`.

Important difference:

| Method                 | Purpose                 |
| ---------------------- | ----------------------- |
| `text("Hello")`        | Sets plain text         |
| `html("<b>Hello</b>")` | Sets HTML markup        |
| `val("Pankaj")`        | Sets a form field value |

Use `text()` for untrusted text. Avoid inserting untrusted input through `html()`, because it can introduce cross-site scripting (XSS) vulnerabilities.

## 3. jQuery Add

jQuery provides methods to insert new content into an existing HTML document.

before()

Content inserted before the selected element

Selected Element

after()

Content inserted after the selected element

prepend()

Beginning of element

append()

End of element

### Example: Add list items dynamically

```

<!DOCTYPE html>
<html>
<head>
    <title>jQuery Add Example</title>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
</head>
<body>

    <h2>Programming Languages</h2>

    <ul id="languages">
        <li>Python</li>
        <li>Java</li>
    </ul>

    <button id="appendBtn">Append</button>
    <button id="prependBtn">Prepend</button>
    <button id="beforeBtn">Before List</button>
    <button id="afterBtn">After List</button>

    <script>
        $(document).ready(function () {

            $("#appendBtn").click(function () {
                $("#languages").append("<li>JavaScript</li>");
            });

            $("#prependBtn").click(function () {
                $("#languages").prepend("<li>C++</li>");
            });

            $("#beforeBtn").click(function () {
                $("#languages").before("<p>Start of list</p>");
            });

            $("#afterBtn").click(function () {
                $("#languages").after("<p>End of list</p>");
            });

        });
    </script>

</body>
</html>

```

Explanation:

- `append()` adds content inside the element, at the end.
- `prepend()` adds content inside the element, at the beginning.
- `before()` adds content immediately before the selected element.
- `after()` adds content immediately after the selected element.

Note: Clicking the Append button repeatedly will add another list item each time.

## 4. jQuery Remove

These methods remove HTML elements or clear their contents.

- `remove()` removes the selected element and its descendants.
- `empty()` removes the descendants but keeps the selected element.
- `detach()` removes an element while preserving its jQuery data and event handlers for possible reuse.

### Example

```

<!DOCTYPE html>
<html>
<head>
    <title>jQuery Remove Example</title>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
</head>
<body>

    <div id="container">
        <h2>Student Information</h2>
        <p id="student">Name: Rahul</p>
        <p>Course: Python</p>
    </div>

    <button id="removeBtn">Remove Container</button>
    <button id="emptyBtn">Empty Container</button>
    <button id="resetBtn">Reset Page</button>

    <script>
        $(document).ready(function () {

            $("#removeBtn").click(function () {
                $("#container").remove();
            });

            $("#emptyBtn").click(function () {
                $("#container").empty();
            });

            $("#resetBtn").click(function () {
                location.reload();
            });

        });
    </script>

</body>
</html>

```

Try this:

1. Click Empty Container. The container remains, but its contents disappear.
2. Refresh or reset the page.
3. Click Remove Container. The entire container disappears.

`detach()` is useful when you intend to remove an element temporarily and later reinsert it with its associated jQuery data and event handlers intact.

## 5. jQuery CSS Classes

jQuery makes it easy to add, remove, and toggle CSS classes dynamically.

### Example: Add, Remove, Toggle, and Check a Class

```

<!DOCTYPE html>
<html>
<head>
    <title>jQuery CSS Classes</title>

    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>

    <style>
        .highlight {
            color: white;
            background-color: steelblue;
            padding: 20px;
            border-radius: 8px;
        }

        .large {
            font-size: 28px;
        }
    </style>
</head>
<body>

    <h2 id="heading">Learn jQuery CSS Classes</h2>

    <button id="addBtn">Add Class</button>
    <button id="removeBtn">Remove Class</button>
    <button id="toggleBtn">Toggle Class</button>
    <button id="checkBtn">Check Class</button>

    <script>
        $(document).ready(function () {

            $("#addBtn").click(function () {
                $("#heading").addClass("highlight large");
            });

            $("#removeBtn").click(function () {
                $("#heading").removeClass("highlight large");
            });

            $("#toggleBtn").click(function () {
                $("#heading").toggleClass("highlight");
            });

            $("#checkBtn").click(function () {

                if ($("#heading").hasClass("highlight")) {
                    alert("Highlight class exists!");
                } else {
                    alert("Highlight class does not exist!");
                }

            });

        });
    </script>

</body>
</html>

```

Methods explained

| Method          | Purpose                                         |
| --------------- | ----------------------------------------------- |
| `addClass()`    | Adds one or more CSS classes                    |
| `removeClass()` | Removes CSS classes                             |
| `toggleClass()` | Adds a class if absent or removes it if present |
| `hasClass()`    | Checks whether an element has a class           |

For example, `$("#heading").addClass("highlight")` applies all styles defined in the `.highlight` CSS rule.

## 6. jQuery css()

The `css()` method gets or sets CSS styles directly.

### Example: Change CSS properties dynamically

```

<!DOCTYPE html>
<html>
<head>
    <title>jQuery CSS Example</title>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
</head>
<body>

    <h2 id="heading">Welcome to jQuery</h2>

    <button id="changeBtn">Change Style</button>
    <button id="getBtn">Get Color</button>

    <script>
        $(document).ready(function () {

            $("#changeBtn").click(function () {

                $("#heading").css({
                    "color": "blue",
                    "background-color": "lightyellow",
                    "font-size": "30px",
                    "padding": "15px"
                });

            });

            $("#getBtn").click(function () {

                let color = $("#heading").css("color");

                alert("Current text color: " + color);

            });

        });
    </script>

</body>
</html>

```

Explanation:

To set one property:

```
$("#heading").css("color", "red");
```

To set multiple properties:

```
$("#heading").css({
    "color": "blue",
    "font-size": "30px",
    "background-color": "lightyellow"
});
```

To get a property:

```
let color = $("#heading").css("color");
```

The returned color is typically a computed CSS value, such as `rgb(0, 0, 255)`, rather than the original word `blue`.

## 7. jQuery Dimensions

jQuery provides several methods to measure an element's dimensions.

Outer height (with margin)

Border

Content

Padding is included in inner dimensions

Border

Margin is outside the border

Conceptual illustration: width and height measure the content area; inner dimensions include padding; outer dimensions include borders and optionally margins.

### Dimension methods

| Method              | What it measures               |
| ------------------- | ------------------------------ |
| `width()`           | Content width                  |
| `height()`          | Content height                 |
| `innerWidth()`      | Content + left/right padding   |
| `innerHeight()`     | Content + top/bottom padding   |
| `outerWidth()`      | Content + padding + borders    |
| `outerHeight()`     | Content + padding + borders    |
| `outerWidth(true)`  | Outer width including margins  |
| `outerHeight(true)` | Outer height including margins |

### Complete example

```

<!DOCTYPE html>
<html>
<head>
    <title>jQuery Dimensions</title>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>

    <style>
        #box {
            width: 200px;
            height: 100px;
            padding: 20px;
            border: 5px solid blue;
            margin: 10px;
            background-color: lightblue;
        }
    </style>
</head>
<body>

    <h2>jQuery Dimensions Example</h2>

    <div id="box">Dimension Box</div>

    <button id="measureBtn">Get Dimensions</button>

    <p id="result"></p>

    <script>
        $(document).ready(function () {

            $("#measureBtn").click(function () {

                let width = $("#box").width();
                let height = $("#box").height();

                let innerWidth = $("#box").innerWidth();
                let innerHeight = $("#box").innerHeight();

                let outerWidth = $("#box").outerWidth();
                let outerHeight = $("#box").outerHeight();

                let outerWidthMargin = $("#box").outerWidth(true);
                let outerHeightMargin = $("#box").outerHeight(true);

                $("#result").html(
                    "Width: " + width + "px<br>" +
                    "Height: " + height + "px<br>" +
                    "Inner Width: " + innerWidth + "px<br>" +
                    "Inner Height: " + innerHeight + "px<br>" +
                    "Outer Width: " + outerWidth + "px<br>" +
                    "Outer Height: " + outerHeight + "px<br>" +
                    "Outer Width with Margin: " + outerWidthMargin + "px<br>" +
                    "Outer Height with Margin: " + outerHeightMargin + "px"
                );

            });

        });
    </script>

</body>
</html>

```

For the CSS values in this example, the expected measurements are:

| Method              | Expected result |
| ------------------- | --------------- |
| `width()`           | 200px           |
| `height()`          | 100px           |
| `innerWidth()`      | 240px           |
| `innerHeight()`     | 140px           |
| `outerWidth()`      | 250px           |
| `outerHeight()`     | 150px           |
| `outerWidth(true)`  | 270px           |
| `outerHeight(true)` | 170px           |

These measurements assume the element is rendered at the specified dimensions and that the browser applies the CSS as shown.

## 8. Mini Project: Student Information Manager

Now let's combine Get, Set, Add, Remove, CSS Classes, and `css()` in one practical example.

```

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Manager - jQuery</title>

    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>

    <style>
        body {
            font-family: Arial, sans-serif;
            padding: 20px;
        }

        input {
            padding: 8px;
            margin: 5px;
        }

        button {
            padding: 8px 12px;
            margin: 5px;
            cursor: pointer;
        }

        li {
            padding: 8px;
            margin: 5px;
        }

        .highlight {
            background-color: lightblue;
            font-weight: bold;
        }
    </style>
</head>
<body>

    <h1>Student Information Manager</h1>

    <input type="text" id="studentName"
           placeholder="Enter student name">

    <button id="addStudent">Add Student</button>

    <ul id="studentList">
        <li>Rahul <button class="delete">Delete</button></li>
        <li>Priya <button class="delete">Delete</button></li>
    </ul>

    <button id="highlightBtn">Highlight Students</button>
    <button id="clearBtn">Clear All</button>

    <script>
        $(document).ready(function () {

            // Add a student
            $("#addStudent").click(function () {

                let name = $("#studentName").val().trim();

                if (name === "") {
                    alert("Please enter a student name.");
                    return;
                }

                // Create elements safely using jQuery
                let item = $("<li></li>").text(name + " ");

                let deleteButton = $("<button></button>")
                    .addClass("delete")
                    .text("Delete");

                item.append(deleteButton);
                $("#studentList").append(item);

                $("#studentName").val("");

            });

            // Delete a student using event delegation
            $("#studentList").on("click", ".delete", function () {
                $(this).parent().remove();
            });

            // Highlight all students
            $("#highlightBtn").click(function () {
                $("#studentList li").toggleClass("highlight");
            });

            // Remove all students
            $("#clearBtn").click(function () {
                $("#studentList").empty();
            });

        });
    </script>

</body>
</html>

```

### What you learn from this project

- `.val()` reads and clears the input field.
- `.append()` adds new student records.
- `.on()` handles clicks on dynamically created Delete buttons.
- `.remove()` deletes a selected student.
- `.toggleClass()` highlights student records.
- `.empty()` clears the entire list.

