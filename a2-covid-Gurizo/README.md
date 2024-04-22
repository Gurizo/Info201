# A2: U.S. COVID Trends

## Overview
In many ways, we have come to understand the gravity and trends in the COVID-19 pandemic through data. Regardless of media source, people are consuming more epidemiological information than ever, primarily through reported figures, charts, and maps.

This assignment is your opportunity to work directly with the same data used by the [New York Times](https://github.com/nytimes/covid-19-data/). While the analysis is guided through a series of questions, it is your opportunity to use programming skills to ask more detailed questions about the pandemic.

## Getting Started
You should start this assignment by opening up the `analysis.R` script. The script will guide you through an initial analysis of the data.

* **Coding prompts.** Complete the coding prompts in `analysis.R`. You MUST use the `dplyr` package.

* **Reflection prompts.** Throughout `analysis.R`, there are prompts labeled `"Reflection"`. Please write at least 1-3 sentences for each of these prompts below in this `README.md` file. As appropriate, provide evidence, give justification for your opinions, or genuinely reflect on your views. Please strive for concise, clear, and interesting writing.

## Reflection 1
Before actually calculating the total number of COVID cases and deaths, record your guesses for the following questions.

Guess: How many total COVID cases do you think there have been in the U.S.?
About 10 million COVID cases because it is very contagious.

Guess: How many total COVID-related deaths do you think there have been in the U.S.?
About 100,000 COVID-related deaths as there were lots of elderly people who get other disease while having COVID due to lowe immune system.

Guess: Which state do you think has the highest number of COVID cases, and which state do you think has the lowest?
New York probably have the highest number of COVID cases because they have lots of people, and Wyoming as they have the lowest population.

## Reflection 2
Did the number of COVID cases and deaths surprise you? Why or why not? What about the states with the highest and lowest number of cases? How did your guesses line up with the actual results? Answer in at least 1-3 sentences
Yes it surprises me because I did not expect such a high number of total COVID cases in U.S. I thought New York would have the highest, but it turns out to be California, but I think the reason would be similar. Also, I thought Wyoming would have the lowest, but I did not know that there is a state called American Samoa, which turns out to have about 50000 people in the state.

## Reflection 3
Which county has the highest number of cases in the state of Washington, and does it surprise you? Why or why not? (You may need to google this county to learn about it) Answer at least in 1-3 sentences
King has the highest number of cases, 410322, in the state of Washington. It has the highest population as I thought, so it does not really surprise me.

## Reflection 4
Why are there so many observations (counties) in the variable `lowest_deaths_in_each_state`? That is, wouldn't you expect the number to be around 50? Why is the number greater than 50? Answer in at least 1-3 sentences
I think it is due to the same number of deaths for different counties. This led the data to have more than one counties per states.


## Reflection 5
What do you think about the number and scale of the inconsistencies in the data? Does the fact that there are inconsistencies mean that people should not use this data? Why or why not? Answer in at least 1-3 sentences
People can definitely refer to this data, but some 27 rows of data are not matching. There could possibly been missing data as the data gathered are not perfect. Nonetheless, people can still utilize this dataset to analyze what they want to find the pattern, but not exact number.

## Reflection 6
Why were you interested in this particular question? Were you able to answer your question with code? What did you learn? Answer in at least 1-3 sentences
I could figure out that there were 31760084178 cases in 2022 being the most cases occurred, and January had the most COVID occurred. It could be due to the mask-off policty in 2022, and people throwing lots of new years party in January. 

## Reflection 7
What, if anything, made you curious about this COVID analysis? What, if anything, surprised you? What might you do the same or differently on your next data wrangling project? Answer in at least 1-3 sentences
I will keep using such great library and utilize proper functions that they provide. And I became curious about what other dataset that we might analyze during the group project.
