scenario: Step examples
When I initialize the STORY variable `var` with value `0`
When I execute steps:
|step                                                                         |
|Then `${var}` is = `0`                                                       |
|When I initialize the STORY variable `var` with value `#{eval(${var} + 1)}`  |
Then `${var}` is = `1`
