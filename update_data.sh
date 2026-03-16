#!/bin/bash
# Fetch ILOSTAT employment by ISCO-08 occupation for a given country
# Usage: ./update_data.sh PHL 2024
#        ./update_data.sh IDN 2023
#
# ILOSTAT indicator: EMP_TEMP_SEX_OCU_NB (Employment by sex and occupation, thousands)
# Country codes: PHL (Philippines), IDN (Indonesia), THA (Thailand), VNM (Vietnam), MYS (Malaysia)

COUNTRY=${1:-PHL}
YEAR=${2:-2023}
OUTPUT="data/ilostat_${COUNTRY,,}.csv"

echo "Fetching ILOSTAT employment by occupation for $COUNTRY ($YEAR)..."

curl -sL "https://rplumber.ilo.org/data/indicator/?id=EMP_TEMP_SEX_OCU_NB&ref_area=${COUNTRY}&timefrom=${YEAR}&timeto=${YEAR}&format=csv" \
  -o "$OUTPUT"

LINES=$(wc -l < "$OUTPUT")
echo "Saved $LINES rows to $OUTPUT"

# Show ISCO 1-digit totals (SEX_T only, ISCO08 codes)
echo ""
echo "=== ISCO-08 Employment (Total, thousands) ==="
grep "SEX_T.*OCU_ISCO08_[0-9]" "$OUTPUT" | while IFS=',' read -r ref src ind sex classif time val rest; do
  code=$(echo "$classif" | sed 's/"//g' | sed 's/OCU_ISCO08_/ISCO /')
  val_clean=$(echo "$val" | sed 's/"//g')
  echo "  $code: ${val_clean}K"
done

echo ""
echo "Total:"
grep "SEX_T.*OCU_ISCO08_TOTAL" "$OUTPUT" | cut -d',' -f7 | sed 's/"//g' | xargs -I{} echo "  {}K"
echo ""
echo "Done. Update the DATA array in index.html with these values."
