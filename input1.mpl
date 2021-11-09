number_x = 10
number_y = 15

text _firstName = MohiEldin
text _lastName  = Ahmed
text _fullName  = _firstName + _lastName

number _dept

if _firstName equals MohiEldin
    _dept = compeng
    _x    = 20
    _y    = 0
if not
    _dept = chemeng
    _x    = 10
    _y    = 0

while _y less than _x
    _dept = _dept + _y
    _y = _y + 1

