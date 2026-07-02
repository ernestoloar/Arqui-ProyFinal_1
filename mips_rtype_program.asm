# Programa de prueba MIPS32 - instrucciones tipo R
# Formato: op $rd, $rs, $rt

ADD   $8,  $1,  $2     # R8  = R1 + R2
ADD   $9,  $3,  $4     # R9  = R3 + R4
SUB   $10, $5,  $6     # R10 = R5 - R6
SUB   $11, $7,  $6     # R11 = R7 - R6
AND   $12, $1,  $2     # R12 = R1 & R2
OR    $13, $1,  $2     # R13 = R1 | R2
XOR   $14, $1,  $2     # R14 = R1 ^ R2
NOR   $15, $1,  $2     # R15 = ~(R1 | R2)
SLT   $16, $6,  $5     # R16 = 1 if R6 < R5 else 0
SLT   $17, $5,  $6     # R17 = 1 if R5 < R6 else 0