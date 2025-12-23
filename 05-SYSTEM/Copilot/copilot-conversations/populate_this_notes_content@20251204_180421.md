---
epoch: 1764889461472
modelKey: "gpt-5-mini|openai"
topic: "Populate Notes Content"


tags:
  - copilot-conversation
---

**user**: populate this notes content
[Context: Notes: 04-RESOURCES/Definitions/Topologically Integrated Geographic Encoding and Referencing (TIGER).md]
[Timestamp: 2025/12/04 18:04:21]

**ai**: I'll populate the note content with a clear, usable definition, detailed breakdown of TIGER data and products, practical tips, common attributes, limitations, and useful resources. You can copy this directly into the note.

---
## Definition

Topologically Integrated Geographic Encoding and Referencing (TIGER) is the U.S. Census Bureau's digital geographic database and product suite that encodes streets, address ranges, political and statistical boundaries, and other geographic features with topological relationships. TIGER provides the geospatial framework used by the Census Bureau for data collection, tabulation, and dissemination, and is widely used for mapping, geocoding, routing, and spatial analysis.

---
## Details

- Purpose and scope
  - Designed to provide a comprehensive, nationwide geographic base for Census operations and data dissemination.
  - Includes features such as roads, water features, railroads, legal and statistical boundaries (states, counties, census tracts, block groups, blocks), landmarks, and address ranges.
  - Supports geocoding, spatial joins to census geographies, network analyses, cartography, and base mapping.

- Topology and feature model
  - "Topologically integrated" means features are encoded with relationships (connectivity and adjacency) to support routing and spatial integrity.
  - Feature classes are identified with MAF/TIGER Feature Class Codes (MTFCC) that describe the type of geographic object (e.g., primary road, stream, etc.).

- Common layers/products
  - Roads / Edges (street segments with address ranges)
  - Faces (land polygons)
  - Water (rivers, lakes)
  - Railroads, pipelines
  - Census geographic boundaries: states, counties, tracts, block groups, blocks
  - Places, MCDs (Minor Civil Divisions), ZIP Code Tabulation Areas (ZCTAs)
  - Landmark points (e.g., airports, schools—feature coverage varies)

- Typical attributes (fields you'll often see)
  - TLID — unique identifier for a linear segment
  - MTFCC — MAF/TIGER Feature Class Code (feature type)
  - NAME / FULLNAME — street or feature name
  - LFROMADD, LTOADD, RFROMADD, RTOADD — left/right address ranges for segments
  - ZIPLEFT, ZIPRIGHT — ZIP codes for left/right side
  - GEOID — identifier for census geographies (tracts, blocks, etc.)
  - FUNCSTAT / CLASSFP — functional status/classification of some features

- Spatial reference
  - TIGER data are distributed using NAD83 geographic coordinates (unprojected, EPSG:4269). Many users reproject into a suitable projected CRS for analysis and cartography.

- Formats and delivery
  - TIGER/Line shapefiles (annual releases and vintage selections)
  - TIGERweb REST map services and APIs
  - Cartographic Boundary Files (simplified, topo-simplified boundaries for mapping)
  - Census Geocoder and address lookup services that rely on TIGER data

- Update cadence and versions
  - Annual releases of TIGER/Line files (plus interim updates at times). Major changes accompany decennial censuses and other dataset refresh cycles. Always check the vintage (year) for compatibility with census data.

---
## Use cases & workflows

- Geocoding addresses
  - Use TIGER address ranges for batch geocoding or use the Census Geocoder for higher-level matching.
  - Remember address-range geocoding interpolates locations along segments — accuracy varies by context.

- Joining Census data to boundaries
  - Use GEOID fields to join demographic tables from the American Community Survey (ACS) or Decennial Census to TIGER boundary layers (tracts, block groups, blocks).

- Mapping and routing
  - Roads/edges can be used for network analysis, but for high-precision routing consider authoritative local transportation datasets or OpenStreetMap where available.

- Cartography
  - Use Cartographic Boundary Files for simplified, clean boundary layers suitable for maps at small scales.

- Example workflow (quick)
  - Download TIGER/Line shapefile for county or state from the Census site
  - Reproject to your project CRS
  - Join demographic CSV by GEOID
  - Use L/R address fields if preparing a geocoder or for interpolated geocoding

---
## Limitations & considerations

- Not authoritative for detailed local street geometry or recent construction — local/state DOTs or municipal datasets may be more accurate.
- Address interpolation is approximate; house-level placement may be off, especially on rural roads or irregular address schemes.
- TIGER topology and attributes have improved over time — older vintages may lack features or contain different attributes.
- ZIP Code Tabulation Areas (ZCTAs) are approximations of USPS ZIP codes and should not be treated as exact postal service boundaries.

---
## Practical tips

- Always note the TIGER vintage and match to the census data year you plan to use (e.g., ACS 5-year vintage).
- Use Cartographic Boundary Files for display maps to reduce visual clutter and file size.
- For precise geocoding, compare TIGER results to local address points or use authoritative address point datasets where available.
- When doing network routing, validate connectivity and consider cleaning topology (split/mend) before running analyses.

---
## Citation / attribution

- When using TIGER data in publications or products, cite the U.S. Census Bureau TIGER/Line files and specify the vintage year and layer(s) used. Example: "TIGER/Line Shapefiles, 2024, U.S. Census Bureau."

---
## Resources

- U.S. Census Bureau — TIGER/Line Shapefiles: https://www.census.gov/geographies/mapping-files/time-series/geo/tiger-line-file.html
- TIGER Data Products Guide: https://www.census.gov/programs-surveys/geography/guidance/tiger-data-products-guide.html
- TIGERweb REST Services & Map Server (interactive APIs): https://tigerweb.geo.census.gov
- Cartographic Boundary Files: https://www.census.gov/geographies/mapping-files/time-series/geo/cartographic-boundary.html
- Overview / background (Wikipedia): https://en.wikipedia.org/wiki/Topologically_Integrated_Geographic_Encoding_and_Referencing
- Practical guide: A Complete Guide to TIGER GIS Data (GISGeography): https://gisgeography.com/tiger-gis-data-topologically-integrated-geographic-encoding-referencing/

---
## Related notes / appendix

- [[Geographic Information System (GIS)]]
- [[00-INBOX/GIS/GIS Data Sources]]
- [[US Census Bureau]]

---

If you want, I can:
- Add a short example QGIS/ArcGIS step-by-step to load and reproject a TIGER layer.
- Extract a checklist for validating TIGER road data in a local area.
Which would you prefer?
[Timestamp: 2025/12/04 18:04:52]