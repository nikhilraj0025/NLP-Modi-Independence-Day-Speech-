library(tm)
library(stringr)
library(wordcloud)
library(SnowballC)
aa<-readLines("C:/Users/AKHIL/Desktop/New folder/MrModi_Speech_IndependenceDay_20171.txt")
aa
text<-paste(readLines("C:/Users/AKHIL/Desktop/New folder/MrModi_Speech_IndependenceDay_20171.txt"),collapse = " ")
View(text)
text
text<-tolower(text)
print(stopwords())#######printed stopwords
text2<-removeWords(text,stopwords())
text2#####removed from the passage
bag_of_word1<-str_split(text2," ")###breaking document into words where stop words are indicated in ""
bag_of_word1
str(bag_of_word1)
bag_of_word1<-unlist(bag_of_word1)
bag_of_word1
wordcloud(bag_of_word1,min.freq = 10)


mysent<-get_nrc_sentiment(text2)
mysent
str(mysent)
ab=as.matrix(mysent)

barplot(ab,main='Modi Speech',xlab = 'Sentiment Breakup',ylab='Score',col=c('Red'))




library('syuzhet')
library('sentimentr')
