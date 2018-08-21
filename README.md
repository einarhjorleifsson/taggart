# taggart

For now just a test.

Do:

```r
devtools::install_github("fishvice/taggart", dependencies = FALSE)
```

Then:

```r
library(tidyverse)
library(taggart)
```

Some outputs:


```r
tg_catches() %>% glimpse()
```

```
## Observations: 4,964
## Variables: 14
## $ pkid                   <chr> "644d94dc-62d2-4eb4-9e33-082f902a4940",...
## $ ices_rectangle         <chr> "58D9", "58D7", "57D7", "57D7", "55C8",...
## $ catchdate              <int> 2015, 2016, 2017, 2016, 2016, 2017, 201...
## $ reference_plant        <chr> "758459f7-a4f4-43e8-830e-06c270d2da84",...
## $ plant_name             <chr> "IC02 Neskaupstad", "IC02 Neskaupstad",...
## $ plant_ices_rectangle   <chr> "59D6", "59D6", "59D6", "59D6", "59D6",...
## $ weight                 <dbl> 356403, 482060, 547359, 286168, 706663,...
## $ weightavg              <dbl> 0.4230, 0.4260, 0.4840, 0.4202, 0.3662,...
## $ recatch_ices_rectangle <chr> "Va2", "Va2", "Va2", "Va2", "Va2", "IIa...
## $ shep_regmark           <chr> "2862", "2900", "2865", "2909", "2909",...
## $ catch_number           <int> 1254, 1508, 872490, 1475, 1463, 879014,...
## $ ship_name              <chr> NA, "2900", NA, "2909", "2909", NA, "29...
## $ nation                 <chr> "IS", "IS", "IS", "IS", "IS", "IS", "IS...
## $ processing_date        <chr> "2015-08-19T23:59:00", "2016-09-01T23:5...
```

```r
tg_catches_bio() %>% glimpse()
```

```
## Observations: 25,305
## Variables: 18
## $ lo             <dbl> -1.500000, 1.016667, -1.500000, 0.000000, -2.15...
## $ la             <dbl> 60.25000, 63.60000, 60.25000, 64.50000, 62.2000...
## $ ices_rectangle <chr> "49E8", "56F1", "49E8", "57F0", "53E7", "48E4",...
## $ ices_area      <chr> "IVa", "IIa2", "IVa", "IIa2", "IVa", "VIa", "II...
## $ sex            <int> 1, 2, 1, 2, 1, 1, 1, 1, 1, 2, 1, 2, 1, 2, 1, 2,...
## $ fishno         <chr> "28", "10", "20", "6", "46", "13", "93", "14", ...
## $ station        <chr> "8089", "8018", "8093", "36", "20145026", "3", ...
## $ catch_gear     <chr> "3500", "3712", "3500", "3712", "FL", "3500", "...
## $ catch_date     <chr> "2015-10-29T00:00:00", "2014-09-16T00:00:00", "...
## $ land           <lgl> NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA,...
## $ ship_radio     <chr> "ZQMP4", "LLRG", "ZQMP4", "LMMC", "FD0042", "GU...
## $ nation         <chr> "74", "58", "74", "58", "FO", "74", "FO", "58",...
## $ sampleno       <chr> "38089", "38018", "38093", "38036", "20145026",...
## $ mauturity      <int> 3, 8, 8, 8, 8, 4, 8, 8, 6, 6, 6, 3, 8, 8, 6, 6,...
## $ weight         <dbl> 0.4920, 0.3730, 0.3100, 0.4680, 0.3400, 0.5230,...
## $ length         <dbl> 0.38, 0.36, 0.33, 0.36, 0.33, 0.40, 0.37, 0.38,...
## $ age            <int> 8, 5, 5, 7, 4, 11, 9, 8, 5, 6, 5, 3, 3, 4, 4, 3...
## $ year_class     <int> 2007, 2009, 2010, 2010, 2010, 2007, 2006, 2008,...
```

