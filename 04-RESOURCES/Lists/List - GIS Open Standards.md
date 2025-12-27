---
creation_date: 2025-12-23
modification_date: 2025-12-23
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description:
tags:
  - Status/Ongoing
  - Type/List
  - Topic/GIS
aliases:
  - GIS Open Standards
publish: true
---

# List - GIS Open Standards
## Overview

Curated collection of tools and resources for **GIS Open Standards**.

GIS standards are recommended practices to facilitate developing, sharing, and using GIS data, GIS software, and GIS services.  When you look for GIS standards, you actually mean geospatial standards, where GIS is a part of. Geospatial standards concern the use of any geographic information.

Normally any standard is a technical document intended for use as a rule, guideline or definition for common and repeated use. They might include requirements and recommendations for products, systems, processes or services. They possibly describe measurements, test methods or establish common terminologies. A GIS standard is a technical document designed to use for operating with geospatial data.

## Data Format Standards 

GIS software and GIS services should have the ability to read and write various established data formats. GIS applications should use data format standards to store geospatial data in a common format. You should be able to transfer data from system to system via extract. You may need to transform and load tools for data validation, migration and distribution.

- [Keyhole Markup Language (KML)](Keyhole Markup Language (KML).md)
- [GeoPackage (GPKG)](GeoPackage (GPKG).md)
- 
- [Aeronautical Information Exchange Model (AIXM)](Aeronautical Information Exchange Model (AIXM).md)
- [Electronic Nautical Charts (IHO S-57/ENC)](Electronic Nautical Charts (IHO S-57/ENC).md)
- 

## Metadata Standards

Metadata are data that provides information about other data. Metadata offer a simple way to understand geospatial data. Metadata standards give a structure for creating and organizing metadata such as consistent terminology for catalogs and global search.

Common geographic metadata standards are:

- **ISO 19115:** It is a metadata standard whitch defines how to describe geographical information and associated services, including contents, spatial-temporal purchases, data quality, access and rights to use. It is preserved by the ISO/TC 211 committee.
- **CSDGM** (Content Standard for Digital Geospatial Metadata) defined by the Federal Geographic Data Committee (FGDC). It is a widely-used, but no longer current standard specifying the information content for a set of digital geospatial data. In September 2010 the FGDC endorsed ISO 19115 and began to confirm federal agencies to transition to ISO metadata.

## GIS Service Standards

Standards for GIS services are used to transfer (spatial) data smoothly via the web or provide remote access to (spatial) data stored on a web server. They enable users to interact with data, generally through simple web clients, on a live and real-time basis. This contains viewing maps, accessing and querying data, running analyses, and downloading (spatial) data.

## OGC Standards

### OGC APIs

Standards the build upon the legacy [OGC Web Service Standards](List - OGC Web Service Standards.md) but define resource-centric [APIs](Application Programming Interface (API).md) that take advantage of modern web development practices.

