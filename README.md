# Fibonacci REST API

This is a simple REST API that I have developed to calculate the Fibonacci value based on an index "n." The API is built in Ruby on Rails and provides a single endpoint for Fibonacci value calculation.

## Usage

To use the API, simply make a GET request to the `/calculate` endpoint with the `n` parameter, as shown below:

```
GET /calculate?n=6
```

This request will provide you with the Fibonacci value corresponding to index `6`.

### Example

- Request:

  ```
  GET /calculate?n=6
  ```

- Response:

  ```json
  {
    "input": 6,
    "result": 8
  }
  ```

If the input value is invalid, the API will respond with an error message:

- Request:

  ```
  GET /calculate?n=invalid
  ```

- Response:

  ```json
  {
    "error": "Invalid input"
  }
  ```

## Implementation

In the API's implementation, I have created the `FibonacciController`, which follows a simple structure:

- The `calculate` method extracts the `n` parameter from the request and validates it. If the input is valid, it calculates the Fibonacci value and returns it in JSON format. In case of invalid input, an error message is returned.

- The `valid_input?` function checks if the input is a positive integer.

- The `fibonacci` function calculates the Fibonacci value using a recursive approach, which, while not the most efficient method, serves as a simple example.

## Prerequisites

Before running this project, please ensure you have the following prerequisites installed on your system:

- Ruby: The project is built using Ruby on Rails, so you'll need to have Ruby installed. You can download and install Ruby from the official [Ruby website](https://www.ruby-lang.org/en/documentation/installation/).

- Bundler: Bundler is used for managing project dependencies. You can install it by running the following command:

  ```
  gem install bundler
  ```

## How to Run the Project

To run the Fibonacci API project, follow these steps:

1. Clone the repository to your local machine:

   ```
   git clone https://github.com/jcbances6/fibonacci-api
   ```

2. Change to the project directory:

   ```
   cd fibonacci-api
   ```

3. Install the required dependencies:

   ```
   bundle install
   ```

4. Start the Rails server:

   ```
   rails server
   ```

5. The API should now be accessible at `http://localhost:3000`. You can make requests to the `/calculate` endpoint as described in the "Usage" section above.

## Running Tests

The tests for this API have been conducted using RSpec. You can execute the tests by running the following command in the project directory:

```
rspec
```
## Possible Optimizations

There are several areas in which this API could be enhanced:

1. **Performance**: The current implementation uses a recursive algorithm to calculate the Fibonacci sequence, which can be slow for large values of `n`. It can be optimized by employing iterative approaches or other techniques to improve performance.

2. **Caching**: To prevent recalculation of Fibonacci values for the same `n`, a caching system could be implemented to store previously calculated results.

3. **Error Handling**: The current error handling is basic. More descriptive error messages and the use of different HTTP status codes for specific error types could be considered.

4. **API Documentation**: Providing detailed API documentation, possibly using tools like Swagger, would help users understand how to use it effectively.

5. **Input Validation**: Depending on the requirements, input validation and handling could be improved, especially for edge cases and special conditions.

6. **Security**: Ensuring the API adheres to best practices for security, including input validation and access control.