```r
tg_expeditions() %>% glimpse()
```

```
## Observations: 351,679
## Variables: 19
## $ mission           <chr> "2018828-old", "Iceland2015", "2014809", "20...
## $ when              <chr> "2018-05-09T00:00:00", "2015-08-24T05:55:12"...
## $ experiment        <chr> "1070", "46", "27", "6", "1070", "46", "29",...
## $ release           <chr> "3", "2", "7", "3", "6", "1", "1", "2", "5",...
## $ release_birds     <chr> "Medium", "None", "Medium", NA, "Medium", "N...
## $ release_waves     <chr> "None", "Medium", "Medium", NA, "None", "Non...
## $ release_mortality <int> 0, NA, 0, 0, 0, NA, 0, 0, 0, NA, NA, 0, 0, N...
## $ fish              <chr> "Mackerel", "Mackerel", "Mackerel", "Mackere...
## $ rfid              <chr> "900153000019678", "900196000240793", "90019...
## $ ices              <chr> "32D8", "58C7", "38E0", "32D7", "32D8", "58C...
## $ assistent         <chr> "JR", "SJ", "ALJ", NA, "IH", "JR", "KH", NA,...
## $ plantid           <chr> NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, ...
## $ catchid           <chr> NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, ...
## $ lo                <chr> "-11,46", "-22,33997", "-9,90975", "-12,2580...
## $ relesedate        <chr> "2018-05-27T09:14:31.5266667", "2015-08-26T0...
## $ recapturedate     <chr> NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, ...
## $ tagger            <chr> "AC", "HP", "JR", "EH", "EH", "EH", "JR", "J...
## $ la                <chr> "51,90", "64,91406", "54,83232", "51,9455733...
## $ length            <dbl> 0.40, 0.38, 0.38, 0.31, 0.35, 0.39, 0.37, 0....
```

```r
tg_expeditions_bio() %>% glimpse()
```

```
## Observations: 4,717
## Variables: 18
## $ lo             <dbl> -23.916667, -10.366667, -12.016667, -9.350000, ...
## $ la             <dbl> 64.73333, 54.78333, 52.96667, 56.16667, 60.4316...
## $ ices_rectangle <chr> "58C6", "38D9", "34D7", "41E0", "49F1", "49E7",...
## $ ices_area      <chr> "Va2", "VIIb", "VIIc", "VIa", "IVa", "IVa", "VI...
## $ sex            <int> 2, 2, 1, 1, 2, 2, 1, 1, 2, 1, 2, 1, 1, 2, 2, 1,...
## $ fishno         <chr> "8", "17", "47", "17", "11", "12", "22", "6", "...
## $ station        <chr> "MMGE2-2017", "6", "7", "27", "75", "116", "13"...
## $ catch_gear     <chr> "3", "1", "5211", "5211", "3712", "3411", "5211...
## $ catch_date     <chr> "2017-08-17T00:00:00", "2017-05-11T00:00:00", "...
## $ land           <lgl> NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA,...
## $ ship_radio     <chr> "2869", "LDFS", "LACT", "LCNX", "LIVA", "LLYM",...
## $ nation         <chr> "ICE", "58", "58", "NO", "58", "58", "58", "NO"...
## $ sampleno       <chr> "2", "37356", "37207", "37527", "86225", "86567...
## $ mauturity      <int> 6, 8, 6, 6, 8, 8, 6, 6, 6, 6, 8, 6, 5, 8, 3, 5,...
## $ weight         <dbl> 0.6666, 0.3310, 0.4340, 0.2810, 0.3580, 0.4090,...
## $ length         <dbl> 0.40, 0.36, 0.39, 0.31, 0.33, 0.37, 0.31, 0.42,...
## $ age            <int> 10, 6, 10, 3, 4, 6, 3, 11, 11, 6, 6, 10, 4, 4, ...
## $ year_class     <int> 2007, 2011, 2002, 2012, 2007, 2005, 2008, 2003,...
```