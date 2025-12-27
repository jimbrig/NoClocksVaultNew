---
creation_date: 2024-12-23
modification_date: 2024-12-23
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: WebGL-powered framework for large-scale data visualization
tags:
  - Status/Complete
  - Type/Definition
  - Topic/GIS
  - Topic/JavaScript
  - Topic/Visualization
aliases:
  - deck.gl
  - deckgl
publish: true
---

# deck.gl
## Overview

**deck.gl** is a WebGL-powered framework for visual exploratory data analysis of large datasets. Developed by Uber's visualization team, it provides a layered approach to rendering millions of data points with high performance, commonly used for geospatial visualization.

## Key Features

| Feature | Description |
|---------|-------------|
| **GPU Accelerated** | WebGL2 rendering for millions of points |
| **Layer System** | Composable visualization layers |
| **Interactivity** | Picking, tooltips, brushing |
| **Basemap Integration** | Works with MapLibre, Mapbox, Google Maps |
| **React Support** | First-class React bindings |
| **Python Bindings** | pydeck for Jupyter notebooks |

## Core Layers

| Layer | Description |
|-------|-------------|
| `ScatterplotLayer` | Points with size/color encoding |
| `GeoJsonLayer` | Render GeoJSON features |
| `PolygonLayer` | Filled polygons |
| `PathLayer` | Lines and routes |
| `IconLayer` | Custom icons/markers |
| `ArcLayer` | Origin-destination arcs |
| `HexagonLayer` | Hexagonal binning |
| `HeatmapLayer` | Density heatmaps |
| `TripsLayer` | Animated paths |
| `Tile3DLayer` | 3D Tiles/I3S rendering |

## Basic Usage

### Standalone

```javascript
import { Deck } from '@deck.gl/core';
import { GeoJsonLayer } from '@deck.gl/layers';

const deck = new Deck({
  initialViewState: {
    longitude: -122.4,
    latitude: 37.8,
    zoom: 11
  },
  controller: true,
  layers: [
    new GeoJsonLayer({
      id: 'parcels',
      data: 'https://example.com/parcels.geojson',
      filled: true,
      getFillColor: [255, 140, 0, 180],
      getLineColor: [0, 0, 0],
      lineWidthMinPixels: 1
    })
  ]
});
```

### With MapLibre

```javascript
import { Map } from 'maplibre-gl';
import { MapboxOverlay } from '@deck.gl/mapbox';
import { ScatterplotLayer } from '@deck.gl/layers';

const map = new Map({
  container: 'map',
  style: 'https://demotiles.maplibre.org/style.json',
  center: [-122.4, 37.8],
  zoom: 11
});

const overlay = new MapboxOverlay({
  layers: [
    new ScatterplotLayer({
      id: 'points',
      data: points,
      getPosition: d => d.coordinates,
      getRadius: 100,
      getFillColor: [255, 0, 0]
    })
  ]
});

map.addControl(overlay);
```

### React

```jsx
import { DeckGL } from '@deck.gl/react';
import { GeoJsonLayer } from '@deck.gl/layers';
import Map from 'react-map-gl/maplibre';

function App() {
  const layers = [
    new GeoJsonLayer({
      id: 'parcels',
      data: parcelsData,
      filled: true,
      getFillColor: [255, 140, 0]
    })
  ];

  return (
    <DeckGL
      initialViewState={{ longitude: -122.4, latitude: 37.8, zoom: 11 }}
      controller={true}
      layers={layers}
    >
      <Map mapStyle="https://demotiles.maplibre.org/style.json" />
    </DeckGL>
  );
}
```

## Python (pydeck)

```python
import pydeck as pdk

layer = pdk.Layer(
    'ScatterplotLayer',
    data=df,
    get_position='[longitude, latitude]',
    get_radius=100,
    get_fill_color='[255, 0, 0]'
)

view = pdk.ViewState(latitude=37.8, longitude=-122.4, zoom=11)
deck = pdk.Deck(layers=[layer], initial_view_state=view)
deck.to_html('map.html')
```

## R Integration

```r
# using mapdeck package
library(mapdeck)

mapdeck(style = mapdeck_style("dark")) |>
  add_scatterplot(
    data = points,
    lon = "longitude",
    lat = "latitude",
    radius = 100,
    fill_colour = "#FF0000"
  )
```

## Related Tools

| Tool | Description |
|------|-------------|
| [kepler.gl](kepler.gl.md) | No-code deck.gl-based exploration |
| [MapLibre](MapLibre.md) | Basemap for deck.gl overlays |
| pydeck | Python bindings for Jupyter |
| mapdeck | R bindings for deck.gl |

---

## Appendix

*Created: 2024-12-23 | Modified: 2024-12-23*

### See Also

- [MOC - GIS](MOC - GIS.md)
- [List - GIS Web Mapping Libraries](List - GIS Web Mapping Libraries.md)
- [MapLibre](MapLibre.md)
- [kepler.gl](kepler.gl.md)

### Backlinks
<!-- dynamic content -->
---

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024

