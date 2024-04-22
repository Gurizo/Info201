# Final Project Proposal

## How can airlines improve flight quality for their passengers?

### Authors

1. Lucas Cho (thcho19@uw.edu)
2. Stephanie Lam (twlam@uw.edu)
3. Kevin Liao (kevinl05@uw.edu)
4. Kisaki Yamamoto (kisaki@uw.edu)

### Date

Spring 2023

## Abstract

We are concerned with factors that influence passenger satisfaction on a flight, and how they can help improve airline companies' service quality. To address this concern, we plan to summarize and analyze the dataset's 25 features, such as flight distance and seat comfort, to provide insights into customer satisfaction. Our project aims to help airlines find the difference between passengers' expectations and their service, which allows them to improve their service quality for their customers.

## Keywords

Keywords: customer feedback; satisfactory form; flight quality

## Proposal

1. Introduction

Our plan is to summarize the dataset of airline passenger satisfaction and analyze what factors influence the level of satisfaction.　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　
The potential questions that can be answered through our project;
-	What factors would influence passenger satisfaction?
-	How can it be improved?
-	Are passengers’ expectations different depending on their gender and age?
-	Is passenger satisfaction different depending on flight classes?
-	Does a long flight distance lead to a negative evaluation?                                       
                                                                                                        
Passengers decide which airline to fly with based on not only the price of tickets but also the experience, so it is important to consider their service evaluations to gain a better understanding. Based on the results, airline companies can find a gap between passengers’ expectations and their service and find out what they need to change, which helps improve their service quality. 
Our project aims to aid airline companies to find the importance of a high quality of service in terms of inflight WiFi service, on-time performance, and convenience of online booking, etc. In addition, this helps them reduce unnecessary service, allowing them to put effort into what is more important. Consequently, they can advertise their service and increase customer loyalty and recurring revenue. Their financial performance growth will allow them to provide more exceptional services, which will make them stand out from the competition.

2. Related Work  
Describe your topic and related work in this space. You must include 3 citations to related work (URLs to similar work, high quality articles from the popular press, research papers, etc. ) Please use a standard citation style of your choice. (at least 200 words)

In order to achieve the project goal, finding the importance of a high quality of service, our team needs to understand what the passenger needs and what he/she looks for. According to the article Pyramid Media Group, the survey conducted from airguideonline.com concludes that the major factor that increase the passenger's satisfaction is the unique service that the airline provides, but not the cost. It is pretty evident that the more you increase the budget, the better service that you will get. However, this survey disvalidates this idea by emphasizing the importance of in-flight service such as providing different types of food and beverages and offerings that the passenger might need. By analyzing the columns of our dataset, such as customer_class, food and beverage, onboard_service, and satisfaction, our team can check whether the idea that the airguideonline.com provided is convincing or not.

Not only the high quality of service, but we also need to firmly understand what is considered as bad service: and possibly provide solutions depending on the situation. The book "Airline Booking: Customer Dissatisfaction and Communication Challenges" enumerates various negative experiences that the customers went through and the adequate solutions that the airlines can utilize depending on the situations. For instance, the author discusses denied bookings and canceled flights, which might make the customer depressed. In this situation, it is likely that the customer gives poor review and complains about the situation, which is understandable. The author demonstates the guideline to deal with such situations and our team can analyze the pattern from the solutions that the book suggests. This way we can figure out how to please the customers and increase the customer satisfaction eventually.

In the case of international flight, there are more factors to consider than the domestic flight. The article from Professional Services Close-Up suggests numerous methods to boost the passenger satisfaction on international flights. Since international flights carry the passengers for a longer time on average, the customers might experience uncomfortable situations as they have to sleep in uncomfortable chairs unless it is not the business class. However, the article also suggests that the ticket price is only one of the minor factor that might delight the passenger. With this knowledge and pattern that the article provides, our team can better analyze the dataset and set a more specific target which we want to focus on.  


