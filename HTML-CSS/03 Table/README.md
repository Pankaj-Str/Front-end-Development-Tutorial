# HTML Table

## Step 1: Create a Basic HTML Page

```html
<!DOCTYPE html>
<html>
<head>
    <title>HTML Table Tutorial</title>
</head>
<body>

</body>
</html>
```

---

## Step 2: Add the `<table>` Tag

A table starts with the `<table>` tag.

```html
<!DOCTYPE html>
<html>
<head>
    <title>HTML Table</title>
</head>
<body>

<table>

</table>

</body>
</html>
```

---

## Step 3: Add a Table Row (`<tr>`)

`<tr>` stands for **Table Row**.

```html
<table>
    <tr>

    </tr>
</table>
```

---

## Step 4: Add Table Headers (`<th>`)

`<th>` is used for column headings.

```html
<table border="1">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>City</th>
    </tr>
</table>
```

**Output**

| ID | Name | City |
| -- | ---- | ---- |

---

## Step 5: Add Table Data (`<td>`)

`<td>` stands for **Table Data**.

```html
<table border="1">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>City</th>
    </tr>

    <tr>
        <td>1</td>
        <td>Pankaj</td>
        <td>Indore</td>
    </tr>
</table>
```

**Output**

| ID | Name   | City   |
| -- | ------ | ------ |
| 1  | Pankaj | Indore |

---

## Step 6: Add Multiple Rows

```html
<table border="1">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>City</th>
    </tr>

    <tr>
        <td>1</td>
        <td>Pankaj</td>
        <td>Indore</td>
    </tr>

    <tr>
        <td>2</td>
        <td>Aman</td>
        <td>Bhopal</td>
    </tr>

    <tr>
        <td>3</td>
        <td>Riya</td>
        <td>Mumbai</td>
    </tr>
</table>
```

---

## Step 7: Add a Table Caption

Use `<caption>` to give the table a title.

```html
<table border="1">

    <caption>Student Information</caption>

    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>City</th>
    </tr>

    <tr>
        <td>1</td>
        <td>Pankaj</td>
        <td>Indore</td>
    </tr>

</table>
```

---

## Step 8: Merge Columns (`colspan`)

```html
<table border="1">

    <tr>
        <th colspan="3">Student Information</th>
    </tr>

    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>City</th>
    </tr>

    <tr>
        <td>1</td>
        <td>Pankaj</td>
        <td>Indore</td>
    </tr>

</table>
```

---

## Step 9: Merge Rows (`rowspan`)

```html
<table border="1">

    <tr>
        <th>Name</th>
        <th>Subject</th>
    </tr>

    <tr>
        <td rowspan="2">Pankaj</td>
        <td>HTML</td>
    </tr>

    <tr>
        <td>Python</td>
    </tr>

</table>
```

---

## Step 10: Complete Example

```html
<!DOCTYPE html>
<html>
<head>
    <title>HTML Table Example</title>
</head>
<body>

<h2>Student Details</h2>

<table border="1">

    <caption>Student Information</caption>

    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Course</th>
        <th>City</th>
    </tr>

    <tr>
        <td>101</td>
        <td>Pankaj</td>
        <td>HTML</td>
        <td>Indore</td>
    </tr>

    <tr>
        <td>102</td>
        <td>Rahul</td>
        <td>Python</td>
        <td>Bhopal</td>
    </tr>

    <tr>
        <td>103</td>
        <td>Priya</td>
        <td>Java</td>
        <td>Delhi</td>
    </tr>

</table>

</body>
</html>
```

## HTML Table Tags Summary

| Tag          | Description                     |
| ------------ | ------------------------------- |
| `<table>`    | Creates a table                 |
| `<tr>`       | Creates a table row             |
| `<th>`       | Creates a header cell           |
| `<td>`       | Creates a data cell             |
| `<caption>`  | Adds a title to the table       |
| `border="1"` | Displays a visible table border |
| `colspan`    | Merges multiple columns         |
| `rowspan`    | Merges multiple rows            |


