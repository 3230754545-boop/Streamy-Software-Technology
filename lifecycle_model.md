
<!-- Lab11 Media Lifecycle State Diagram -->
# Streamy Media Title Lifecycle Model
## State Diagram for Media Object Lifecycle
```mermaid
stateDiagram-v2
    [*] --> Draft
    Draft --> ReviewPending
    ReviewPending --> Approved
    ReviewPending --> Rejected
    Rejected --> Draft
    Approved --> Published
    Published --> Archived
    Archived --> [*]
