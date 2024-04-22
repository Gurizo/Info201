# Assignment 1: Protests

During the past few years in the United States, there has been a surge of protests in support of the Black Lives Matter movement, women's rights, trans rights, immigration reform, gun control, the environment, and many other social and political issues.

In this assignment, you will work with data from [CountLove](https://countlove.org/), a group that collects data about protests from across the United States, including information about the purpose of the protests, the location of the protests, as well as how many people attended the protests. This data has often been [cited by the *New York Times*](https://www.nytimes.com/2020/08/28/us/black-lives-matter-protest.html), among other major outlets.

Through this assignment, you will be able to answer questions including:
- What were the most attended and least attended protests in the US in the last 5 years?
- How many protests occurred in Washington state?
- How did the number of protests in 2019 compare to 2020, and why?
- Why are people protesting in the US? What are the biggest motivators?


This assignment is divided into 2 parts. You will complete your coding work in the `analysis.R` file, and you will write short answer responses related to critical analysis and reflection of the data in this `README.md` file. Before getting started on your coding work, you should complete the section **"Critical Analysis & Reflection: Before You Code"** below.

When you are finished with the assignment, be sure to push all changes to your GitHub repository and then submit the link on Canvas.

## Before You Code: Critical Analysis & Reflection

Before diving into this (or any) dataset, it's important to know where the data came from, and it's important to have or to seek out _domain familiarity_ — in other words, knowledge about the subject/topic of the dataset. (We don't want to be "strangers in the dataset," as Catherine D'Ignazio and Lauren Klein describe it.)

To get more familiar, we are going to begin by doing some background reading.

- First, please read [this FAQ](https://countlove.org/faq.html) from the CountLove website and the opening of [this blog post](https://www.tommyleung.com/countLove/index.htm). Based on the information in these pieces, why did the creators start collecting the CountLove data? Please answer in 2-3 sentences (3 points)
- They started collecting the CountLove data address the lack of major data source for protest activity in the United States. They wanted to consolidate the news reports to detect patterns in the data set and to provide accessible resources to individuals, hoping to foster a more inclusive and compassionate society.

- Next, we would like you to read this [*New York Times* piece, which uses CountLove data](https://www.nytimes.com/interactive/2020/06/13/us/george-floyd-protests-cities-photos.html) (here's a [Google Doc version for anyone who gets paywalled](https://docs.google.com/document/d/1sdjFsA5csYuH4plNEEk7WXT77K5h5ZuyW05CBwYdk6A/edit?usp=sharing)), and which describes the Black Lives Matter protests that occurred in the summer of 2020. Please summarize the main point or argument of this article in 2-3 sentences (3 points)
- The article describes the widespread Black Lives Matter protests that occurred in the U.S. in the summer of 2020. It was caused after the death of George Floyd at the hands of police. The protests were largely peaceful, but also involved violence, spreading the awareness of the hardships faced by black Americans.

Next, we're going to reflect about who collected this data, and what's actually inside it.

- Who collected and shared the CountLove data, and what do they do for a living? Please answer in 1-2 sentences(2 points)
- Tommy Leung and Nathan Perkins collected and shared the data. They are engineers and scientists with a keen interest in civic responsibility and public policy.

- As Klein and D'Ignazio remind us, when it comes to data, "what gets counted counts." What types of demonstrations does CountLove include in their data, and what types do they exclude? (3 points)
- CountLove includes the data about protests regarding racial justice, but they exclude protests not related to such topics like race and police brutality.

- How and where does CountLove get their data about the protests? Please answer in 2-3 sentences (2 points)
- They get their data from SNS, news, and individuals. They also incorporate machine learning to identify and ensure that the data is reliable.

- How does CountLove make their estimates about the number of people who attended a protest? What potential problems might arise from this method of estimation? Please answer in 3-4 sentences (4 points)
- They estimates the number of people who attended a protest by analyzing the photos and videos that they found utilizing the machine learning algorithm. However, this algorithm may not be accurate because of the crowd density, lighting, or quality of the source. Also, they might use a biased algorithm when analyzing the sources.

## While You Code: Critical Analysis & Reflection

- Reflection 1: Why do you think the mean is higher than the median? Which metric would you use in a report about this data, and why? Please answer in 2-3 sentences (2 points)
- It is because the distribution of the number of attendees is positively skewed. This means that there are some protests with large numbers of attendees, making the mean higher. The metric that I would use is number of attendees participated in the protests.

- Reflection 2: Before actually calculating the number of protests that occurred in 2018, 2019, 2020, record your guesses for the following questions. (1 point)

  Guess: Do you think there were more protests in 2019 than in 2018? Why or why not? Please answer in 1 or 2 sentences
  Guess: Do you think there were more protests in 2020 than in 2019? Why or why not? Please answer in 1 or 2 sentences
  - I think 2019 would have the lowest protests due to COVID-19. And 2018 would have the highest because it was before COVID-19.

- Reflection 3: Does the change in the number of protests from 2018 to 2019 to 2020 surprise you? Why or why not? What do you think explains the fluctuation? Please answer in 1 or 2 sentences (2 points)
- It surprises me because even though there was pandamic, people came out to protest for an innocent person. Since there was an incident which police officer committed a murder of George Floyd, lots of people were involved in a protest in 2020.

- Reflection 4: What is the first and fourth most frequent category of protest? Do these frequencies align with your sense of the major protest movements in the U.S. in the last few years? Why or why not? (3 points)
- First and fourth were Racial Injustice and other, respectively. It aligns with my sense of the major protest movements in the U.S. in the last few years because there was an incident where an innocent person was dead due to a police officer. The data well represents the considerable number of protests occurred regarding racial injustice.

## After You Code: Critical Analysis & Reflection

In the second chapter of *Data Feminism*, Klein and D'Ignazio describe 4 ways that data scientists can challenge power and take action:
> Taking action can itself take many forms, and in this chapter we offer four starting points:  
> (1) Collect: Compiling counterdata—in the face of missing data or institutional neglect—offers a powerful starting point as we see in the example of the DGEI, or in María Salguero’s femicide maps discussed in chapter 1.  
> (2) Analyze: Challenging power often requires demonstrating inequitable outcomes across groups, and new computational methods are being developed to audit opaque algorithms and hold institutions accountable.  
> (3) Imagine: We cannot only focus on inequitable outcomes, because then we will never get to the root cause of injustice. In order to truly dismantle power, we have to imagine our end point not as “fairness,” but as co-liberation.  
> (4) Teach: The identities of data scientists matter, so how might we engage and empower newcomers to the field in order to shift the demographics and cultivate the next generation of data feminists?  

- How does the CountLove project embody one or more of these 4 forms of challenging power? Please answer in at least 3-4 sentences (3 points)
- The project embodies incorporates different ways to challenge power and take action. First, it collects counterdata by keeping track of cases where people show hatred towards others on SNS to demonstrate that institutions are neglecting such data. Second, it analyzes the photo and video resources in order to demonstrate more data utilizing machine learning algorithm that they have developed.

- What is the most interesting or surprising thing you learned from this analysis? Please answer in at least 2-3 sentences (2 points)
- I found interesting that we can treat big data utilizing the given functions or creating new functions to result in expected outcome and to analyze the data. Also, I was surprised that such big data is well organized in internet and even incorporated machine learning algorithm to gather more data.

- What is a kind of analysis that you would like to do or that would be interesting to do with the CountLove data that you don't have the time or skills to accomplish at this moment? Please answer in at least 2-3 sentences (2 points)
- I think it would be interesting to discover how they analyze the photo and video data to estimate how many people were in the protest. I am interested in learning DNN and face recognization skills, and I think such project is a good example in a real world that utilizes such technique that I wish to learn.