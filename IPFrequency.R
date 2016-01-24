#Determines the frequency of occurrence of specific IPs. The intent is to determine how often a specific visitor visits a web site.

library(stringi)
library(stringr)
#IP List
s <- c("192.168.4.6", "192.168.4.6", "192.172.4.6", "192.172.4.6", "192.173.4.6")

for(i in 1:length(s)){
result <- sum(stri_count_fixed(s, s[i]))
if(result != length(s) - 1){print(result)}
if(result != length(s) - 1){print(s[i])}
if(result > 1){q <- str_replace_all(s, s[i], "0")}
s <- q
}

str_match(s, "192.168.4.6")
stri_unique(s, stregth=1)
