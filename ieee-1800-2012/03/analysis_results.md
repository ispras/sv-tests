# SystemVerilog Description Analysis Table

| File Name | SVAN Result | SpyGlass Result | Cadence Genus Result | Utopia EDA Result | Syntax Correctness (TYPE) | Synthesizability |
|------------|----------------|--------------------|--------------------------|----------------------|------------------------------------|------------------|
| 03.03_01.sv | PASS | PASS | PASS | PASS | POSITIVE | |
| 03.04_01.sv | PASS | PASS | FAIL | FAIL | POSITIVE | |
| 03.05_01.sv | PASS | WARN | PASS | NO_IFACE_ERR | POSITIVE | |
| 03.09_01.sv | PASS | PASS | FAIL | FAIL | POSITIVE | |
| 03.11_01.sv | PASS | PASS | PASS | NO_IFACE_ERR | POSITIVE | |
| 03.12.01_01.sv | PASS | PASS | EMPTY_MOD_ERR | NO_IFACE_ERR | POSITIVE | |
| 03.12.01_02.sv | FAIL | PASS | FAIL | FAIL | NEGATIVE | |
| 03.14.02.01_01.sv | PASS | PASS | EMPTY_MOD_ERR | NO_IFACE_ERR | POSITIVE | |
| 03.14.02.02_01.sv | PASS | WARN | EMPTY_MOD_ERR | NO_IFACE_ERR | POSITIVE | |

> **Legend:**

> **General**
>  - `PASS` &mdash; Successfully completed without errors

> **SVAN Result**
>  - `FAIL` &mdash; Syntax errors detected

> **SpyGlass Result**
>  - `FAIL` &mdash; Syntax errors detected

> **Cadence Genus Result**
>  - `EMPTY_MOD_ERR` &mdash; An empty module is being created

> **Utopia EDA Result**
>  - `FAIL` &mdash; Yosys crashed with SIGABRT
>  - `NO_IFACE_ERR` &mdash; Reading error due to missing inputs/outputs
