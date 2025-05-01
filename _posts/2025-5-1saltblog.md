---

layout: post
title: Fast & Accurate UI Mockup-As-Code Using SaltUML

---


If you're working in any kind of development or planning role for a complex system, you are aware that diagram as code brings huge benefits to the architect and product owner roles.  Expressing system documentation as code allows for quick iteration, clearer collaboration, better version control, and automation, all of which are critical when dealing with dynamic systems at scale.

While many people are familiar with UML renderers for things like system and sequence diagrams, I recently discovered PlantUML's Salt subproject, and it has complete changed my approach to developing rough mockups.  With Salt, I can use simple markup language to create functionally accurate interface mockups.  

Consider the following screenshot of the AWS EC2 dashboard, and the rough mockup that was generated with fewer than 100 lines of SaltUML.

<div class="img-comp-container">
  <div class="img-comp-img">
    <img src="../images/ec2_dash.png" width="300" height="200">
  </div>
  <div class="img-comp-img img-comp-overlay">
    <img src="../images/ec2_dash-mock.png" width="300" height="200">
  </div>
</div>


One can learn its primitives and be productive within a few hours of playing around with it.  With a bit of experience SaltUML allows very rapid prototyping and iteration of graphical designs.  The following replication of the AWS Instance Dashboard interface takes under 100 lines of code to accurately represent the AWS EC2 Dashboard UI:

  

  ```plantuml
@startsalt
{+ 
{+   AWS ‖ <&grid-three-up>  {+ "<&magnifying-glass> Search                          " }                                          <&terminal> ‖ <&bell> ‖ <&question-mark> ‖ <&cog> ‖ United States(Ohio)<&caret-bottom> ‖ <color:#146eb4>username@9876-5432-1098<&caret-bottom> }
 ---
 <color:#146eb4><&menu> <u>EC2</u> <color:gray> <&caret-right> <b>Instances                                                                                                                           <color:146eb4><&browser></color> ‖ <color:gray><&aperture> <&code>
---
{
    'LeftNav
{
    <b>   <size:14>EC2            <color:gray><&caret-left>
{
   Dashboard
   EC2 Global View <color:gray><&external-link*1.2>
   Events
{}
<&caret-bottom><b> <size:14>Instances
   <color:#146eb4><b>Instances
   Instance Types
   Launch Templates
   Spot Requests
   Savings Plans
   Reserved Instances
   Dedicated Hosts
   Capacity Reservations
{}
<&caret-right><b> <size:14>Images
{}
<&caret-right><b> <size:14>Elastic Block Store
{}
<&caret-right><b> <size:14>Network & Security
{}
<&caret-right><b> <size:14>Load Balancing
{}
<&caret-right><b> <size:14>Auto Scaling
---
   Settings
}
}|
' end leftNav
' Top Main
{+
{
    {}
{ <b><size:14>Instances (3/8) </size> <size:9><color:#146eb4>Info</size>                            </b><size:9><color:gray>10 minutes ago<color:#146eb4><&reload*2> |{[Connect]|^ Instance State^|^ Actions^|^ Launch Instances^}}
{  {+ "<&magnifying-glass> Find instance by attribute or tag (case-sensitive)"}| | ^ All States^ |                                   <&caret-left> 1 <&caret-right> ‖ <&cog>}
{.}
{T-
    ☐ | <b>Name <&pencil> | <b>Instance ID | <b>Instance State<&caret-bottom> | <b>Instance Type<&caret-bottom> | <b>Status Check | <b>Alarm Status | <b>Availability Zone<&caret-bottom> | <b>Public IPV4 DNS<&caret-bottom> 
    ☐ | Instance 1 | <color:146eb4>i-05b986b9c9d3181 | <color:25A032><&circle-check> Running <color:146eb4><&zoom-in><&zoom-out> | t2.large | <color:25A032><&circle-check>2/2 checks passed | <color:146eb4>View Alarms<&plus> | us-east-2a | ec2-5-22-42-38 
    ☑ | Instance 1 | <color:146eb4>i-05b986b9c9d3181 | <color:25A032><&circle-check> Running <color:146eb4><&zoom-in><&zoom-out> | t2.large | <color:darkorange><&warning>1/2 checks passed | <color:146eb4>View Alarms<&plus> | us-east-2a | ec2-8-8-8-8
    ☐ | Instance 1 | <color:146eb4>i-05b986b9c9d3181 | <color:darkred><&circle-x> Terminated <color:146eb4><&zoom-in><&zoom-out> | t2.large | - | <color:146eb4>View Alarms<&plus> | us-east-2a | -
}
{.}
{.}
{.}
{.}
---
{ <b><size:14>i-05b986b9c9d3181 (Instance 1)                                                                        </size><color:gray><&cog> ‖ <&caret-bottom>}
{/  <color:146eb4><u><b>Details</u> | <b>Status and alarms | <b>Monitoring | <b>Security | <b>Networking | <b>Storage | <b>Tags  }
---
{ <&caret-bottom> <b>Instance Summary <size:9><color:#146eb4>Info</size>}
' lower panel
{
' Column 1
{
                                                  
<size:10><b> Instance ID
<color:#146eb4><&link-intact></color> <size:10>i-05b986b9c9d3181
{.}
<size:10><b> Public IPv6 address
-
}|
' Column 2
{
                                                  
<size:10><b> Public IPv4 address
<color:#146eb4><&link-intact></color> <size:10>8.8.8.8
{.}
<size:10><b> Instance state
<size:10><color:25A032><&circle-check> Running 

{.}
}|
' Column 3
{
                                                  
<size:10><b> Private IPv4 address
<color:#146eb4><&link-intact></color> <size:10>172.1.1.1
{.}
<size:10><b> Public IPv4 DNS
<color:#146eb4><&link-intact></color> <size:10>ec2-8-8-8-8.us-east-2.compute.amazonaws.com
<size:10><color:#146eb4>open address <&external-link>

{.}
}
}
}
}
}
' end top main
}
}
@endsalt

  ```

Salt explicitly focuses on **function** over form.  Users with light HTML experience will find the [Creole](https://plantuml.com/creole) engine very flexible in formatting.  You can declare your own sprites, but the Openiconic library has an analog for virtually every icon I have needed.

