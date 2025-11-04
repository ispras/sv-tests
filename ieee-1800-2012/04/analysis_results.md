# SystemVerilog Description Analysis Table

| File Name | SVAN Result | SpyGlass Result | Cadence Genus Result | Utopia EDA Result | Syntax Correctness (TYPE) | Synthesizability |
|------------|----------------|--------------------|--------------------------|----------------------|------------------------------------|------------------|
| 04.05_01.sv | WARN | PASS | INV_STRUCT_MEM_ERR | NO_IFACE_ERR | POSITIVE | |
| 04.06_01.sv | PASS | PASS | EMPTY_MOD_ERR | NO_IFACE_ERR | POSITIVE | |
| 04.08_01.sv | PASS | WARN | EMPTY_MOD_ERR | NO_IFACE_ERR | POSITIVE | |


> **Legend:**

> **General**
>  - `PASS` &mdash; Successfully completed without errors
>  - `WARN` &mdash; Warnings were received

> **SpyGlass Result**
>  - `FAIL` &mdash; Syntax errors detected

> **Cadence Genus Result**
>  - `EMPTY_MOD_ERR` &mdash; An empty module is being created
>  - `INV_STRUCT_MEM_ERR` &mdash; Invalid struct member reference

> **Utopia EDA Result**
>  - `NO_IFACE_ERR` &mdash; Reading error due to missing inputs/outputs
