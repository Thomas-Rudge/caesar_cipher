# caesar_cipher
A caesar cipher that takes in an ascii string and a shift factor, shifts the strings characters across the ascii table (excluding non-printable characters) by the shift factor, and returns the new string.

Example

'''Ruby
require 'caesar'

>> cipher("Thomas Rudge", 10)
"^rywk}*\\ nqo"

>> cipher("^rywk}*\\ nqo", -10)
"Thomas Rudge"

>> cipher("Hello World!!", 123)
"d\")),<s,/)!==" 

>> cipher("d\")),<s,/)!==", -123)
"Hello World!!" 

>>cipher("This\nis\na\ntest.", 13)
"auv!v!n\"r!\";" 

>> cipher("auv!v!n\"r!\";", -13)
"Thisisatest."

'''
