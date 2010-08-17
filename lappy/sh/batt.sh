# all thanks go to clarkb

while :; do
  acpi | sed -n 's/^Battery 0: \(.*\)$/\1/p'
done | dzen2 -p 3 -w 300 -bg "Black" -fg "White" -x 450 -y 0
