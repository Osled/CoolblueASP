# Coolblue Assignment REST API 
## Introduction
### The soltion is Designed to run a REST API using HTTP host that presents the Coolblue products information by searching the product ID and Type ID. the end-point is the Name of the products, ID, SalePrice, Product ID Type,  Product Type, Can be Insured, Insurance calculated cost. 


## Setup
### Installation

Install Visual Studio 2019 version 16.11 
Install the following WorkLoads during the installation of Visual Studio
- ASP.NET and Web Development
- .NET desktop Development
- Universal Windows Platform development
- Visual Studio extension development


### Extentions
- Install Nunit 3 Adapter from the Visual studio Extentions manager.

### Packages
Access the Solution and chose "Manage Nuget Packages for Solution" to install the following packages.
- Newtonsoft.jason
      Designed to convert Json files
- NUnit
      Designed to run Automated testing

## Run REST API
Install the Github file move to the following directory CoolblueASP\Coolblue\Coolblue.sln
Run the **Coolblue.sln**

to access the App with Visual Studio, press the run/ Play button in visual studio a web browser will open up. 


## Design Choices
### Interface
The Website runs three WebForms named as Defult, IDfull, IdType all three pages can be accessed through the navegation menu

- The Default page hosts Task 1 from the assignment
              - Input ID number of the product. 
              - Press Search. 
              - Display the relevent information :** Name of the products, ID, SalePrice, Product ID Type.**
              
- The IdType page hosts Task 2 from the assignment
              - Input ID Type number of the product. 
              - Press Search. 
              - Display the relevent information : **Product ID Type,  Product Type, Can be Insured.**
              
- The IDfull page hosts Task 3 from the assignment
              - Input ID number of the product. 
              - Press Search. 
              - Display the relevent information : **Name of the products, ID, SalePrice, Product ID Type,  Product Type, Can be Insured, Insurance calculated cost. **

### Code

- ApiHelper: Runs the HTTPClient to set and get the host information.
- DataProcesser: Access the Json file and creates a list, then picks the group of which the ID falls in, then returns the Data and host them in the Model of each ID and Type Json.
- ID page searchs a Json file from a web http that hosts page [https://api.jsonbin.io/v3/b/62e7546460c3536f3fcc26b1].
- ID Type page searchs a Json file from a web http that hosts page [https://api.jsonbin.io/v3/b/62e755aa60c3536f3fcc2840].
- Caluculation done: is a switch case that checks if the item is insured and if its a Laptop or a Smartphone, then calculates the total insurance cost.

