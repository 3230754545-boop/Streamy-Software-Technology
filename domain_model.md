# Streamy Core Domain Structural Architecture
## Foundational Object-Oriented Entity Specifications

### 1. Conceptual Domain Breakdown
This tracking document establishes the baseline static structures for the Streamy streaming platform codebase. By translating system requirements nouns straight into unified class schemas, we guarantee the underlying database and Python structures align perfectly.

### 2. Base Entity Model Class Diagram
The architectural class schema below plots our primary data properties, encapsulation metrics, and loose directional system associations:

```mermaid
title: Streamy Production Structural Domain Model
classDiagram direction TB
class Title {
<<abstract>>
+String name
+int releaseYear
+playMedia() Boolean
}
class Film {
+int lengthMinutes
}
class TVShow {
+int seasonsCount
}
class Season {
+int seasonNumber
}
class Episode {
+String episodeTitle
+int durationSeconds
}
class Review {
+int ratingStars
+String reviewText
}
class Actor {
+String fullName
}
class Genre {
+String genreName
}
Title "0..*" -- "1..*" Genre : categorized_under
TVShow "1" *-- "0..*" Season : owns
Title "1" -- "0..*" Review : receives
Season "1" *-- "1..*" Episode : contains
Title "0..*" o-- "0..*" Actor : features
Film --|> Title : extends
TVShow --|> Title : extends
