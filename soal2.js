for (let i = 1; i <= 10; i++) {
  let formattedNumber = "";

  if (i < 6) {
    formattedNumber = "0".repeat(i) + i;
  } else {
    formattedNumber = i + "0".repeat(i);
  }
  console.log(formattedNumber);
}
