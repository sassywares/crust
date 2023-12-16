/* eslint-disable @typescript-eslint/no-empty-function */
// Use this file to setup anything that you need to do before running tests.

// Polyfill for window.matchMedia
window.matchMedia =
  window.matchMedia ||
  function () {
    return {
      matches: false,
      addListener: function () {},
      removeListener: function () {},
    };
  };
