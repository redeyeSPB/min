# file 6, verbose debugging diagnostic

size x:S n:N = Sys.write 6 x n . Z

main0 x:C = (Sys.write0 6 x . Z)

main1 x:S = size x !x

main x:S = (main1 x; main0 0a)

main_space x:S = (main1 x; main0 \ )

_time = %0 : %N

fill x:S s:*Any = main (S.fill x s)

