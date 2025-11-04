# SystemVerilog Description Analysis Table

| File Name | SVAN Result | SpyGlass Result | Cadence Genus Result | Utopia EDA Result | Syntax Correctness (TYPE) | Synthesizability |
|------------|----------------|--------------------|--------------------------|----------------------|------------------------------------|------------------|
| 05.06_01.sv | PASS | PASS | EMPTY_MOD_ERR | FAIL | POSITIVE | |
| 05.06.01_01.sv | PASS | PASS | EMPTY_MOD_ERR | NO_IFACE_ERR | POSITIVE | |
| 05.06.03_01.sv | PASS | PASS | EMPTY_MOD_ERR | NO_IFACE_ERR | POSITIVE | |
| 05.06.04_01.sv | PASS | PASS | EMPTY_MOD_ERR | NO_IFACE_ERR | POSITIVE | |
| 05.07.01_01.sv | PASS | PASS | EMPTY_MOD_ERR | NO_IFACE_ERR | VARYING | |
| 05.07.01_02.sv | PASS | PASS | EMPTY_MOD_ERR | NO_IFACE_ERR | POSITIVE | |
| 05.07.01_03.sv | WARN | PASS | EMPTY_MOD_ERR | NO_IFACE_ERR | VARYING | |
| 05.07.01_04.sv | PASS | PASS | EMPTY_MOD_ERR | NO_IFACE_ERR | POSITIVE | |
| 05.07.01_05.sv | PASS | PASS | EMPTY_MOD_ERR | NO_IFACE_ERR | POSITIVE | |
| 05.07.01_06.sv | PASS | PASS | EMPTY_MOD_ERR | NO_IFACE_ERR | POSITIVE | |
| 05.07.02_01.sv | PASS | PASS | INV_NUM_ERR | FAIL | VARYING | |
| 05.08_01.sv | PASS | PASS | EMPTY_MOD_ERR | FAIL | POSITIVE | |
| 05.09_01.sv | PASS | PASS | EMPTY_MOD_ERR | NO_IFACE_ERR | POSITIVE | |
| 05.10_01.sv | PASS | PASS | EMPTY_MOD_ERR | FAIL | POSITIVE | |
| 05.11_01.sv | PASS | PASS | |EMPTY_MOD_ERR  NO_IFACE_ERR | POSITIVE | |
| 05.12_01.sv | PASS | PASS | EMPTY_MOD_ERR | NO_IFACE_ERR | POSITIVE | |
| 05.12_02.sv| PASS | PASS | EMPTY_MOD_ERR | NO_IFACE_ERR | POSITIVE | |
| 05.12_03.sv| PASS | PASS | PASS | PASS | POSITIVE | |
| 05.12_04.sv| PASS | PASS | PASS | PASS | POSITIVE | |
| 05.12_05.sv| PASS | PASS | EMPTY_MOD_ERR | NO_IFACE_ERR | POSITIVE | |
| 05.12_06.sv| PASS | PASS | PASS | PASS | POSITIVE | |
| 05.12_07.sv| PASS | PASS | PASS | PASS | POSITIVE | |
| 05.12_08.sv| PASS | PASS | PASS | PASS | POSITIVE | |

> **Legend:**

> **General**
>  - `PASS` &mdash; Successfully completed without errors
>  - `WARN` &mdash; Warnings were received

> **SpyGlass Result**
>  - `FAIL` &mdash; Syntax errors detected

> **Cadence Genus Result**
>  - `EMPTY_MOD_ERR` &mdash; An empty module is being created
>  - `INV_NUM_ERR` &mdash; Invalid number

> **Utopia EDA Result**
>  - `FAIL` &mdash; Yosys crashed with SIGABRT
>  - `NO_IFACE_ERR` &mdash; Reading error due to missing inputs/outputs
