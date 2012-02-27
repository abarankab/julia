
load ("../j/bigint.j")
a=BigInt("123456789012345678901234567890")
b=BigInt("123456789012345678901234567891")


@assert typeof(a+1) == BigInt
@assert a+1 == b
@assert b == a+1
@assert !(b == a)
@assert b > a
@assert b >= a
@assert !(b < a)
@assert !(b <= a)

c = BigInt("246913578024691357802469135780")
@assert typeof(a * 2) == BigInt
@assert a*2 == c
@assert c-a == a
@assert c == a + a
@assert c+1 == a+b

d = BigInt("-246913578024691357802469135780")
@assert typeof(d) == BigInt
@assert d == -c


ee=2^63-1
@assert typeof(BigInt(ee)) == BigInt
@assert BigInt(ee)+1 == BigInt("9223372036854775808")

#Multiple calls for sanity check, since we're doing direct memory manipulation
@assert string(a) == "123456789012345678901234567890"
@assert string(b) == "123456789012345678901234567891"
@assert string(c) == "246913578024691357802469135780"
@assert string(d) == "-246913578024691357802469135780"
@assert string(a) == "123456789012345678901234567890"

@assert div(BigInt(3), BigInt(2)) == BigInt(1)
@assert rem(BigInt(3), BigInt(2)) == BigInt(1)

@assert a+int(1) == b
@assert a+int8(1) == b
@assert a+int16(1) == b
@assert a+int32(1) == b
@assert a+int64(1) == b

