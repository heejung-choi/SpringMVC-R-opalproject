# SNS의 Open API 활용

library(httr)
library(rvest)
library(XML)

rm(list=ls())  # 요청할때 문제가 있었음에도 아까 성공시 요청했던 결과가 나오는 경우 .
searchUrl<- "https://openapi.naver.com/v1/search/blog.xml"  #URI 문자열을 가지고 데이터를 수집할때 사용하라고 기관이 지정해준 URL ...  이 URL은 정해져 있다.  확장자가 XML, JSON를 사용하는데 그 때 확장자에 따라서 요청하는 방식이 달라진다.  
Client_ID <- "izGsqP2exeThwwEUVU3x"
Client_Secret <- "WrwbQ1l6ZI"

#요청 해더에 인증키를 같이 보내야 해서,,, (인증키 없이 가능한 경우는 브라우저에도 나온다 ) 브라우저에 요청해도 안나옴. 


query <- URLencode(iconv("고혈압 건강음식","euc-kr","UTF-8")) # iconv 함수를 이용해 봄이라는 문자열을  euc-kr을 이용해서 utf-8이 쿼리문자열이 만들어 지게끔// 쿼리문자열 구성하기 위해, URL 인코드 하는 ... 쿼리 문자열 , 영문자 , 일부 특수 문자 빼고는 %와 함께 16진수로 간다.
url <- paste0(searchUrl, "?query=", query, "&display=100")
doc <- GET(url, add_headers("Content_Type" = "application/xml",
                            "X-Naver-client-Id" = Client_ID, "X-naver-Client-Secret" = Client_Secret))



#GET방식이여서 add_headers함수 를 이용해서 쿼리 문자열 더해줌. 정해진 아이디와 비번으로 요청 해더에 요청하면    
#서버에게 추가로 요청할 처리(추가로 요청할 header)가 있거나, post 방식으로 요청하려면 httr패키지 쓴다. ...add_headers 쿼리문자열 붙이는 ...

# 블로그 내용에 대한 리스트 만들기		
doc2 <- htmlParse(doc, encoding="UTF-8")
text<- xpathSApply(doc2, "//item/description", xmlValue)

text1<-text #검색어:고혈압에 좋은 음식
text2<-text #검색어: 본태성 고혈압에 좋은 음식
finish2<-append(text1,text2)
finish2
text3<-text #검색어:  1차성 고혈압에 좋은 음식
finish2<-append(finish2,text3)
text4<-text #검색어: 2차성 고혈압에 좋은 음식
finish2<-append(finish2,text4)
text5<-text #고혈압 건강식품
finish2<-append(finish2,text5)
text6<-text #고혈압 건강음식
finish2<-append(finish2,text6)



text2 <- gsub("</?b>", "", finish2)  #</?b> : <b> ,,,, </b> 둘다 없애야 하는데 (시작, 종료 각각 지정해서 없애도 되지만) /?( 바로 앞에 있는 문자가 0번 내지 한번.) 를 이용하면 한방에 없애줌. 
text2
text3 <- gsub("&.+t;", "", text2)   #&.+t;   :  . (임의의 문자)가 + ( 한번 이상 )    ---> 이러면  &1t; ..... &gt; 다 없애 버릴 수 있다. 
text3
text4<- gsub("[[:punct:][:cntrl:]]", "", text3)
text4
text5<- gsub("[[:lower:][:upper:]]", "", text4)
text5
text6<- gsub("[[:digit:]]","",text5)
text7<- gsub("[▶,◀,♡,■,⊙,♠,☆,★,○,▼,▽,▲,➨,☞,♣,	◦◦에,^ㅎ,∇,2,4,	I]","",text6)


word_data <- sapply(text7, extractNoun, USE.NAMES = F)
word_data
word_data2 <- extractNoun(word_data)
word_data2
undata <- unlist(word_data2)
undata

word_table <- table(undata)
undata2 <- Filter(function(x) {nchar(x) >= 2 | nchar(x) < 5}, undata)

word_table2 <- table(undata2)
word_table2
View(word_table2)

final <- sort(word_table2, decreasing = T)
View(final)
write.csv(final,"C:/Eunha/opal3.csv")



# 워드 클라우드2

library(wordcloud2)
(words <- read.csv("C:/Eunha/opal3.csv",stringsAsFactors = F))


#원 기울여
opalhighbloodpressure<-wordcloud2(words,fontFamily = "Yang Rounded",size=1.0,col="random-light",backgroundColor = "black",rotateRatio = 1 ,minRotation = -pi/6, maxRotation = -pi/6)
#삼각형
opalhighbloodpressure1<-wordcloud2(words, shape = 'triangle-forward',fontFamily = "Yang Rounded",size=1.0,col="random-light",backgroundColor = "black",rotateRatio = 0 ,minSize = 0.5)

library("htmlwidgets")   # 결과를 html로 만들어 주는 도우미 패키지
#원 기울여
saveWidget(opalhighbloodpressure,"C:/Eunha/opalhighbloodpressure.html",selfcontained = F)
#삼각형
saveWidget(opalhighbloodpressure1,"C:/Eunha/opalhighbloodpressure_T.html",selfcontained = F)
