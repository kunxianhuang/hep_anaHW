#ex1_4.R
#Written by Kunxian Huang (2016, 12, 26)
#if object X exist in one of N locations
#P is the prior belief in the existence of X
#after a unsuccessfully investigated
#the belief (prior) changes to P'=(N-1)(N-P)P
#after 9 unsuccessful trials, what is the postrious
# if the prior is 0.9 and 0.99

prior<-function(bp)
{
	p<-bp
	cat("The prior p before investigation is",p,"\n")
	for (n in 10:2) p<-(n-1)/(n-p)*p
	cat("The prior p after investigation became",p,"\n")
	post<-p
	return (post)
}



print("exercise 1.4\n")
#if it is true, the probability of 9 unsucessful pull is
p_BA<-0.9**9

#two initial prior values
prior_x<-c(0.9, 0.99)

for (i in 1:2){
    
    pr<-prior_x[i]
    #cat("The prior is ", pr,"\n")
    p_A<- prior(prior_x[i])
    
    #the probability of experimental (9 uncessuful) can be written as
    #p(B)=p(B|A)*p(A)+p(B|A-bar)*(1-p(A))
    p_B<- p_BA*p_A + 1.0*(1-p_A)
    p_AB<- p_BA*p_A/p_B
    
    cat("The posterior prob. is", p_AB,".\n\n")
}


