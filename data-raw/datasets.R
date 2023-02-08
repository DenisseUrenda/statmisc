## code to prepare `datasets` dataset goes here

library(usethis)
library(readxl)
library(dplyr)
library(stringr)

Applewood = as.data.frame(read_excel("data-raw/Applewood_Dataset.xlsx"))
Awards = read.csv("data-raw/golden_globe_awards.csv")
BWSyP = as.data.frame(read_excel("data-raw/BWSyP.xls"))
names(BWSyP)[4:6] = c("Rank","Price","Earnings")
Cholesterol = read.csv("data-raw/Cholesterol.csv")
Crime = read.csv("data-raw/crime.csv")
Crime = Crime %>% mutate(
  SHOOTING = ifelse(SHOOTING == "", "No","Yes"),
  DISTRICT = replace(DISTRICT, DISTRICT == "", NA),
  UCR_PART = replace(UCR_PART, UCR_PART == "", NA),
  STREET = replace(STREET, STREET == "", NA)
)
Diet = read.csv("data-raw/Diet_R.csv")
Diet = Diet[order(Diet$Person),]
Heart = read.csv("data-raw/heart_2020_cleaned.csv")
SaYoPillow = read.csv("data-raw/SaYoPillow.csv")
names(SaYoPillow) = c("snore","resp","temp","limb","blood",
                      "eye","hours","heart","stress")
Violence = read.csv("data-raw/violencia.csv")
Violence$X = NULL
names(Violence) = c("Sex","Type")
Violence = Violence %>% mutate(
  Sex = ifelse(Sex == "femenino", "female", "male"),
  Type = as.character(factor(
    Type, levels = unique(Type),
    labels = c("None","Others", "Couple", "Multiple")
    )
  )
)
Population = read.csv("data-raw/population_by_country_2020.csv")
names(Population)[c(1:2,5:11)] = c(
  "Country","Population","Density","Land",
  "Migrants","Fertility","Age","Urban","World.Share"
)
f = function(x) return(sapply(str_split(x," "), function(x) as.numeric(x[1])))
Population = Population %>% mutate(
  Yearly.Change = f(Yearly.Change),
  Fertility = as.numeric(Fertility),
  Age = as.integer(Age),
  Urban = f(Urban),
  World.Share = f(World.Share)
)

housewives = scan("data-raw/amas.txt", what = "character", sep = "\n")
housewives = ifelse(housewives == "No","No","Yes")
lightbulb = scan("data-raw/focos.txt")
geyser = scan("data-raw/geiser.txt")
particles = scan("data-raw/particulas.txt")
purity = scan("data-raw/pureza.txt")
salaries = scan("data-raw/saldos.txt")
train = scan("data-raw/tren.txt")

usethis::use_data(Applewood, Awards, BWSyP, Cholesterol, Crime, Diet, Heart,
                  SaYoPillow, Violence, Population, housewives, lightbulb,
                  geyser, particles, purity, salaries, train, overwrite = T)
