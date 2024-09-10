### Comprehensive Guide to HTML Table Tags and Attributes

In this section, we'll explore all the main tags used to create HTML tables, along with their sub-tags and attributes. Understanding these elements will help you master the creation and customization of tables in HTML.

### 1. `<table>`

The `<table>` tag is the container for all other table-related tags. It defines the start and end of the table.

- **Attributes**:
  - `border`: Specifies the border width of the table. For example, `<table border="1">` creates a table with a single-pixel border.
  - `cellpadding`: Adds padding inside each table cell. Example: `<table cellpadding="5">`.
  - `cellspacing`: Sets the space between table cells. Example: `<table cellspacing="2">`.

**Example**:
```html
<table border="1" cellpadding="5" cellspacing="2">
    <!-- Other tags go here -->
</table>
```

### 2. `<tr>`

The `<tr>` tag defines a table row. All table rows must be placed within the `<table>` tag.

- **Attributes**:
  - `align`: Aligns the content horizontally within a row. Values: `left`, `right`, `center`. Example: `<tr align="center">`.
  - `valign`: Aligns the content vertically within a row. Values: `top`, `middle`, `bottom`. Example: `<tr valign="top">`.

**Example**:
```html
<table border="1">
    <tr align="center" valign="middle">
        <td>Pankaj</td>
        <td>25</td>
        <td>Delhi</td>
    </tr>
</table>
```

### 3. `<th>`

The `<th>` tag is used to define header cells in a table. These are usually placed at the top of each column and are bold and centered by default.

- **Attributes**:
  - `colspan`: Merges a cell across multiple columns. Example: `<th colspan="2">Name</th>`.
  - `rowspan`: Merges a cell across multiple rows. Example: `<th rowspan="2">Age</th>`.
  - `scope`: Defines the scope of the header cell. Values: `col`, `row`, `colgroup`, `rowgroup`. Example: `<th scope="col">Name</th>`.

**Example**:
```html
<table border="1">
    <tr>
        <th colspan="2">Name</th>
        <th>City</th>
    </tr>
    <tr>
        <td>Pankaj</td>
        <td>25</td>
        <td>Delhi</td>
    </tr>
</table>
```

### 4. `<td>`

The `<td>` tag is used to define standard data cells in a table, which hold the actual content.

- **Attributes**:
  - `colspan`: Merges a cell across multiple columns. Example: `<td colspan="2">Pankaj</td>`.
  - `rowspan`: Merges a cell across multiple rows. Example: `<td rowspan="2">Delhi</td>`.
  - `align`: Aligns the content horizontally within a cell. Values: `left`, `right`, `center`. Example: `<td align="right">25</td>`.
  - `valign`: Aligns the content vertically within a cell. Values: `top`, `middle`, `bottom`. Example: `<td valign="top">25</td>`.

**Example**:
```html
<table border="1">
    <tr>
        <td rowspan="2">Pankaj</td>
        <td>25</td>
        <td>Delhi</td>
    </tr>
    <tr>
        <td>26</td>
        <td>Mumbai</td>
    </tr>
</table>
```

### 5. `<caption>`

The `<caption>` tag is used to add a title or description to the table, which appears above the table by default.

- **Attributes**:
  - `align`: Aligns the caption. Values: `top`, `bottom`, `left`, `right`. Example: `<caption align="bottom">Student Details</caption>`.

**Example**:
```html
<table border="1">
    <caption>Student Details</caption>
    <tr>
        <th>Name</th>
        <th>Age</th>
        <th>City</th>
    </tr>
    <tr>
        <td>Pankaj</td>
        <td>25</td>
        <td>Delhi</td>
    </tr>
</table>
```

### 6. `<thead>`, `<tbody>`, and `<tfoot>`

These tags are used to group different sections of the table.

- **`<thead>`**: Contains the header rows of the table.
- **`<tbody>`**: Contains the main content rows of the table.
- **`<tfoot>`**: Contains the footer rows of the table.

**Example**:
```html
<table border="1">
    <thead>
        <tr>
            <th>Name</th>
            <th>Age</th>
            <th>City</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Pankaj</td>
            <td>25</td>
            <td>Delhi</td>
        </tr>
        <tr>
            <td>Anjali</td>
            <td>22</td>
            <td>Mumbai</td>
        </tr>
    </tbody>
    <tfoot>
        <tr>
            <td colspan="3">Total Students: 2</td>
        </tr>
    </tfoot>
</table>
```

### 7. `<col>` and `<colgroup>`

These tags are used to define and group columns, allowing you to apply styles or attributes to entire columns.

- **`<colgroup>`**: Groups one or more columns.
- **`<col>`**: Defines an individual column.

**Example**:
```html
<table border="1">
    <colgroup>
        <col span="2" style="background-color:lightgrey">
        <col style="background-color:lightblue">
    </colgroup>
    <tr>
        <th>Name</th>
        <th>Age</th>
        <th>City</th>
    </tr>
    <tr>
        <td>Pankaj</td>
        <td>25</td>
        <td>Delhi</td>
    </tr>
</table>
```

### Conclusion

Understanding the various tags and attributes of HTML tables allows you to create structured and well-organized tables for displaying data. Each tag and attribute has a specific role in defining how the table is presented, giving you full control over the layout and structure of your data. 

Practice using these tags in your projects to get comfortable with creating and customizing HTML tables!