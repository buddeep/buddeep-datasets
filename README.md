# Datasets

This repo holds scripts to fetch common datasets used by the group.

Each directory contains a `Makefile` that will pull down the relevant datasets
with a simple call of `make`.

Remember, that this repo does not hold the datasets themselves. _Please do not
add datasets directly to this repo!_

You will generally need `wget` installed to fetch data. Some of the datasets
require additional dependencies to pull. Notes can be found in the `README.md`
files in each datasets directory.
