
# Loop constraints
directive set /fir2/core/core:rlp CSTEPS_FROM {{. == 0}}
directive set /fir2/core/core:rlp/main CSTEPS_FROM {{. == 4} {.. == 0}}
directive set /fir2/core/core:rlp/main/for CSTEPS_FROM {{. == 3} {.. == 1}}

# IO operation constraints
directive set /fir2/core/core:rlp/main/x:io_read(x:rsc.@) CSTEPS_FROM {{.. == 1}}
directive set /fir2/core/core:rlp/main/io_write(return:rsc.@) CSTEPS_FROM {{.. == 3}}

# Sync operation constraints

# Real operation constraints
directive set /fir2/core/core:rlp/main/for/for:acc#2 CSTEPS_FROM {{.. == 1}}
directive set /fir2/core/core:rlp/main/for/for:mux#10 CSTEPS_FROM {{.. == 1}}
directive set /fir2/core/core:rlp/main/for/for:mux CSTEPS_FROM {{.. == 1}}
directive set /fir2/core/core:rlp/main/for/for:mux#1 CSTEPS_FROM {{.. == 1}}
directive set /fir2/core/core:rlp/main/for/for:mux#2 CSTEPS_FROM {{.. == 1}}
directive set /fir2/core/core:rlp/main/for/for:mux#3 CSTEPS_FROM {{.. == 1}}
directive set /fir2/core/core:rlp/main/for/for:mux#4 CSTEPS_FROM {{.. == 1}}
directive set /fir2/core/core:rlp/main/for/for:mux#5 CSTEPS_FROM {{.. == 1}}
directive set /fir2/core/core:rlp/main/for/for:mux#6 CSTEPS_FROM {{.. == 1}}
directive set /fir2/core/core:rlp/main/for/for:mux#7 CSTEPS_FROM {{.. == 1}}
directive set /fir2/core/core:rlp/main/for/for:mux#8 CSTEPS_FROM {{.. == 1}}
directive set /fir2/core/core:rlp/main/for/U:ROM_1i4_1o8_3106bdac892fcba6b8e810136c5fc7fd2e CSTEPS_FROM {{.. == 1}}
directive set /fir2/core/core:rlp/main/for/U:ROM_1i4_1o1_04cc3276c127ea0e308702c30762117d2e CSTEPS_FROM {{.. == 1}}
directive set /fir2/core/core:rlp/main/for/for:mul CSTEPS_FROM {{.. == 2}}
directive set /fir2/core/core:rlp/main/for/for:acc#4 CSTEPS_FROM {{.. == 3}}
directive set /fir2/core/core:rlp/main/for/for:acc CSTEPS_FROM {{.. == 1}}
directive set /fir2/core/core:rlp/main/mul CSTEPS_FROM {{.. == 2}}
directive set /fir2/core/core:rlp/main/acc#1 CSTEPS_FROM {{.. == 3}}

# Probe constraints
