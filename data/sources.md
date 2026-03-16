# Data Sources & Provenance

## Employment Data

**Source**: ILOSTAT (International Labour Organization)
**Indicator**: EMP_TEMP_SEX_OCU_NB — Employment by sex and occupation
**Country**: PHL (Philippines)
**Year**: 2023
**Classification**: ISCO-08 (1-digit major groups)
**Unit**: Thousands of persons
**Coverage**: Domestic employed persons only. Excludes ~2.2M OFWs.
**API**: `https://rplumber.ilo.org/data/indicator/?id=EMP_TEMP_SEX_OCU_NB&ref_area=PHL&timefrom=2023&format=csv`

## AI Exposure Scores

**Source**: Felten, Raj & Seamans (2021). "Occupational, industry, and geographic exposure to artificial intelligence." Strategic Management Journal, 42(12).
**Data**: AIOE (AI Occupational Exposure) index for 774 US SOC occupations
**GitHub**: https://github.com/AIOE-Data/AIOE
**File**: AIOE_DataAppendix.xlsx, Appendix A
**Mapping**: SOC-2010 → ISCO-08 via BLS crosswalk. Simple average when mapping is not 1:1.
**Scale**: Standardized (median=0, SD=1, range ~-2.7 to +1.5). Mapped to 0-10 for visualization.

## Complementarity Framework

**Source**: Pizzinelli, Panton, Tavares, Cazzaniga & Li (2023). "Labor Market Exposure to AI: Cross-country Differences and Distributional Implications." IMF Working Paper 23/216.
**Applied by**: Cucio & Hennig (2025). IMF Working Paper 25/43.
**Categories**:
- High exposure + High complementarity → AI augments (ISCO 1, 2, 3)
- High exposure + Low complementarity → AI displaces (ISCO 4)
- Mixed (ISCO 5 — Services & Sales)
- Low exposure (ISCO 6, 7, 8, 9)

## Sub-Occupation Employment Estimates

Employment within ISCO 1-digit groups is distributed to sub-occupations based on:
- PSA Labor Force Survey sectoral breakdowns
- IBPAP industry reports (for BPO/IT-BPM breakdown)
- IMF WP/25/43 findings on occupation distribution

These are **estimates**. For exact figures at 4-digit ISCO, PSA microdata access is required.

## Key Statistics (from external sources)

| Statistic | Value | Source |
|-----------|-------|--------|
| PH GenAI exposure rate | 27.2% (12.7M workers) | ILO 2026 |
| Highest exposure in ASEAN | Philippines | ILO 2026 |
| Women exposure rate | 40.3% (2x men) | ILO 2026 |
| BPO workforce | 1.7M (3.4% of total) | PSA/IBPAP 2023 |
| BPO GDP contribution | 7.4% (~$35.5B) | BSP/IBPAP 2023 |
| Workers highly exposed | ~1/3 | IMF WP/25/43 |
| Of highly exposed, complementary | 61% | IMF WP/25/43 |
