cislo=123

name="karel"

y=${cislo}

x=${name}

echo "${y} a ${x}"

echo "hodnota y je ${y} a hodnota x je ${x}"

echo "====================================================================================="

porovnani_cisel() {
prvni=$1
druhe=$2

  if [[ prvni -eq druhe ]]; then
        echo "cisla se rovnaji"
  else
        echo "cisla se nerovnaji"
  fi
}

porovnani_cisel $1 $2 # volani fce s parametry, ktere jsou predany pri spusteni skriptu testik.sh