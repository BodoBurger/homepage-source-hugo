---
authors:
- admin
categories:
- tutorial
date: '2019-04-01'
draft: False
output:
  md_document:
    toc: no
    variant: 'markdown+yaml\_metadata\_block'
tags:
- 'r-stats'
title: Use R and Google Sheets to calculate a Nutrition Table
---

I recently stumbled upon this [bread
recipe](https://greenysherry.com/life-changing-brot-mit-nuessen-nach-my-new-roots-glutenfrei-vegan/).
It's quickly prepared, tastes great and is full of valuable ingredients
(only oats, nuts and seeds, no flour). However, being a homemade bread
it does not come with a nutrition table. The following shows an easy way
to create one.

First, we put the recipe and the nutrional values of each ingredient
into two spreadsheets
([recipe](https://docs.google.com/spreadsheets/d/1C0AwjQYrudrV3ZLgQJZnCr9La7OVftRTZn3QKMrJx5E)
and [food
stats](https://docs.google.com/spreadsheets/d/1qgo8Yefb5nx5PVElZvmf6nSDI6RfN2ofd8CeMuSklHk)).
We combine these using **R** to get the nutrition table. As a bonus, we
can calculate the price of the recipe.

Using the *gsheet* package
--------------------------

A simple way to import Google Sheets to **R** is the
[gsheet](https://cran.r-project.org/package=gsheet) package. We only
need to supply the sharing link. It returns a
[tibble](https://tibble.tidyverse.org/).

``` {.r}
food_stats = gsheet::gsheet2tbl("https://docs.google.com/spreadsheets/d/1qgo8Yefb5nx5PVElZvmf6nSDI6RfN2ofd8CeMuSklHk")

recipes = gsheet::gsheet2tbl("https://docs.google.com/spreadsheets/d/1C0AwjQYrudrV3ZLgQJZnCr9La7OVftRTZn3QKMrJx5E")
```

*food\_stats* contains more ingredients than we need for our bread
recipe. So when we merge both data frames we only want to keep the rows
that contain the ingredients of the recipe. This is done by
*left\_join()* from the
[dplyr](https://cran.r-project.org/package=dplyr) package.

``` {.r}
library(dplyr)
bread_ingredients = left_join(recipes, food_stats, "Description")
```

``` {.r}
quantities = select(bread_ingredients, "Quantity (gr)")[[1]]

nutr_vals = bread_ingredients %>% select(-one_of(c("Other.x", "Other.y",
  "Quantity (gr)", "Description", "Full Description", "Salt"))) %>%
  select(-contains("Energy")) %>%
  select(-one_of("Price (€)")) %>% select(-contains("Packaging"))
```

**Nutrional values / 100g:**

``` {.r}
colSums(nutr_vals * quantities) / sum(quantities)
```

    ## Calories (kcal)       Total Fat   Saturated Fat     Total Carbs 
    ##              NA              NA              NA              NA 
    ##           Sugar   Dietary Fiber         Protein 
    ##              NA              NA              NA

*Draft*

Next step: download stats via nutrition database API.
