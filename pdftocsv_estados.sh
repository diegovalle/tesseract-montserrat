#!/usr/bin/env bash
# Exit on error, undefined and prevent pipeline errors,
# use '|| true' on commands that intentionally exit non-zero
set -euo pipefail
export TZ=America/Mexico_City
export LANG=C.UTF-8
if [[ "${TRACE-0}" == "1" ]]; then set -o xtrace; fi
IFS=$'\n\t'
# The directory from which the script is running
readonly LOCAL_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)"

TEXT_VALIDATE1='^aguascalientes[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+morelos[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+baja california[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+nayarit[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+baja california sur[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+nuevo leon[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+campeche[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+oaxaca[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+chiapas[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+puebla[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+chihuahua[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+queretaro[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+ciudad de mexico[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+quintana roo[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+coahuila[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+san luis potosi[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+colima[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+sinaloa[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+durango[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+sonora[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+estado de mexico[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+tabasco[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+guanajuato[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+tamaulipas[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+guerrero[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+tlaxcala[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+hidalgo[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+veracruz[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+jalisco[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+yucatan[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+michoacan[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+zacatecas[0-9, -]{5,99}'
# The pdf text of 2024-05-24 is messed up
TEXT_VALIDATE2='aguascalientes[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+morelos[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+baja california[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+nayarit[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+baja california sur[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+nuevo leon[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+campeche[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+oaxaca[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+chiapas[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+puebla[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+chihuahua[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+queretaro[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+ciudad de mexico[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+quintana roo[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+coahuila[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+san luis potosi[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+colima[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+sinaloa[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+durango[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+sonora[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+estado de mexico[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+tabasco[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+guanajuato[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+guerrero[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+tamaulipas[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+hidalgo[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+tlaxcala[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+jalisco[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+veracruz[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+michoacan[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+yucatan[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+zacatecas'
TEXT_VALIDATE3='^aguascalientes[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+morelos[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+baja california[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+nayarit[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+baja california sur[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+nuevo leon[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+campeche[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+oaxaca[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+chiapas[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+puebla[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+chihuahua[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+queretaro[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+ciudad de mexico[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+quintana roo[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+coahuila[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+san luis potosi[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+colima[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+sinaloa[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+durango[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+sonora[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+estado de mexico[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+tabasco[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+guanajuato[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+tamaulipas[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+guerrero[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+tlaxcala[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+hidalgo[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+veracruz[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+yucatan[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+jalisco[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+zacatecas[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+michoacan[, ]+[0-9]+[, ]+[0-9]{4}-[0-9]{2}-[0-9]{2}'

TEXT_TESSERACT_VALIDATE1="^aguascalientes[ ]*,[ ]*[0-9]+[ ]*,[ ]*[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+baja california[ ]*,[ ]*[0-9]+[ ]*,[ ]*[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+baja california sur[ ]*,[ ]*[0-9]+[ ]*,[ ]*[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+campeche[ ]*,[ ]*[0-9]+[ ]*,[ ]*[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+chiapas[ ]*,[ ]*[0-9]+[ ]*,[ ]*[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+chihuahua[ ]*,[ ]*[0-9]+[ ]*,[ ]*[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+ciudad de mexico[ ]*,[ ]*[0-9]+[ ]*,[ ]*[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+coahuila[ ]*,[ ]*[0-9]+[ ]*,[ ]*[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+colima[ ]*,[ ]*[0-9]+[ ]*,[ ]*[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+durango[ ]*,[ ]*[0-9]+[ ]*,[ ]*[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+estado de mexico[ ]*,[ ]*[0-9]+[ ]*,[ ]*[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+guanajuato[ ]*,[ ]*[0-9]+[ ]*,[ ]*[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+guerrero[ ]*,[ ]*[0-9]+[ ]*,[ ]*[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+hidalgo[ ]*,[ ]*[0-9]+[ ]*,[ ]*[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+jalisco[ ]*,[ ]*[0-9]+[ ]*,[ ]*[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+michoacan[ ]*,[ ]*[0-9]+[ ]*,[ ]*[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+$"
TEXT_TESSERACT_VALIDATE2="^morelos[ ]*,[ ]*[0-9]+[ ]*,[ ]*[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+nayarit[ ]*,[ ]*[0-9]+[ ]*,[ ]*[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+nuevo leon[ ]*,[ ]*[0-9]+[ ]*,[ ]*[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+oaxaca[ ]*,[ ]*[0-9]+[ ]*,[ ]*[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+puebla[ ]*,[ ]*[0-9]+[ ]*,[ ]*[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+queretaro[ ]*,[ ]*[0-9]+[ ]*,[ ]*[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+quintana roo[ ]*,[ ]*[0-9]+[ ]*,[ ]*[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+san luis potosi[ ]*,[ ]*[0-9]+[ ]*,[ ]*[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+sinaloa[ ]*,[ ]*[0-9]+[ ]*,[ ]*[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+sonora[ ]*,[ ]*[0-9]+[ ]*,[ ]*[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+tabasco[ ]*,[ ]*[0-9]+[ ]*,[ ]*[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+tamaulipas[ ]*,[ ]*[0-9]+[ ]*,[ ]*[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+tlaxcala[ ]*,[ ]*[0-9]+[ ]*,[ ]*[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+veracruz[ ]*,[ ]*[0-9]+[ ]*,[ ]*[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+yucatan[ ]*,[ ]*[0-9]+[ ]*,[ ]*[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+zacatecas[ ]*,[ ]*[0-9]+[ ]*,[ ]*[0-9]{4}-[0-9]{2}-[0-9]{2}[ \n]+$"

