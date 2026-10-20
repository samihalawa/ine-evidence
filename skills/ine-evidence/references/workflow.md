# Detailed source-specific workflow


1. Define the statistical question: metric, geography, population, period, frequency, unit, level/change rate, adjustment and desired comparison. Use `ine_operations`, then `ine_tables`, then `ine_table_series` to discover IDs. Do not guess a series code from memory. A filtered series page is not the whole table; follow explicit pagination when needed.
2. Retrieve observations with `ine_series`. Preserve the source's unit, scale, base year, frequency, reference population, adjustment, provisional flags and confidentiality. Display the latest observation period separately from retrieval time. A series ending months ago can be discontinued or rebased even though the API works.
3. Before answering 'latest', check the current operation/table and latest observation date. The built-in age warning is a signal to verify, not proof an annual statistic is stale. Never substitute a historical CPI base for the current series without explanation or splice bases without the official linking method.
4. Keep null, missing and confidential observations distinct from zero. For changes, state the formula and inputs, distinguish percentages from percentage points and use like-for-like series. Do not aggregate incompatible territorial definitions, seasonal treatments, units or populations.
5. Return a compact evidence table or chart with exact source links and a short interpretation. Label your own calculations and uncertainty. Do not claim the plugin is the official INE service or a statistical certification.

## Output

Metric definition; code and table/operation; observation period versus retrieval date; unit/base/adjustment; values; transparent calculations; source notes and limitations.

