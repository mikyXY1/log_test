cislo=123

name="karel"

y=${cislo}

x=${name}

echo "${y} a ${x}"  #vypise 123 a karel

echo "${cislo} a ${name}"    #vypise 123 a karel / totez co nahore

echo "hodnota y je ${y} a hodnota x je ${x}"

echo "====================================================================================="

if [ $# -ne 2 ]; then
    echo "Chyba: Musíš zadat přesně 2 parametry."
    echo "Použití: $0 parametr1 parametr2"
    exit 1
fi

porovnani_cisel() {
prvni=$1
druhe=$2

  if [[ prvni -eq druhe ]]; then
        echo "cisla se rovnaji"
  else
        echo "cisla se nerovnaji"
  fi
}

porovnani_cisel $1 $2 # volani fce s dvema parametry, ktere jsou predany pri spusteni skriptu testik.sh