if [[ "${1-}" =~ ^-*h(elp)?$ ]]; then
  echo 'Usage: ./script.sh arg1 arg2

What the bash script does.

'
  exit
fi

# curl -s http://www.informeseguridad.cns.gob.mx/ | grep -P -o "homicidios[_]+[0-9]{4}20[0-9]{2}_v2.pdf"
get_dates() {
  d=$(date -I -d "$(date +"%Y-%m-%d") - 10 days")
  until [[ $d > $(date -I -d "$(date +"%Y-%m-%d") - 1 day") ]]; do
    echo homicidios_"$(date --date "$d" +"%d%m%Y")"_v2.pdf
    d=$(date -I -d "$d + 1 day")
  done
}

# 0 is true but false is 1 in bash
validate_text() {
  if echo "$1" | grep -Pzo "$TEXT_VALIDATE1" >/dev/null; then
    return 0
  else
    if echo "$1" | grep -Pzo "$TEXT_VALIDATE2" >/dev/null; then
      return 0
    else
      if echo "$1" | grep -Pzo "$TEXT_VALIDATE3" >/dev/null; then
        return 0
      else
        echo "fail validate_text"
        echo "$1"
        return 1
      fi
    fi
  fi
}

# 0 is true but false is 1 in bash
validate_tesseract_text() {
  local TYPE="$1"
  local TEXT="$2"
  if [[ "$TYPE" == 1 ]]; then
    if echo "$TEXT" | grep -Pzo "$TEXT_TESSERACT_VALIDATE1" >/dev/null; then
      return 0
    else
      echo "$TEXT"
      echo fail validate_tesseract_text1
      return 1
    fi
  else
    if echo "$TEXT" | grep -Pzo "$TEXT_TESSERACT_VALIDATE2" >/dev/null; then
      return 0
    else
      echo "$TEXT"
      echo fail validate_tesseract_text2
      return 1
    fi
  fi
}

