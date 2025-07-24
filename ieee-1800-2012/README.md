# SystemVerilog-2012 Test Suite

This part of repository contains a test suite is based on examples from IEEE-1800-2012 SystemVerilog language standard.
The test suite is incomplete and covers Chapter 16 (SystemVerilog Assertions) only.

## Repository Owner

The owner is [Ivannikov Institute for System Programming of the Russian Academy of Sciences (ISP RAS)](https://ispras.ru/en).
The test suite is distributed under [BSD 3-Clause License](https://opensource.org/license/bsd-3-clause).

## Test Example Categories

All the Verilog/SystemVerilog examples should contain a comment of the following form:

```text
// ! TYPE: <TEST_TYPE>
```

It shows which category (i.e. "TEST_TYPE") the example belongs to.

The following categories are provided:

* `POSITIVE` &mdash; the example is treated as positive (correct) one;
* `NEGATIVE` &mdash; the example is treated as negative (incorrect) one;
* `VARYING` &mdash; the example's category is tool-specific.

## Contacts

For more information, please contact microtesk-support@ispras.ru.
