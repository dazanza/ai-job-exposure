# AI Job Exposure — Philippines

Interactive dashboard visualizing AI exposure across Philippine occupations for use in AI Strategy Mapping Workshops.

## Live Dashboard

Open `index.html` in any browser. No server needed.

## Sections

1. **Summary Cards** — Total workers, avg exposure, % highly exposed/augmented/at-risk/low
2. **Employment Treemap** — Size = employment, color = AI exposure. Toggle between Exposure and Complementarity views
3. **Most/Least Exposed Rankings** — Top 15 occupations by AI exposure score
4. **Exposure Distribution** — Histogram showing worker count by exposure bin
5. **Key Insights** — BPO sector risk, gender disparity, ASEAN comparison

## Data Sources

| Source | What | Year |
|--------|------|------|
| [ILOSTAT](https://ilostat.ilo.org/) | Employment by ISCO-08 occupation (Philippines) | 2023 |
| [IMF WP/25/43](https://www.imf.org/en/publications/wp/issues/2025/02/21/artificial-intelligence-and-the-philippine-labor-market-mapping-occupational-exposure-and-562171) | AI exposure + complementarity framework for PH | Feb 2025 |
| [Felten et al. AIOE](https://github.com/AIOE-Data/AIOE) | AI Occupational Exposure index (774 SOC occupations) | 2021 |
| [ILO GenAI Brief](https://www.ilo.org/publications/generative-ai-and-jobs-philippines-labour-market-exposure-and-policy) | GenAI exposure rates, gender analysis, ASEAN comparison | 2026 |

## Methodology

- AI exposure scores from Felten et al. (2021) AIOE index, mapped from US SOC to ISCO-08 via BLS crosswalk
- Employment data from ILOSTAT 2023 (PSA Labor Force Survey), domestic employed persons only
- Complementarity from Pizzinelli et al. (2023) framework via IMF
- 46.9M = domestic employed. Excludes ~2.2M OFWs
- Sub-occupation employment within ISCO major groups are estimates based on PSA sectoral breakdowns

## Updating Data

Fetch latest ILOSTAT data:
```bash
./update_data.sh PHL 2024
```

## Files

```
index.html              — Full dashboard (standalone, zero deps)
data/
  aioe_scores.xlsx      — Felten AIOE raw scores (774 SOC occupations)
  ilostat_ph.csv        — ILOSTAT PH employment by ISCO (2023)
  sources.md            — Detailed data provenance
reference/
  imf_wp25_43.pdf       — IMF Working Paper
update_data.sh          — Script to refresh ILOSTAT employment data
```

## Credits

Built by [Team Satori](https://teamsatori.asia) for AI Strategy Mapping Workshops.
