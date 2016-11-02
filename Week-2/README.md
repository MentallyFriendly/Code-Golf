# Week 2

Create a function in your chosen language that takes an array of nested arrays and outputs a flattened array. You must not use any language feature that flattens an array for you. 

Below is the array that we will be using to test your code: 

```
[[0, 1], 2, 3, [4, 5, [6, [7], 8], [9]]]
```

Below are some examples of expected usage. This can be just a standard language file that we run, a rakefile in the case of Ruby or a mix file in the case of Elixir (whatever is standard for the language that you have picked).

Javascript: 

```js
var flatten = require('./')

var arr = [1, [2], [3, 4, [5]]];

flatten(arr); 
// => [1, 2, 3, 4, 5];
```

Ruby:

```ruby
require 'flatten'

flatten = Flatten_Arrays.new()

numbers = [10, 11, 5, [3, 8, 1, [12, 7, 18], 30, 10]]
flatten.flatten_nested_arrays(numbers)
# [10, 11, 5, 3, 8, 1, 12, 7, 18, 30, 10]

```

- Run files (like the ones showen above) will not be included in the character count
- We should be able to call your function and it should output a flattened array


**Bonus points**

- Code is still readable
- Code can be reused out side of this code challenge
- Elegant code that makes use of language niceties
- Tests in your language's test suite that show us how awesome your flatten function is
