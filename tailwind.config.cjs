/** @type {import('tailwindcss').Config} */
module.exports = {
  content: {
  relative: true,
  files: [
      './src/templates/*.html',
      './src/templates/dashboard/*.html',
      './src/templates/dashboard/**/*.html'],
  },
  theme: {
    extend: {},
  },
  plugins: [],
}
