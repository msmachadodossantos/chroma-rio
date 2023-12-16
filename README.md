# About

**chroma-rio** is a Sass tool designed to simplify the process of generating color palettes based on the RGB color wheel.

With a focus on flexibility and ease of use, **chroma-rio** is ideal for web developers and designers who want to streamline the creation of visually appealing and harmonious color schemes **using only CSS variables**.

## Dependencies

Before using **chroma-rio**, ensure you have the following dependencies installed:

- [Git](https://git-scm.com/)
- [Node.js](https://nodejs.org/en) or [npm](https://www.npmjs.com/)
- [Sass](https://sass-lang.com/)
- [Gulp](https://gulpjs.com/)

## Installation

To get started, follow these steps:

1. Clone the repository to your local machine:
   - `git clone https://github.com/msmachadodossantos/chroma-rio.git`
2. Navigate to the project directory:
   - `cd chroma-rio`
3. Install the project dependencies:
   - `npm install`

## Configuration

To customize the color palette, modify the five primary colors in the `src/_variables.scss` file.

## Building

Once you've configured your color palette, it's time to build the project. Run the following command:

- `npm run build`

This command not only compiles the Sass files but also build the included Bootstrap (v5.3.2) with the newly defined colors.

The resulting output can be found in the `dist` directory.
