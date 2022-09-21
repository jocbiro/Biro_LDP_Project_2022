#Biro_LDP_Project_2022
#Jocelyn Biro
#2022-09-14


##this is an initial script that sets up files and downloads data.

library(groundhog)

#load packages using groundhog

groundhog.library(rdryad, date = "2022-09-14")

##create folders. All folders have an associated README file.

dir.create("data/")
dir.create("data/raw")
dir.create("data/clean")
dir.create("scripts/")
dir.create("outputs/")
dir.create("manuscripts/")
dir.create("data/dryad")

##after creating folders, data was downloaded from dryad onto desktop using zip file,
##and converted from excel files to csv files. Downloaded herb data, browse data and sapling data.
#call data here:

herb.meta <- read.csv('data/raw/herbslayer_data_De_Vriendt_etal_2020_meta.csv')
herb <- read.csv('data/raw/herbslayer_data_De_Vriendt_etal_2020.csv')

browse.meta <- read.csv('data/raw/browsing_data_De_Vriendt_etal_2020_meta.csv')
browse <- read.csv('data/raw.browsing_data_De_Vriendt_etal_2020.csv')

sapling.meta <- read.csv('data/raw/saplingslayer_data_De_Vriendt_etal_2020_meta.csv')
sapling <- read.csv('data/raw/saplingslayer_data_De_Vriendt_etal_2020.csv')

##I couldn't get the rdryad package to work, but attempted to download data from dryad here:
##doi: https://doi.org/10.5061/dryad.3xsj3txdp
####set cache
#rdryad_cache <- rdryad::dryad_get_cache()
#rdryad_cache$cache_path_set(full_path=normalizePath("/Users/JocBi/OneDrive - Wilfrid Laurier University/Documents/CIEE-REPRO-PRO-2022/", mustWork=FALSE))
#rdryad_cache$cache_path_get()
#rdryad_cache$mkdir()
#rdryad::dryad_set_cache(rdryad_cache)
#dryad_download(dois="10.5061/dryad.3xsj3txdp")
