
```mermaid
flowchart LR
  %% AWS Services
  AWS[("AWS Bulk Pricing API")] -->|"Weekly Data Pull"| DataTrans
  
  %% Data Transformation
  subgraph DataTrans["Data Processing"]
    direction TB
    ETL["ETL Process"] -->|"Extract & Transform"| Model["Semantic Model"]
    Model -->|"Calculate"| ThreeYearValue["3-Year Value KPI"]
  end
  
  %% Microsoft Services
  DataTrans -->|"Populate"| PowerBI[("Power BI")]
  
  %% User Access Methods
  PowerBI -->|"Direct Query"| Excel["Excel"]
  PowerBI -->|"Visual Interface"| Dashboard["Interactive Dashboard"]
  PowerBI -->|"Scheduled Updates"| PowerAutomate["Power Automate"]
  
  %% Consumer Tools
  subgraph Consumption["Consumption Models"]
    direction TB
    Excel
    Dashboard
    PowerAutomate -->|"Trigger"| DesignTools["Schedule"]
  end
  
  %% Visual Styling
  classDef aws fill:#FF9900,stroke:#232F3E,color:#232F3E
  classDef microsoft fill:#00A4EF,stroke:#0078D4,color:#ffffff
  classDef process fill:#E8E8E8,stroke:#666666,color:#333333
  classDef consumer fill:#E1EFFF,stroke:#0078D4,color:#333333
  
  class AWS aws
  class PowerBI,Excel,PowerAutomate,Dashboard microsoft
  class DataTrans,ETL,Model,ThreeYearValue process
  class Consumption,DesignTools consumer


  
  class DashboardDetails,BoxWhisker,BarChart,TableView consumer

```
