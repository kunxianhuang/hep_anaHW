#ex1_5
#written by Kunxian Huang(2017, 01, 06)

#for p value =10%, 5%, and 1%
#what are their corresponding number of standard deviation
#calculate them for one-sided and two-sided situations

print("exercise 1.5\n")

pval<-c(0.1, 0.05, 0.01)
cat("\n[One-sided]..................\n")

#qnorm return x that P(X<=x)=p for one-sided
sigma_x<-qnorm(1-pval, 0, 1)

sigma_x<-sigma_x/1.0
for (i in 1:3)
{
	cat("p value:",pval[i]*100,"\t corresponding number of sigma is", sigma_x[i],"\n")

}

cat("\n[Two-sided]..................\n")

#qnorm return x that P(X<=x)=p/2 for two-sided
sigma_x<-qnorm(1-0.5*pval, 0, 1)

sigma_x<-sigma_x/1.0
for (i in 1:3)
{
	cat("p value:",pval[i]*100,"\t corresponding number of sigma is", sigma_x[i],"\n")

}

