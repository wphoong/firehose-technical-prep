function quick_sort(arr) {
  if (arr.length < 2) {
    return arr;
  }
  
  const pivot_index = Math.ceil(arr.length / 2);
  const pivot_value = arr[pivot_index];
  arr.splice(pivot_index, 1);

  let low = [];
  let high = [];

  arr.forEach(function(x){
    if (x <= pivot_value) {
      low.push(x);
    } else {
      high.push(x);
    }
  });

  return quick_sort(low).concat(pivot_value, quick_sort(high));
}

console.log(quick_sort([15,4,2,4,7,6,8,54,32]));