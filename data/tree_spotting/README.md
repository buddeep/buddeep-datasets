# Tree Spotting Data

## NYC OpenData Street Tree Census Data

`make fetch_trees` will pull down `trees/trees.csv`, `trees/trees.kml`

[Source](https://data.cityofnewyork.us/Environment/Street-Tree-Census-Manhattan-/e6n3-m3vc)

## Satellite Imagery

This training data is restricted from distribution and only available for
training. To fetch the satellite data, you will need to get the download URLs from a group admin. Place these URLs in:

    config/2012_MAP_URL.txt
    config/2014_MAP_URL.txt

`make fetch_cached_maps` will fetch the cached maps.

Please do not clean and fetch these maps repeatedly: our servers have bandwidth
limits.
