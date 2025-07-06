---

layout: post
title: The AI-Ready Toolchain

---

Knowledge workers are generally used to authoring in two types of tools:
- **Domain-specific tools**.  These are open source or commercial that users perform their core work in.  They are typically specific to an envrionment.  For example, an animator might use Modo professionally, but prefer to use Blender for personal projects.  
- **Domain-adjacent tools**.  These are general purpose tools for knowledge workers.  Users from many different professional backgrounds are used to using applications like Google Docs or Confluence for text authoring, Excel for data analysis, or Visio for diagramming.  These differ from domain-specific tools in that the user has great flexibility in which tools they use.  

In this post, I'll explore how this latter class of domain-adjacent toolset as a product manager has evolved and simplified, improving my fluency across the tools that I use, and making it more adaptable to generative AI workflows.

As a technical product manager, my output is highly variable, including:

```mermaid
graph TB
    
    %% Tool Groups and Tools with Icons
    subgraph Author["✍️ Authoring"]
        subgraph Graphical["📐 Graphical"]
            VS["🔗 Visio"]
            DR["✏️ Draw.io"]
        end
        subgraph LR Text["📝 Text"]
            WD["📄 Word"]
            ON["📓 OneNote"]
            VC["💻 VS Code"]
        end
    end
    
    subgraph Analysis["📊 Analysis"]
        EX["📈 Excel"]
        PQ["🔄 Power Query"]
        PB["📊 Power BI"]
    end
    
    subgraph Collaboration["🤝 Collaboration"]
        PP["🎯 PowerPoint"]
        CF["🌐 Confluence"]
        JA["🎫 Jira"]
        MO["🎨 Miro"]
    end

    %% Styling
    classDef toolBox fill:transparent,stroke:none,color:#212529,width:,height:30px,text-anchor:middle,dominant-baseline:middle
    classDef authorBox fill:#e8f5e8,stroke:#388e3c,stroke-width:2px
    classDef analysisBox fill:#e3f2fd,stroke:#1976d2,stroke-width:2px
    classDef collabBox fill:#fff3e0,stroke:#f57c00,stroke-width:2px
    classDef subgroupBox fill:#fafafa,stroke:#757575,stroke-width:1px
    
    class VS,DR,WD,ON,VC,EX,PQ,PB,PP,CF,JA,MO toolBox
    class Author authorBox
    class Analysis analysisBox
    class Collaboration collabBox
    class Graphical,Text subgroupBox



```

- project tracking - excel
- reporting - power query
- data analysis - excel, power bi
- data visualization - excel, power bi
- simulations - power bi
- mockups - visio, powerpoint
- workflows - visio, drawio
- diagrams - visio, drawio
- rich text authoring - confluence, word, oneNote

Previous to the advent of generative AI, my toolchain was varied