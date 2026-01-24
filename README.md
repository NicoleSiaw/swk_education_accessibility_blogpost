# Mapping the Accessibility of Schools in Sarawak, Malaysia

Note: WIP, final blogpost will be released soon.

## Overview
This repository contains the final result outputs and charts used in the blogpost *Mapping the Accessibility of Schools in Sarawak, Malaysia*. This study focuses on understanding (in)accessibility of schools in Sarawak by mapping out granular population patterns in Sarawak, then calculating the route, travel mode, distance and travel time to the nearest school.

Original blogpost can be found on [nicolesiaw.com](https://nicolesiaw.com/mapping-the-accessibility-of-schools-in-sarawak-malaysia/)

<img width="1919" height="1079" alt="image" src="https://github.com/user-attachments/assets/e144c796-cede-48a0-83a6-1a54470fd202" />


----

## Key Features
- **Geography**: Sarawak, Malaysia 
- **Time Period**: 2020
- **Methodologies And Sources**: WorldPop, Open Source Routing Machine (OSRM)
- **Key Outputs**:
  - Manually refined version of WorldPop 1km x 1km population count estimates for Sarawak
  - Manually refined version of school location and student counts in Sarawak
  - OSRM calculated routes to the nearest school using foot, car and boat routes
  - Interactive maps visualising population counts, schools, and routes
  - Detailed writeup at [nicolesiaw.com](https://nicolesiaw.com/mapping-the-accessibility-of-schools-in-sarawak-malaysia/)
--- 

## File Structure
- **`Aggregated Data/`**: Aggregated summary statistics (e.g. mean, median, IQR, travel mode, travel time breakdown) based on the combined routes data.
- **`District Charts/`**: District by district maps for selected results:
  - `School_Population_Maps/`: Locations of population points and schools plotted by district.
  - `School_Population_Travel Mode_Maps/`: Population points colored by travel mode by district.
  - `School_Population_Travel Time_Maps/`: Population points colored by travel time by district.
  - `Travel Time Distribution_Charts/`: Frequency distribution charts of travel times for primary school and secondary school by district.
- **`Geographic Boundaries/`**: Shape files for district, DUN, and parlimen boundaries for Sarawak and Malaysia.
- **`Interactive Charts/`**: Interactive html charts used in the main blog post.
- **`Interactive Maps/`**: Interactive html maps used in the main blog post.
- **`OSRM Profiles/`**: OSRM profiles (boat, car, and foot) used to calculate the each mode of travel using OSRM.
- **`OSRM Routes to Nearest School/`**: Calculated OSRM route results to the nearest school for each travel mode (boat, car and foot) for both primary and secondary school.
- **`Interactive Charts/`**: Interactive html charts used in the main blog post.
- **`Population Data/`**: Manually adjusted population data at 1km resolution broken down by age and sex, based off WorldPop Global 1 population estimates.
- **`Roads and Waterways/`**: OpenStreetMap infrastructure data for available roads and waterways in Sarawak.
- **`School Data/`**: Data on all schools in Sarawak, including dilapidated schools, scraped from MOE in Jan 2026.
- **`Technical Notes/`**: Detailed methodological description and assumptions used in the production of this dataset and blogpost.
- All other jupyter notebook scripts in this repository are scripts use to generate charts used in the final blogpost. 

## Other Links
- [**Original blogpost**](https://nicolesiaw.com/mapping-the-accessibility-of-schools-in-sarawak-malaysia/)
- [**Technical notes**](https://github.com/NicoleSiaw/swk_education_accessibility_blogpost/blob/main/Technical%20Notes/Technical%20Notes%20-%20Mapping%20the%20Accessibility%20of%20Schools%20in%20Sarawak.pdf)

--- 

## Key Findings
- Between primary to secondary school, both travel times and inequality increase across all districts, though the patterns differ in each district.
- In the most inaccessible areas, schools become less walkable, and students rely increasingly on boats and off-road car travel.
- The share of students with no realistic route to school rises from around 1% in primary school to about 5% in secondary school.
- Unlike the first 95%, the final 5% of students live in widely different contexts; they face widely localised challenges and do not benefit from the economies of scale.
- Addressing their challenges therefore requires an understanding of local conditions, highlighting the importance of granular data.
- In rural areas, schools are not only harder to reach, but also less substitutable: a single school often serves a large area, so failures in transport or infrastructure have an outsized impact on the community.
- While improving physical access alone will not resolve all barriers to education, infrastructure upgrades remain urgent, as they are a necessary precondition before other forms of support can be effective.

---

# Contributors
This study was conducted by Nicole Siaw. Please contact for queries or feedback.

--- 

# References
- Bondarenko M., Kerr D., Sorichetta A., and Tatem, A.J. 2020. Estimates of 2020 total number of people per grid square, adjusted to match the corresponding UNPD 2020 estimates and broken down by gender and age groupings, produced using Built-Settlement Growth Model (BSGM) outputs. WorldPop, University of Southampton, UK. doi:10.5258/SOTON/WP00698 
- Luxen, D., & Vetter, C. (2011). Real-time routing with OpenStreetMap data. Proceedings of the 19th ACM SIGSPATIAL International Conference on Advances in Geographic Information Systems, 513–516. https://doi.org/10.1145/2093973.2094062 
- Wu, Q. (2021). Leafmap: A Python package for interactive mapping and geospatial analysis with minimal coding in a Jupyter environment. Journal of Open Source Software, 6(63), 3414. https://doi.org/10.21105/joss.03414
- World Bank. (2019). Rural accessibility mapping. [online] Available at: https://www.worldbank.org/en/data/statistical-capacity-building/data-innovation-fund/Rural-accessibility-mapping [Accessed 4 Dec. 2025].

---

## License
This project is licensed under the MIT License. See the `LICENSE` file for details.

---

Feel free to adjust further to align with your specific goals!
