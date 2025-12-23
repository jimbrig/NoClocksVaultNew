---
creation_date: 2024-12-23
modification_date: 2024-12-23
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: Open-source library for publishing vector tile maps on web and mobile
tags:
  - Status/Complete
  - Type/Definition
  - Topic/GIS
  - Topic/JavaScript
aliases:
  - MapLibre
  - MapLibre GL JS
  - MapLibre GL
publish: true
---

# MapLibre

```table-of-contents
title: Contents
style: nestedList
minLevel: 2
maxLevel: 4
includeLinks: true
```

## Overview

**MapLibre GL JS** is an open-source TypeScript library for publishing interactive, customizable vector tile maps on the web. It is a community-maintained fork of Mapbox GL JS v1.13, created after Mapbox changed its license. MapLibre provides WebGL-powered rendering for smooth, responsive maps.

## Key Features

| Feature | Description |
|---------|-------------|
| **WebGL Rendering** | Hardware-accelerated, smooth 60fps |
| **Vector Tiles** | Style data on the client |
| **3D Terrain** | Terrain and sky rendering |
| **Custom Styles** | Full control over map appearance |
| **Open Source** | BSD-3-Clause license |
| **Cross-platform** | Web, iOS, Android, Qt, Flutter |

## Ecosystem

| Component | Description | Links |
|-----------|-------------|-------|
| MapLibre GL JS | Web mapping library | [Docs](https://maplibre.org/maplibre-gl-js/docs/) |
| MapLibre Native | iOS/Android SDK | [GitHub](https://github.com/maplibre/maplibre-native) |
| MapLibre Style Spec | Style specification | [Spec](https://maplibre.org/maplibre-style-spec/) |
| Martin | Vector tile server | [GitHub](https://github.com/maplibre/martin) |

## Basic Usage

### HTML Setup

```html
<!DOCTYPE html>
<html>
<head>
  <link href="https://unpkg.com/maplibre-gl/dist/maplibre-gl.css" rel="stylesheet" />
  <script src="https://unpkg.com/maplibre-gl/dist/maplibre-gl.js"></script>
</head>
<body>
  <div id="map" style="width: 100%; height: 400px;"></div>
  <script>
    const map = new maplibregl.Map({
      container: 'map',
      style: 'https://demotiles.maplibre.org/style.json',
      center: [-122.4, 37.8],
      zoom: 9
    });
  </script>
</body>
</html>
```

### React Integration

```jsx
import Map from 'react-map-gl/maplibre';
import 'maplibre-gl/dist/maplibre-gl.css';

function App() {
  return (
    <Map
      initialViewState={{
        longitude: -122.4,
        latitude: 37.8,
        zoom: 9
      }}
      style={{ width: '100%', height: 400 }}
      mapStyle="https://demotiles.maplibre.org/style.json"
    />
  );
}
```

## Style Specification

MapLibre uses a JSON style specification compatible with Mapbox:

```json
{
  "version": 8,
  "name": "My Style",
  "sources": {
    "osm": {
      "type": "vector",
      "url": "https://tiles.example.com/data.json"
    }
  },
  "layers": [
    {
      "id": "water",
      "type": "fill",
      "source": "osm",
      "source-layer": "water",
      "paint": {
        "fill-color": "#0077be"
      }
    }
  ]
}
```

## Free Tile Providers

| Provider | Description | Links |
|----------|-------------|-------|
| MapTiler | Free tier available | [Website](https://maptiler.com) |
| Stadia Maps | Free tier with attribution | [Website](https://stadiamaps.com) |
| Protomaps | PMTiles hosting | [Website](https://protomaps.com) |
| OpenFreeMap | Free OSM tiles | [Website](https://openfreemap.org) |

## Comparison with Alternatives

| Library | Rendering | License | Vector Tiles | Best For |
|---------|-----------|---------|--------------|----------|
| MapLibre GL | WebGL | BSD-3 | Yes | Modern vector maps |
| [[Leaflet.js]] | DOM/Canvas | BSD-2 | Via plugins | Simple maps |
| [[OpenLayers]] | Canvas/WebGL | BSD-2 | Yes | Complex GIS |
| Mapbox GL | WebGL | Proprietary | Yes | Premium features |

---

## Appendix

*Created: 2024-12-23 | Modified: 2024-12-23*

### See Also

- [[MOC - GIS]]
- [[List - GIS Web Mapping Libraries]]
- [[Mapbox Vector Tile (MVT)]]
- [[PMTiles]]

### Backlinks

```dataview
LIST FROM [[MapLibre]] AND -"CHANGELOG" AND -"04-RESOURCES/Definitions/Dictionary/MapLibre"
```

---

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024

