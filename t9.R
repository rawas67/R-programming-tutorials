install.packages("nycflights13")
install.packages("dplyr")
library(dplyr)
library(nycflights13)
data(flights, package="nycflights13")
View(flights)

#1
r1<-flights%>%filter(arr_delay>=3)
View(r1)

#2
r<-flights%>%filter(arr_delay > 180, dep_delay <= 0)
View(r)

#3
r2<-flights%>%filter(dep_delay >= 60, (dep_delay - arr_delay > 50))
View(r2)

#4
flights%>%filter(dep_time >= 2400 | dep_time <= 500)

#5
flights%>%filter(max(dep_delay))

#6
flights%>%filter(max(air_time))

#7
flights%>%filter(min(air_time))

#8
select(flights, flight, origin, dest)

#9
flights%>%filter(time_hour>=as.Date(2013-06-01)& time_hour<=as.Date(2013-06-30))

#10
flight_time <- mutate(flights,
                        dep_time_mins = (dep_time %/% 100 * 60 + dep_time %% 100) %% 1440,
                        sched_dep_time_mins = (sched_dep_time %/% 100 * 60 +
                                                 sched_dep_time %% 100) %% 1440
)

select(flight_time, dep_time, dep_time_mins, sched_dep_time,sched_dep_time_mins)

#11
r4<-flights%>%filter(flight==88)
r4
flights%>% mutate_if(is.numeric,funs(.*46))


flights %>%
  filter(flight==88) %>%
  mutate(arr_delay=arr_delay+46)

#12
flights%>%
  group_by(carrier)%>%
  summarise(count=n(),avg=mean(air_time, na.rm=TRUE), shortest=min(air_time, na.rm=TRUE), farthest=max(air_time, na.rm=TRUE))%>%
  arrange(desc(count))

#13
flights%>%
  filter(month>=6 &month<=9)%>%
  group_by(origin, dest)%>%
  summarise(count=n(),avg=mean(air_time, na.rm=TRUE), shortest=min(air_time, na.rm=TRUE), farthest=max(air_time, na.rm(TRUE)))%>%
  arrange(desc(count))

#14
rw<-flights %>% 
  group_by(carrier) %>%
  summarise(n = n_distinct(dest)) %>%
  filter(count>=4)%>%
  arrange(desc(count))
rw

#15
flights %>% 
  group_by(carrier) %>% 
  summarise(avg_delay=mean(dep_delay, na.rm = TRUE) ) %>%
  filter(avg_delay == min(avg_delay))