main() {
  mkdir -p "$LOCAL_DIR"/pdf
  mapfile -t FILES < <(get_dates)
  echo "state,count,date" >estados.csv
  echo "count,date" >total.csv
  for ((i = 0; i < ${#FILES[@]}; i++)); do
    echo "${FILES[i]}"
    DATE=$(echo "${FILES[i]}" | grep -P -o "(homicidios[_]+[0-9]{2}[0-9]{2})\K[0-9]{4}")-$(echo "${FILES[i]}" | grep -P -o "(homicidios[_]+[0-9]{2})\K[0-9]{2}")-$(echo "${FILES[i]}" | grep -P -o "(homicidios[_]+)\K[0-9]{2}")
    curl -sC - "http://www.informeseguridad.cns.gob.mx/files/""${FILES[i]}" -o "$LOCAL_DIR"/pdf/"${FILES[i]}"
    STATES=$(pdftotext -l 1 -nopgbrk -layout "$LOCAL_DIR"/pdf/"${FILES[i]}" - |
      iconv -f utf8 -t ascii//TRANSLIT//IGNORE |
      grep -z -o -i -E "Aguascalientes.*(Zacatecas|Michoacan)[ ]+[][O|l>S0-9]+[ ]*." |
      sed -E 's/([a-zA-Z]{2,99}[ ]*[a-zA-Z]{2,99}[ ]*[a-zA-Z]{2,99})/,\1,/g' |
      sed -E 's/(,[a-zA-Z0-9 ,]+ ,)/\1\n/g' |
      sed -E 's/^[ ]*,//g' |
      tr -d '\0' |
      sed -E 's/(,[a-zA-Z0-9 ,]+ ,)/\1\n/g' |
      sed -E 's/^[ ]+,//g' |
      sed -E 's/[ ]+o[ ]*/ 0/g; s/[ ]+l[ ]*/ 1/g' |
      tr '[:upper:]' '[:lower:]' |
      sed -E 's/,$//' | sed '/^,$/d; /^$/d' | sed -E "s/$/,${DATE}/g; s/(,)[ ]+([0-9]+)[ ]*(,)/\1\2\3/g" || true)
    TOTAL=$(pdftotext -l 1 -nopgbrk -layout "$LOCAL_DIR"/pdf/"${FILES[i]}" - |
      grep -o -i -P "(?<=Total )[ ]*[ \d]+" | sed -E 's/[ ]+//g' | grep -Po "^[0-9]+$" || true)
    if [[ -n "${STATES}" ]]; then
      if ! validate_text "${STATES}"; then
        exit 1
      fi
      echo "${STATES}" >>estados.csv
      echo "${TOTAL},${DATE}" >>total.csv
    else
      echo "${DATE}" " - Using tesseract"
      pdftoppm -r 300 "$LOCAL_DIR"/pdf/"${FILES[i]}" "$LOCAL_DIR"/pdf/img/hom_"${DATE}" -png -singlefile
      (cd "$LOCAL_DIR"/pdf/ && convert -crop 50%x100% "$LOCAL_DIR"/pdf/img/hom_"${DATE}".png "$LOCAL_DIR"/pdf/img/output_"${DATE}".png)
      T1="$(tesseract "$LOCAL_DIR"/pdf/img/output_"${DATE}"-0.png stdout --user-words user_words.txt --user-patterns user_patterns.txt --psm 4 -l own --oem 0 |
        iconv -f utf8 -t ascii//TRANSLIT//IGNORE |
        sed -E 's/([0-9]) ([0-9])/\1\2/g' |
        grep -z -o -i -E "(Aguascalientes|Morelos).*(Michoacan|Zacatecas) [Z0-9]+" |
        tr -d '\000' | tr '[:upper:]' '[:lower:]' | # remove null and convert to lowercase
        sed -E 's/MiChoaCah/Michoacan/; s/puebm/puebla/; s/ta basco/tabasco/; s/chihuahua g/chihuahua 9/g; s/coahuha/coahuila/g; s/veracru2/veracruz/g' |
        # Change '1 1' to '11', remove leading |1l, remove empty lines, add date at the end
        sed -E "s/([0-9]) ([0-9])/\1\1/g; s/^[|1l]//g; /^[[:space:]]*$/d; s/[[:space:]]+([oz0-9]+)/,\1,${DATE}/g; s/,o,/,0,/g" |
        # Change z to 2
        sed -E 's/,z([0-9]*)/,2\1/g')"
      if ! validate_tesseract_text 1 "${T1}"; then
        exit 1
      fi
      echo "$T1" >>estados.csv
      T2="$(tesseract "$LOCAL_DIR"/pdf/img/output_"${DATE}"-1.png stdout --user-words user_words.txt --user-patterns user_patterns.txt --psm 4 -l own --oem 0 |
        iconv -f utf8 -t ascii//TRANSLIT//IGNORE |
        sed -E 's/([0-9]) ([0-9])/\1\2/g' |
        grep -z -o -i -E "(Aguascalientes|Morelos).*(Michoacan|Zacatecas) [Z0-9]+" |
        tr -d '\000' | tr '[:upper:]' '[:lower:]' | # remove null and convert to lowercase
        sed -E 's/MiChoaCah/Michoacan/g; s/puebm/puebla/g; s/ta basco/tabasco/g; s/chihuahua g/chihuahua 9/g; s/coahuha/coahuila/g; s/veracru2/veracruz/g' |
        # Change '1 1' to '11', remove leading |1l, remove empty lines, add date at the end
        sed -E "s/^[|1l]//g; /^[[:space:]]*$/d; s/[[:space:]]+([oz0-9]+)/,\1,${DATE}/g; s/,o,/,0,/" |
        # Change z to 2
        sed -E 's/,z([0-9]*)/,2\1/g')"
      if ! validate_tesseract_text 2 "${T2}"; then
        exit 1
      fi
      echo "$T2" >>estados.csv
      printf '%s,%s\n' "$(tesseract "$LOCAL_DIR"/pdf/img/output_"${DATE}"-1.png stdout --user-words user_words.txt --user-patterns user_patterns.txt --psm 4 -l own --oem 0 | grep -oP "T.ta.[ ]+\K[0-9 ]+" | sed 's/ //g' | grep -Po '^[0-9]+$')" "${DATE}" >>total.csv
    fi
    sleep 0
  done
}

main "$@"
