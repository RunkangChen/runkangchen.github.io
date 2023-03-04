const redirectUrl = "https://www.example.com";
const delayInSeconds = 5;

setTimeout(() => {
  window.location.href = redirectUrl;
}, delayInSeconds * 1000);