- [GeoAPI Implementation Specification](https://www.ogc.org/standards/geoapi/)
- [OGC API – Common](https://www.ogc.org/standards/ogcapi-common/)
- [OGC API – Environmental Data Retrieval](https://www.ogc.org/standards/ogcapi-edr/)
- [OGC API – Features](https://www.ogc.org/standards/ogcapi-features/)
- [OGC API – Maps](https://www.ogc.org/standards/ogcapi-maps/)
- [OGC API – Moving Features](https://www.ogc.org/standards/ogc-api-moving-features/)
- [OGC API – Processes](https://www.ogc.org/standards/ogcapi-processes/)
- [OGC API – Records](https://www.ogc.org/standards/ogcapi-records/)
- [OGC API – Tiles](https://www.ogc.org/standards/ogcapi-tiles/)
- [OGC SensorThings API](https://www.ogc.org/standards/sensorthings/)
- [OGC API – Connected Systems](https://www.ogc.org/standards/ogc-api-connected-systems/)
- [OGC API – Discrete Global Grid Systems](https://www.ogc.org/standards/dggs/)

### Services

Standards that implement [XML](Extensible Markup Language (XML).md) Remote Procedure Calls using the [Hyper Text Transfer Protocol (HTTP)](Hyper Text Transfer Protocol (HTTP).md).

- [3D Portrayal Service](https://www.ogc.org/standards/3dp/)
- [Coordinate Transformation Service](https://www.ogc.org/standards/ct/)
- [Location Service (OpenLS)](https://www.ogc.org/standards/ols/)
- [Table Joining Service](https://www.ogc.org/standards/tjs/)
- [Web Coverage Processing Service (WCPS)](https://www.ogc.org/standards/wcps/)
- [Web Coverage Service](https://www.ogc.org/standards/wcs/)
- [Web Feature Service](https://www.ogc.org/standards/wfs/)
- [Web Map Context](https://www.ogc.org/standards/wmc/)
- [Web Map Service](https://www.ogc.org/standards/wms/)
- [Web Map Tile Service](https://www.ogc.org/standards/wmts/)
- [Web Processing Service](https://www.ogc.org/standards/wps/)
- [Web Service Common](https://www.ogc.org/standards/common/)
- [Web Services Security](https://www.ogc.org/standards/security/)
- [Discrete Global Grid Systems](https://www.ogc.org/standards/dggs/)

### Data Models and Encodings - General

Standards that provide general rules to organize geospatial information, typically sent by a service provider or produced by an application.

- [3D Tiles](https://www.ogc.org/standards/3dtiles/)
- [Common Query Language (CQL2)](https://www.ogc.org/standards/cql2/)
- [CoverageJSON](https://www.ogc.org/standards/coveragejson/)
- [EO Dataset Metadata GeoJSON(-LD)](https://www.ogc.org/standards/eo-geojson/)
- [Filter Encoding](https://www.ogc.org/standards/filter/)
- [Geodetic data Grid eXchange Format (GGXF)](https://www.ogc.org/standards/ggfx/)
- [Geography Markup Language (GML)](https://www.ogc.org/standards/gml/)
- [GeoPose](https://www.ogc.org/standards/geopose/)
- [Geospatial User Feedback (GUF)](https://www.ogc.org/standards/guf/)
- [GeoXACML](https://www.ogc.org/standards/geoxacml/)
- [GML in JPEG 2000 for Geographic Imagery](https://www.ogc.org/standards/gmljp2/)
- [Indexed 3D Scene Layers (I3S)](https://www.ogc.org/standards/i3s/)
- [KML](https://www.ogc.org/standards/kml/)
- [Observations, Measurements, and Samples](https://www.ogc.org/standards/om/)
- [OGC Cloud Optimized GeoTIFF](https://www.ogc.org/standards/ogc-cloud-optimized-geotiff/)
- [OGC GeoTIFF](https://www.ogc.org/standards/geotiff/)
- [OGC Moving Features](https://www.ogc.org/standards/movingfeatures/)
- [OGC Open Modelling Interface (OpenMI)](https://www.ogc.org/standards/openmi/)
- [OGC Two Dimensional Tile Matrix Set](https://www.ogc.org/standards/tms/)
- [Open GeoSMS – Core](https://www.ogc.org/standards/opengeosms/)
- [Simple Feature Access – Part 1: Common Architecture](https://www.ogc.org/standards/sfa/)
- [Simple Feature Access – Part 2: SQL Option](https://www.ogc.org/standards/sfs/)
- [Simple Features for CORBA](https://www.ogc.org/standards/sfc/)
- [Simple Features for OLE/COM](https://www.ogc.org/standards/sfo/)
- [Styled Layer Descriptor](https://www.ogc.org/standards/sld/)
- [Symbology Conceptual Core Model](https://www.ogc.org/standards/symbology-conceptual-core-model/)
- [Symbology Encoding](https://www.ogc.org/standards/se/)
- [Time Ontology in OWL](https://www.ogc.org/standards/time-ontology-in-owl/)
- [Training Data Markup Language for Artificial Intelligence](https://www.ogc.org/standards/trainingdml-ai/)
- [Well-known text representation of coordinate reference systems](https://www.ogc.org/standards/wkt-crs/)

### Data Models and Encodings — Domain Specific

Standards that provide domain specific rules to organize geospatial information.

- [CityGML](https://www.ogc.org/standards/citygml/)
- [CityJSON](https://www.ogc.org/standards/cityjson/)
- [Indoor Mapping Data Format (IMDF)](https://www.ogc.org/standards/indoor-mapping-data-format/)
- [LAS Specification](https://www.ogc.org/standards/las/)
- [MUDDI](https://www.ogc.org/standards/muddi/)
- [OGC Augmented Reality Markup Language 2.0 (ARML 2.0)](https://www.ogc.org/standards/arml/)
- [OGC Geoscience Markup Language (GeoSciML)](https://www.ogc.org/standards/geosciml/)
- [OGC IndoorGML](https://www.ogc.org/standards/indoorgml/)
- [OGC LandInfra / InfraGML](https://www.ogc.org/standards/infragml/)
- [OGC WaterML](https://www.ogc.org/standards/waterml/)
- [OGC WaterML 2: Part 4 – GroundWaterML 2 (GWML2)](https://www.ogc.org/standards/gwml2/)
- [PipelineML Conceptual and Encoding Model](https://www.ogc.org/standards/pipelineml/)
- [Points of Interest (POI)](https://www.ogc.org/standards/points-of-interest-poi/)
- [TimeseriesML (TSML)](https://www.ogc.org/standards/tsml/)
- [OpenFlight Scene](https://www.ogc.org/standards/openflight-scene/)

### Publish-Subscribe, Syndication & Context

Standards for subscription management and other syndication purposes.

- [GeoRSS](https://www.ogc.org/standards/georss/)
- [OGC API – EDR – Part 2: Publish-Subscribe Workflow](https://www.ogc.org/standards/sensor-things-api-extension-2/)
- [OGC Web Services Context Document (OWS Context)](https://www.ogc.org/standards/owc/)
- [Publish/Subscribe](https://www.ogc.org/standards/pubsub/)

### Sensors

Standards to accessing sensors that are connected to the Web or the Internet of Things (IoT).

- [OGC PUCK Protocol](https://www.ogc.org/standards/puck/)
- [OGC SensorThings API](https://www.ogc.org/standards/sensorthings/)
- [Semantic Sensor Network Ontology](https://www.ogc.org/standards/semantic-sensor-network-ontology/)
- [Sensor Model Language (SensorML)](https://www.ogc.org/standards/sensorml/)
- [Sensor Observation Service](https://www.ogc.org/standards/sos/)
- [Sensor Planning Service (SPS)](https://www.ogc.org/standards/sps/)
- [STAplus: Sensor Things API Extension](https://www.ogc.org/standards/sensor-things-api-extension/)
- [SWE Common Data Model Encoding](https://www.ogc.org/standards/swecommon/)
- [SWE Service Model Implementation](https://www.ogc.org/standards/swes/)

### Discovery

Standards for searching and finding geospatial resources.

- [Catalogue Service](https://www.ogc.org/standards/cat/)
- [Catalogue Services Standard 2.0 Extension Package for ebRIM Application Profile: Earth Observation Products](https://www.ogc.org/standards/cat2eoext4ebrim/)
- [GeoSPARQL – A Geographic Query Language for RDF Data](https://www.ogc.org/standards/geosparql/)
- [OpenSearch](https://www.ogc.org/standards/opensearch/)
- [Ordering Services Framework for Earth Observation Products](https://www.ogc.org/standards/oseo/)
- [SpatioTemporal Asset Catalog (STAC)](https://www.ogc.org/standards/stac/)

### Containers

Standards that specify rules for storing and retrieving geospatial information efficiently.

- [CDB](https://www.ogc.org/standards/cdb/)
- [GeoPackage](https://www.ogc.org/standards/geopackage/)
- [OGC Hierarchical Data Format Version 5 (HDF5®)](https://www.ogc.org/standards/hdf5/)
- [OGC network Common Data Form (netCDF) standards suite](https://www.ogc.org/standards/netcdf/)
- [Zarr Storage Specification](https://www.ogc.org/standards/zarr-storage-specification/)

### Abstract Specification

A reference model used in the development of OGC Standards.

- [Abstract Specification](https://www.ogc.org/standards/abstract-specification/)

## International Standards Organization (ISO) Standards

- [ISO - Standards](https://www.iso.org/standards.html)

ISO geospatial metadata standards have been developed as a suite of standards. The base Fundamental standard (ISO 19115-1) is the core of the suite. Fundamentals includes information common to most geospatial data resource types.

 Additional standards have been developed to:

1. _**extend**_ the Fundamental standard by adding content that must be used **in conjunction with** the Fundamental standard
2. document _**related**_ information that can be stand alone or **associated with** a Fundamental metadata record
3. _**encode**_ and validate a standardize XML metadata record

The suite approach enables metadata creators to select and apply only those standards relevant to their organization and data types. The suite also enables the one time documentation of information, e.g. Data Acquisition and Processing, Feature Catalogs, Data Quality Methods and Measures, etc., that may be applied to multiple geospatial resources and their associated metadata records.

### Content (UML) and Encoding (XSD) Standards

ISO standards generally reference both a content standard and an XML encoding standard. Content standards use UML conceptual diagrams to illustrate the relations among metadata elements and a data dictionary to define the element conditionality, data type, and domains. Encoding standards specify the XML format and rules used to create and validate the output metadata records. The table below provides detailed information about the ISO geospatial standards publications and associations between content and encoding standards.

**Note**: ISO is currently shifting practices to develop encoding standards, when feasible, as an ‘Annex’ of the associated content standard.

### Standards Publications & Details

**Content and Description Standards (UML)**

| Name | Code | Year | Notes |
| ---- | ---- | ---  | ---         |
|Geographic Information – Metadata|19115|2003|- Replaced by 19115-1<br>- XML encoding specified by 19139|
|Geographic Information – Metadata – Part 1: Fundamentals|19115-1|2015|- Replaces 19115<br>- XML encoding specified by 19115-3 (in work)|
|Geographic Information – Metadata – Extensions for Imagery and Gridded Data|19115-2|2009|- XML encoding specified by 19139-2<br>- Revision, ISO 19115-2 REV, in work (~11/2017)<br>    - proposed rename to Extensions for Acquisition and Processing|
|Geographic Information – Methodology for Feature Cataloging|19110/Amd.1|2011|- XML encoding included as Annex E<br>- Revision in work (~9/2016)|
|Geographic Information – Services|ISO 19119|2016|- Metadata model included in19115-1<br>- Encoding specified by OpenGIS® Catalogue Services Specification 2.0.2 - ISO Metadata Application Profile|
|Geographic Information – Data Quality|19157|2013|- Replaces ISO 19113, 19114, and 19138<br>- XML encoding specified by ISO 19157-2 (in work)|
|Geographic Information – Spatial Referencing By Coordinates|ISO 19111|2007|- XML encoding specified by ISO 19136|

**XML Metadata Record Implementation Schema Standards (XSD)**

| Name | Code | Year | Notes |
| ---- | ---- | ---  | ---         |
|Geographic information -- Metadata -- XML schema implementation|19139|2007|- XML record format and validation specification for 19115|
|Geographic information -- Metadata -- Part 3: XML schema implementation of metadata fundamentals|19115-3|in work  <br>(~2016)|- XML record format and validation specification for 19115-1 Fundamentals|
|Geographic information — Metadata — XML schema implementation — Part 2: Extensions for imagery and gridded data|19139-2|2012|- XML record format and validation specification for 19115-2 Extensions for Imagery and Gridded Data|
|Geographic information — Geography Markup Language (GML)|19136|2007|- XML record format and validation and validation (XSD) specification for 19111 Spatial Referencing By Coordinates|
|Geographic information -- Data quality -- Part 2: XML Schema Implementation|19157-2|in work  <br>(~5/2016)|- Record format and validation and validation (XSD) specified by ISO 19157-2 (pending)|
|OpenGIS® Catalogue Services Specification 2.0.2 - ISO Metadata Application Profile|OGC 07-045|2007|- XML record format and validation and validation (XSD) specification for 19119 Services<br>- To be replaced by 19115-3 (in work)|

## Mapbox

- [Vector Tiles Standards | Tilesets | Mapbox Docs | Mapbox](https://docs.mapbox.com/data/tilesets/guides/vector-tiles-standards/)
- [mapbox/vector-tile-spec: Mapbox Vector Tile specification](https://github.com/mapbox/vector-tile-spec)

- [Mapbox Style Spec | Mapbox Docs | Mapbox](https://docs.mapbox.com/style-spec/guides/)
- [Spec Reference | Mapbox Style Spec | Mapbox Docs | Mapbox](https://docs.mapbox.com/style-spec/reference/)

## Spatial Temporal Asset Catalogs

- [STAC: SpatioTemporal Asset Catalogs](https://stacspec.org/en)

## User Interface

- [Map UI Patterns](https://www.mapuipatterns.com/)

## OSGeo

- [OSGeo - OSGeo](https://www.osgeo.org/)

---

## Appendix

*Created: 2025-12-23 | Modified: 2025-12-23*

### See Also

- [MOC - GIS](MOC - GIS.md)
- [List - GIS Standards Organizations](List - GIS Standards Organizations.md)
- [List - OGC Web Service Standards](List - OGC Web Service Standards.md)
- [Guide - Geospatial File Format Selection](Guide - Geospatial File Format Selection.md)

### Backlinks
<!-- dynamic content -->
---

(c) [No Clocks, LLC](https://github.com/noclocks) | 2025
