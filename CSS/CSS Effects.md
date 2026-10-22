# CSS Effects

## 1. Common CSS Effects

1\. Hover Effect

Changes an element's appearance when you move the mouse over it.

Example: `button:hover`

2\. Box Shadow

Adds a shadow around an element, such as a card or button.

Example: `box-shadow`

3\. Transition Effect

Makes changes happen smoothly instead of instantly.

Example: `transition`

4\. Transform Effect

Moves, rotates, scales, or skews an element.

Example: `transform: scale(1.1)`

5\. Animation Effect

Makes elements move, fade, rotate, or change appearance automatically.

Example: `@keyframes`

## 2. Example: CSS Hover Effect

Move your mouse over the button to see the effect.

Hover Over Me

Move your pointer onto the button.

```
<button class="my-button">Hover Over Me</button>
```

```
.my-button {
    background-color: blue;
    color: white;
    padding: 12px 24px;
    border: none;
    border-radius: 8px;
    cursor: pointer;
    transition: 0.3s;
}

.my-button:hover {
    background-color: green;
    transform: scale(1.1);
}
```

How does it work?

- `:hover` activates when the pointer is over the button.
- `background-color` changes the button's color.
- `transform: scale(1.1)` makes the button 10% larger.
- `transition: 0.3s` makes the changes smooth.

## 3. Example: CSS Box Shadow

```
<div class="card">
    <h2>My Website</h2>
    <p>Welcome to CSS effects!</p>
</div>
```

```
.card {
    background-color: white;
    padding: 25px;
    border-radius: 12px;
    box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
}
```

The `box-shadow` property adds a shadow around the card, making it appear raised.

## 4. Example: CSS Animation

This example continuously moves a box from left to right.

The CSS below shows how to create the moving animation.

```
<div class="moving-box"></div>
```

```
.moving-box {
    width: 50px;
    height: 50px;
    background-color: purple;
    border-radius: 10px;

    animation: move 2s infinite alternate;
}

@keyframes move {
    from {
        transform: translateX(0);
    }

    to {
        transform: translateX(200px);
    }
}
```

Explanation:

- `@keyframes move` defines the animation.
- `2s` means the animation takes two seconds per cycle.
- `infinite` repeats the animation continuously.
- `alternate` makes it move forward and backward.

## 5. Important CSS Effects Properties

| Property        | Purpose                                                    |
| --------------- | ---------------------------------------------------------- |
| `box-shadow`    | Adds a shadow                                              |
| `text-shadow`   | Adds a shadow to text                                      |
| `transition`    | Makes changes smooth                                       |
| `transform`     | Moves, rotates, or scales elements                         |
| `animation`     | Animates elements                                          |
| `opacity`       | Controls transparency                                      |
| `filter`        | Adds blur, brightness, grayscale, and other visual filters |
| `border-radius` | Rounds the corners                                         |
| `background`    | Sets colors, gradients, and backgrounds                    |

