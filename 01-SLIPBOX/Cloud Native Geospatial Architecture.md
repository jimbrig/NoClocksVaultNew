---
creation_date: 2024-12-22
modification_date: 2024-12-23
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: Architectural principles for building modern cloud-native geospatial systems
tags:
  - Status/Complete
  - Type/Note
  - Topic/GIS
  - Topic/Architecture
  - Topic/Cloud
aliases:
  - Cloud Native GIS
  - Modern GIS Architecture
publish: true
---

# Cloud Native Geospatial Architecture

```table-of-contents
title: ## Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Overview

> [!SOURCE] Sources:
> Articles by Matt Forrest:
> - [The Modern Geospatial Data Stack: Trends, Tools, and What They Mean for You - Matt Forrest](https://forrest.nyc/the-modern-geospatial-data-stack-trends-tools-and-what-they-mean-for-you/)
> - [Geospatial Data Pipeline Management: Modern approaches vs traditional methods - Matt Forrest](https://forrest.nyc/geospatial-data-pipeline-management-modern-approaches-vs-traditional-methods/)
> - [Stuck in Legacy GIS? A Practical Roadmap to Modern GIS and Cloud Native Geospatial - Matt Forrest](https://forrest.nyc/stuck-in-legacy-gis-a-practical-roadmap-to-modern-gis-and-cloud-native-geospatial/)
> 
> Articles in Series by OHK Consultants: 
> - [OHK Consultants: Strategy ❘ Innovation ❘ Development — Implementing GIS Applications](https://ohkconsultants.com/home-page#/implementing-scalable-gis-applications/)
> - [OHK Consultants: Strategy ❘ Innovation ❘ Development — Geospatial Infrastructures: A Guide for the Decision Maker](https://ohkconsultants.com/home-page#/geospatial-infrastructures-guide-for-decision-maker/)
> - [OHK Consultants: Strategy ❘ Innovation ❘ Development — Case Study: GIS for Value Property and Taxes](https://ohkconsultants.com/home-page#/case-study-gis-to-value-property-and-taxes-part1/)
> - [Case Study: GIS App Workflow Best Practices ❘ OHK Consultants](https://ohkconsultants.com/case-study-gis-to-value-property-and-taxes-part2)
> 
> Cloud Native Geospatial:
> - [Cloud Native Geospatial](https://ua-datalab.github.io/cloud-native-geospatial/)
> - [Cloud-Native Geospatial Forum - CNG](https://cloudnativegeo.org/)
> - [Cloud-Optimized Geospatial Formats Guide](https://guide.cloudnativegeo.org/)
> 
> Reference Architectures:
> - [OSGS](https://kartoza.github.io/osgs/)
> 
> Standards:
> - [STAC: SpatioTemporal Asset Catalogs](https://stacspec.org/en)
> - [geoparquet.org](https://geoparquet.org/)

## Technology Stack

The modern Geospatial Cloud Native Tech Stack is composed of various services and supporting technologies.

### Geospatial Database

- [[PostgreSQL]]
- [[psql]], [[pgcli]]
- [[pgAdmin]], [[dbeaver]]
- [[04-RESOURCES/Definitions/Acronyms/Database Markup Language (DBML)|Database Markup Language (DBML)]]
- [[dbmate]]

#### Extensions

- [[PostGIS]]
- [[pgSVG]]
- [[pgSTAC]]
- [[azure_storage]]

#### Ingestion/Seeding

- [[04-RESOURCES/Definitions/Acronyms/Geospatial Data Abstraction Library (GDAL)|GDAL]]
- [[04-RESOURCES/Definitions/Acronyms/Geospatial Data Abstraction Library (GDAL)|OGR]]
- [[ogr2ogr]]
- [[shp2pgsql]]
- [[osm2pgsql]]
- [[yogrt]]
- [[Data Build Tool (dbt)]]
- [[Data Version Control (dvc)]]
- [[Data Load Tool (dlt)]]
- [[Kart]]
- [[R - targets]], [[R - geotargets]]
- [[Apache Airflow]]
- [[Luigi]]

### Exposed Services

- [[PostgREST]] and [[Data API Builder (dab)]]: generic [[REST]] and [[GraphQL]] endpoints tied to the database schemas
- [[pg_featureserv]]: Serves [[OGC API - Features]] Vector Features
- [[pg_tileserv]]: Serves [[OGC API - Maps]] [[04-RESOURCES/Definitions/Acronyms/Mapbox Vector Tile (MVT)|MVT]] Map Vector Tiles
- [[pg_eventserv]]: 
- [[FastAPI]], [[STAC-FastAPI]], [[STAC-FastAPI-pgSTAC]]
- [[TiTiler]]
- [[tipg]]

### Cloud Storage

> ![NOTE]
> Note that for this example we are assuming an [[Azure]] based system.

- [[Azure Storage]] with blob containers
- [[obstore]]:
- [[FileBrowser]]:

Azure Storage Tooling:

- [[azcli]]
- [[Azure Storage Explorer]]
- [[azcopy]]
- [[rclone]]

### Client Side Mapping

- [[Leaflet.js]]
- [[Mapbox GL/JS]]
- [[MapLibre]]
- [[MapTiler]]
- [[OpenLayers]]
- [[kepler.gl]]
- [[deck.gl]]

### Additional Tooling

- [[OpenAPI]]
- [[SwaggerUI]]
- [[DuckDB]]
- [[Arrow]] and [[GeoArrow]]
- [[Parquet]] and [[GeoParquet]]
- [[MBTiles]]
- [[Protobuf]]
- [[GeoServer]]
- [[GeoStyler]]
- [[GeoJSON]]
- [[TopoJSON]]
- [[Docker]]
- [[Docker Compose]]
- [[Taskfile]], [[Justfile]], [[GNU Make]]
- [[DAG]]
- [[QGIS]], [[QGIS Server]]
- [[04-RESOURCES/Definitions/Acronyms/Hexagonal Hierarchical Spatial Index (H3)|H3]]
- [[pygeoapi]]

## Constructing the Workflow

### Design Metadata & Schema Structure

This phase includes designing the initial [[Conceptual Data Model]] and database schemas of the core GeoDatabase while also establishing standards for metadata.

Core Tasks:

- **Define Data Structure**: Define the structure of the core database schemas. Determine the tables, fields/attributes, data types, relationships, constraints, indexes, views, etc.
- **Establish Metadata Standards**: Decide on metadata standards to leverage. Metadata should include information about when and how the data was collected, what geospatial coverage/extent/area it covers, and any restrictions on its use.
- **Create Metadata Templates**: Establish templates for standardized metadata for consistency
- **Document Data Collection Procedures**: Document the data ingestion and collection workflows.
- **Implement Data Quality Controls**: Establish procedures for checking data quality.

Standards at play:

- [[ISO 19107 - Geographic Information - Spatial Schema]]
- [[ISO 19115 - Geographic Information - Metadata]]
- [[ISO 19110 - Geographic Information - Methodology]]
- [[ISO 19157 - Geographic information - Data Quality]]
- [[ISO 19138 - Geographic Information - Data Quality Measures]]

#### Database Schema Design

Abiding by [[ISO 19107 - Geographic Information - Spatial Schema]], the initial step is to define the structure of the central database. In order to accomplish this, one must fully understand the nature of the existing data and data being integrated with or ingested into the system, which can be achieved through techniques such as [[Schematic Mapping]], [[Domain Driven Design]] Techniques, [[Event Storming]], and general relational database design principles such as [[Dimensional Modeling]] ([[Kimbel]], [[Inmon]], [[Star Schema]], etc.), 

Database schema design is aided with tooling such as:

- [[04-RESOURCES/Definitions/Acronyms/Database Markup Language (DBML)|Database Markup Language]]
- Migrations via [[dbmate]]

#### Metadata Standards

Leveraging [[ISO 19115 - Geographic Information - Metadata]], decide on the metadata standards to use. These standards will guide the formatting and classification of the geospatial data being used.

Metadata templates, i.e. [[ISO 19110 - Geographic Information - Methodology]] for Feature Cataloging, and creating metadata templates that adhere to the selected standards. 

Developing a conceptual schema for digital information dashboards.

Metadata standards and tooling leveraged could include:

- [[ISO 19115]]
- [[STAC]]
- [[OpenAPI]] Specifications
- [[JSON Schema]]
- [[Apache Superset]]

### Data Collection and Digitization

This step focuses on the collection of spatial and non-spatial data from various source systems and providers.

The accuracy and comprehensiveness of data collection efforts are essential for accurate property assessment and tax calculations. 

Highlight the need for thorough planning and testing within the workflow to address challenges that may arise when integrating different open-source software components.

1. **Identify Data Sources:** Identify the sources from which you will collect data. This can include local government databases, open-source data platforms, public records, surveys, or field data collection.
2. **Collect Spatial Data:** Collect the necessary spatial data for property assessment. This may involve acquiring parcel boundaries, future development plans, satellite images, topographic data, land use data, road networks, environmental data, and other relevant spatial information.
3. **Collect Non-Spatial Data:** Collect the non-spatial data pertinent to property assessment. This can include information such as structural characteristics of properties, rental history, ownership details, sale history, tax records, local market data, zoning regulations, environmental efficiency ratings, disaster history, crime statistics, liens and judgments, and other relevant data. This is a foundational step. If you have physical paper records, you must manually input this data or use scanning and Optical Character Recognition (OCR) technology to digitize the records. Check the digitized data for any errors or discrepancies. Data in Excel or other digital formats can be compiled for easier processing in the next steps. For OCR, you can use tools like Adobe Acrobat or Tesseract. You can use Excel or a similar spreadsheet tool to organize digital data. Tools like spreadsheets or databases (e.g., Microsoft Excel or PostgreSQL) can also be used for managing and cleaning non-spatial data.
4. **Data Cleaning and Validation:** Conduct data cleaning and validation procedures after collecting data. Remove duplicate entries, correct errors, and fill in missing values. Validate the accuracy and integrity of the data by cross-referencing different data sources and conducting quality control checks.

- **_Do:_** Ensure data accuracy and completeness through thorough data collection efforts. Validate the collected data against reliable sources and employ quality control measures. Don't: Overlook the importance of data cleaning and validation. Inaccurate or incomplete data can lead to erroneous assessments and calculations.
    
- **_Don't:_** Rely solely on a single data source. Cross-reference and validate data from multiple sources to ensure accuracy and completeness. Using diverse and reliable data sources enhances the reliability of your property assessments and tax calculations.
    
    **_Output:_** A comprehensive collection of spatial and non-spatial data relevant to property assessment and tax calculations. The collected data will serve as the basis for subsequent analysis and processing steps in the GIS application.

## The Insight

Traditional GIS architectures rely on monolithic servers ([[ArcGIS]] Server, [[GeoServer]]) that couple data, processing, and serving. Modern cloud-native geospatial systems invert this - they separate concerns and leverage cloud primitives for scalability, cost efficiency, and flexibility.

## Key Architectural Principles

### Metadata-Driven Design

A centralized, semantic metadata repository guides all data operations. Rather than hardcoding data paths and schemas, the system queries metadata to discover:
- Where data lives (S3, PostGIS, APIs)
- How to access it (credentials, protocols)
- What transformations are needed
- How fresh it needs to be

This enables dynamic data discovery and self-documenting pipelines.

### Service-Oriented Abstraction

Pluggable connectors abstract the diversity of geospatial data sources:
- [[OGC API - Features]] endpoints
- [[PostGIS]] databases
- Cloud object storage ([[Cloud Optimized GeoTIFF (COG)]], [[GeoParquet]])
- Proprietary APIs (ArcGIS REST, vendor services)

The abstraction layer presents a unified interface regardless of source.

### Federated Query Engine

Instead of ETL-ing everything into one database, a federated query engine:
- Pushes predicates to sources (query where data lives)
- Optimizes cross-source joins
- Caches intelligently
- Returns unified results

Tools like [[DuckDB]] with spatial extensions enable this pattern.

### Schema Harmonization

Different sources use different schemas (RESO, OGC, custom). A harmonization layer:
- Maps source schemas to canonical internal schemas
- Handles type coercion and coordinate transformations
- Maintains provenance for traceability

### Knowledge Graph Backbone

A semantic ontology enables:
- Disambiguation (which "parcel" do you mean?)
- Cross-source discovery (find all data about this location)
- Reasoning (infer relationships not explicitly stored)

### Data Mesh Governance

Rather than centralized data ownership:
- Domain teams own their geospatial data products
- Central platform provides standards and contracts
- Self-serve infrastructure enables autonomy
- Federated governance ensures interoperability

## Practical Applications

These principles inform how to structure modern geospatial systems:
- Data connectors (abstraction layer)
- Metadata catalogs (metadata-driven design)
- Query optimization (federated engine patterns)
- Schema design (harmonization to standards like RESO)

## See Also

- [[Guide - Geospatial File Format Selection]]
- [[List - Spatial Databases]]
- [[MOC - GIS]]

## Backlinks

```dataview
LIST FROM [[Cloud Native Geospatial Architecture]] 
WHERE file.name != this.file.name
```



