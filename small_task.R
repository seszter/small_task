A <- c(1,2,3,4,5,6,7,8,9,10,11,12)
B <- c(1,1,42,3,5,5,45,7,21,9,11,67)
C <- c(12,11,10,9,8,7,6,5,4,3,2,1)

cor_A_B <- cor(A,B)
t_A_B <- t.test(A,B)
p_A_B <- t_A_B$p.value
if (p_A_B < 0.05){
  sig_A_B <- 'Difference'
} else{
  sig_A_B <- 'No Difference'
}
cat('A-B Correlation:', cor_A_B, '-', sig_A_B)

cor_A_C <- cor(A,C)
t_A_C <- t.test(A,C)
p_A_C <- t_A_C$p.value
if (p_A_C < 0.05){
  sig_A_C <- 'Difference'
} else {
  sig_A_C <- 'No Difference'
}
cat('A-C Correlation:', cor_A_C, '-', sig_A_C)


cor_C_B <- cor(C,B)
t_C_B <- t.test(C,B)
p_C_B <- t_C_B$p.value
if (p_C_B < 0.05){
  sig_C_B <- 'Difference'
} else{
  sig_C_B <- 'No Difference'
}
cat('B-C Correlation:', cor_C_B, '-', sig_C_B)