## Sources cited(APA):
* Park, E. (n.d.). The role of satisfaction on customer reuse to airline services: An application of Big Data approaches. Orbiscascade. Retrieved May 4, 2023, from https://orbiscascade-washington.primo.exlibrisgroup.com/discovery/fulldisplay?docid=cdi_gale_infotracacademiconefile_A573362332&amp;context=PC&amp;vid=01ALLIANCE_UW%3AUW&amp;lang=en&amp;search_scope=UW_EVERYTHING&amp;adaptor=Primo+Central&amp;tab=UW_default&amp;query=any%2Ccontains%2Cflight+service+and+customer+satisfaction&amp;sortby=rank&amp;offset=0 
* Shibboleth authentication request. (n.d.). Retrieved May 4, 2023, from https://sk-sagepub-com.offcampus.lib.washington.edu/cases/airline-overbooking-customer-dis-satisfaction-comm-challenges 
* Shibboleth authentication request. (n.d.). Retrieved May 4, 2023, from https://go-gale-com.offcampus.lib.washington.edu/ps/i.do?p=GBIB&amp;u=wash_main&amp;id=GALE%7CA608051849&amp;v=2.1&amp;it=r 


3. The Dataset


From Kaggle, we obtained the "Passenger Satisfaction" dataset (https://www.kaggle.com/datasets/binaryjoker/airline-passenger-satisfaction), which was collected by TJ Klein, a Servo Firmware Engineer at Seagate Technology based in Minneapolis, Minnesota, United States. The dataset is a modified and cleaned-up version of the original dataset by John D. However, the exact source of the data released by John D is unknown, and it might be an anonymized real airline data where revealing the source would work against the airline. 

Measuring customer satisfaction is crucial for modern businesses to continually improve service quality. Surveys collecting passengers' satisfaction feedback can help airlines measure and analyze the vital elements that contribute to a better travel experience. The dataset comprises around 26,000 observations and 25 features, ranging from basic passenger information, such as their sex and age, to their ratings on flights and services, like flight distance and seat comfort. 

However, one ethical question is the use of the data for commercial purposes of other airlines, which may harm the specific airline where the data originated. Other than that, careful drawing of conclusions about the relationships between factors that contribute to a satisfactory passenger experience is crucial to avoid inaccurate conclusions, confounding results, and false information for readers' improper future judgments. Lastly, some issues with the dataset is the anonymity of the data source, which limits its credibility, and the lack of description of the features of the data, which might lead to a false reading of the data.

4. Implications

Some possible implications that this might cause for technologists, designers, and policymakers is that these people can take this information and learn how to better improve airline travel. In this case specifically designers can analyze what factors are likely to influence a customer's satisfaction with their travel. With this information they can understand what certain features should be included or removed to better customer satisfaction. One example of this is analyzing how flight distance influences the customer's satisfaction. One question designers might ask is, what is the maximum distance before a customer becomes dissatisfied with their travel. With this information they can design flights to better accommodate this distance by including more layovers, decreasing boarding time and more. Although these questions might not seem very important, they are very vital because customer satisfaction often leads to more loyal customers, and in a field where there are many different airlines to choose from, loyalty becomes very important. 

5. Limitations & Challenges

One limitation that this project does not address is the pre-existing personal bias, gender nonbinary people, as well as the influence of the airport itself. In this dataset a majority of the customers are loyal customers. This means that they have already used this airline once before, because of this they are more comfortable with the airline and will most likely favor it, rating it higher than average. This data also categorizes individuals in the gender binary which means they don’t account for those who are outside these boxes. Another limitation is that the data does not account for service inside the airport. Although most airports operate similarly, many things are different as well such as, how the airport is layed out, how difficult it is to locate certain gates, ease of claiming luggage and more. One common example is in airport security such as going through TSA, the data set does not account for how long the security check takes, or if the customer was searched, and whether they were delayed because of it.  


### Acknowledgements

Thank you Kisaki for looking up data sets :D

Thank you Kevin for creating the repository ;D