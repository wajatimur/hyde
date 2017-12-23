---
layout: post
title: Regex For Date Format of d MM, YYYY
categories:
- coding
tags:
- date
- format
- medium
- regex
- look-ahead
- regular expression
- preceegin token
status: publish
type: post
published: true
meta: {}
---
Below regex will match date format of 4 March, 1981 or 4 march, 1981. Click [here](http://regexr.com/38qek) to try the example.

```
\b([1-9]|[12][0-9]|3[01]) (?:(J|j)anuary|(F|f)ebruary|(M|m)arch|(A|a)pril|(M|m)ay|(J|j)une|(J|j)uly|(O|o)ctober|(N|n)ovember|(D|d)ecember?)(\,) (?:19[7-9]\d|2\d{3})(?=\D|$)
```

Let me explain a bit on how this pattern translated into regex matching. The starting token `\b` is a word boundry matching, it just a safeguard token to check the starting of word, new-line or puntuation marks.

The group matching `()` token after word boundary token is to matches day in dates from 1 to 31 of month. Inside it's a 3 character set token matching `[]` with a different digit pattern matching through conditional OR logic.

Taking from `(?:[1-9]|[12][0-9]|3[01])` the `[1-9]` will match single digit number from 1 to 9, if first condition of character token was not met it will move to second logic whereby `[12][0-9]` pattern will look for 2 digit number. It will match either 10 to 19 or 20 to 29 range of number. The first part of token will look for digit number 1 or 2 and it will be concantenate with the adjacent character set token where it look for number from 0 to 9.

If you were using character token eg; `[123abc]` then it will look for character 1, 2, 3, a, b & c in sequence order.

For the month name matching is more straighforward and it will use a lot of OR condition together with group token. Lets take a look at first part of pattern `(J|j)anuary` where it will search for month of 'January' or 'january'. If this particular month string is not exist it will move to next token of another month matching. You can also match a month shortform name by changing a pattern to `(J|j)(anuary|an)`.

The pattern `(?:19[7-9]\d|2\d{3})` is been used as a strategy to match a range of year from 1970 to 2999. The first part of pattern will look for matches year from 1970 to 1999. The last token `\d` to match any single digit number. You can change you pattern to `19\d\d` as well so it can search from year 1900. Using pattern `19[7-9][0-9]` will give the same result as in example. The second part of year matching after OR condition will look for digit number 2 with any 3 digit preceeding denoted by `\d{3}` pattern.

The preceeding matching token will look for quantified similar token specified before it. So if we use `a{3}` it will match `aaa`, thus from our example the pattern `\d{3}` will matches digit number 000 through 999.

The last token matching `(?=\D|$)` is to detect whether its reach end of string/line. Token `(?=` is look-ahead group token where it will look for group matching without including it in the matching result or we can say it's assertion matching. Token `\D` will look for non digit an token `$` generally used for matching end of line/string.

We can use non-capturing group token `(?:` if we are not expecting any return value. At some point the token `(?:` and can be used interchangeably with lookahead token `(?=` depend on the matching strategy. On the example, if we change non-capturing group token `(?:` infront of `(J|j)anury` with lookahead token `(?=` the whole string will be not matche as it will not consume back the group into the matching stream. But if we can change the pattern `(?=\D|$)` to `(?:\D|$)` at the end of pattern as it will give the same result and we not expect to consume back the result into matching stream.

Please drop a comment or suggestion below if you find any part of this article can be improve or some information might not be accurate.

