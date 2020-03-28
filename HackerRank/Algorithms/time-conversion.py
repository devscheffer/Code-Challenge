def timeConversion(s):
  initial = s[0:2]
  ampm = s[-2:]

  if ampm == 'PM' and int(initial) != 12:
    initial = int(initial) + 12
  elif int(initial) == 12 and ampm == 'AM':
    initial = str('00')
  return (str(initial)+s[2:-2])

