# Parenboost 

Handy Parenscript macros.

## Warning

This software is still BETA quality. The APIs will be likely to change.

## Installation

This system can be installed from [UltraLisp](https://ultralisp.org/) like this:

```common-lisp
(ql-dist:install-dist "http://dist.ultralisp.org/"
                      :prompt nil)
(ql:quickload "parenboost")
```


## General Macros

### `length> (val len)`
Checks if the length of `val` is greater than `len`.

### `length< (val len)`
Checks if the length of `val` is less than `len`.

### `length= (val len)`
Checks if the length of `val` is equal to `len`.

### `emptyp (val)`
Checks if the `val` is empty.

### `undefinedp (val)`
Checks if the `val` is `undefined`.

### `definedp (val)`
Checks if the `val` is defined.

### `nanp (val)`
Checks if the `val` is `NaN`.

### `finitep (val)`
Checks if the `val` is finite.

### `make (class &rest args)`
Creates a new instance of a class with the specified arguments.

### `throw-error (&rest args)`
Throws an error.

---

## URI Macros

### `encode-uri (uri)`
Encodes a URI.

### `decode-uri (uri)`
Decodes a URI.

### `encode-uri-components (uri)`
Encodes URI components.

### `decode-uri-components (uri)`
Decodes URI components.

### `url-can-parse (url &optional base)`
Checks if a URL can be parsed, optionally with a base.

### `url-parse (url &optional base)`
Parses a URL, optionally with a base.

---

## String Macros (string.lisp)

### `str-char-at (str index)`
Gets the character at the specified index.

### `str-char-code-at (str index)`
Gets the character code at the specified index.

### `str-code-point-at (str index)`
Gets the code point at the specified index.

### `str-concat (str &rest rest)`
Concatenates strings. Alias: `strcat`.

### `str-ends-with-p (str search-str &optional end-pos)`
Checks if a string ends with the specified substring.

### `str-includes-p (str search-str &optional pos)`
Checks if a string includes the specified substring. Alias: `str-contains-p`.

### `str-index-of (str search-str &optional pos)`
Finds the index of the specified substring.

### `str-last-index-of (str search-str &optional pos)`
Finds the last index of the specified substring.

### `str-match (str regx)`
Matches a string against a regular expression.

### `str-match-all (str regx)`
Matches a string against a regular expression, returning all matches.

### `str-normalize (str)`
Normalizes the string.

### `str-repeat (str count)`
Repeats the string for the specified count.

### `str-replace (str from to)`
Replaces the specified substring.

### `str-replace-all (str from to)`
Replaces all instances of the specified substring.

### `str-search (str regx)`
Searches for a pattern in the string.

### `str-slice (str index-start &optional index-end)`
Slices the string.

### `str-split (str separator &optional limit)`
Splits the string.

### `str-starts-with-p (str search-str &optional pos)`
Checks if a string starts with the specified substring.

### `str-substring (str index-start &optional index-end)`
Gets a substring of the string.

### `str-downcase (str)`
Converts the string to lowercase.

### `str-upcase (str)`
Converts the string to uppercase.

### `str-trim (str)`
Trims leading and trailing spaces from the string.

### `str-lines (str)`
Splits the string into lines.

---

## Promise Macros (promise.lisp)

### `make-promise (fn)`
Creates a new promise.

### `promise-all (iterable)`
Creates a promise that resolves when all promises in the iterable resolve.

### `promise-all-settled (iterable)`
Creates a promise that resolves when all promises in the iterable are settled.

### `promise-any (iterable)`
Creates a promise that resolves when any of the promises resolve.

### `promise-race (iterable)`
Creates a promise that resolves or rejects when the first promise settles.

### `promise-reject (reason)`
Creates a promise that rejects with the specified reason.

### `promise-resolve (val)`
Creates a promise that resolves with the specified value.

### `promise-try (func &rest args)`
Attempts to execute a function within a promise context.

### `with-promise ((resolve &optional reject) &body body)`
Creates a promise and provides `resolve` and `reject` handlers.

---

## Hash Macros

### `make-hash-table ()`
Creates a new Hash (JS Map object).

### `make-weak-hash-table ()`
Creates a new Weak Hash (JS WeakMap object).

### `hash-table-p (hash)`
Checks if the `hash` is Map object.

### `sethash (key val hash)`
Sets a value in the hash.

### `gethash (key hash)`
Gets a value from the hash.

### `clrhash ()`
Clears all entries in the hash.

### `remhash (key hash)`
Deletes a specific key-value pair.

### `hashash (key hash)`
Checks if a hash contains a specified key.

### `maphash (fun hash)`
Checks if a hash contains a specified key.

### `hash-table-count (hash)`
Gets size of hash.

---

## JSON Macros

### `json-parse (str)`
Parses a JSON string.

### `json-stringify (val)`
converts a value to a JSON string.

---

## Iterator Macros

### `reduce (func iter &optional init)`
Reduces the iterator to a single value.

### `mapcar (func iter)`
Applies a function to each element of the iterator.

### `filter-map (func iter)`
Filters and maps the elements of the iterator.

### `every (func iter)`
Checks if every element satisfies a condition.

---

## DOM Macros

### `html-element-p (object)`
Checks if an object is an HTML element.

### `element-by-id (element-id &optional elem)`
Gets an element by its ID.

### `add-event-listener (elem type listener &rest args)`
Adds an event listener to an element.

---

## Console Macros

### `console-log (arg1 &rest args)`
Logs messages to the console.

### `console-debug (arg1 &rest args)`
Logs a debug message to the console.

### `console-info (arg1 &rest args)`
Logs an info message to the console.

### `console-warn (arg1 &rest args)`
Logs a warning message to the console.

### `console-error (arg1 &rest args)`
Logs an error message to the console.

### `console-assert (assertion &rest args)`
Logs a message to the console if the given assertion evaluates to `false`.

### `console-time (label)`
Starts a timer with the specified label, which can be used to measure the duration of code execution.

### `console-time-end (label)`
Stops the timer with the specified label and logs the elapsed time to the console.

