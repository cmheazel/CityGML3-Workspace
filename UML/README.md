# CityGML UML

The CityGML standard defines a conceptual model in UML. This UML model directory provides a repository for that model. The model is maintained as a collection of .XMI files under the CityGML directory. This provides a repository which is both independent of the UML modeling tool and accessible to Git configuration management.

The CityGML conceptual model has dependencies in both the ISO-TC211 Harmonized model and the emerging OGC Harmonized model.

## ISO-TC211

The ISO-TC211 Harmonized model is a avaliable from [here](https://github.com/ISO-TC211/HMMG). The model is available as both .XMI files and as an Enterprise Architectu project. Instructions for how to use the XMI files can be found [here](https://github.com/ISO-TC211/HMMG/wiki).

## OGC

There is an issue open for the OAB to address the governance and management of OGC UML models. This standard assumes that this issue will be resolved and result in an approach similar to that used by ISO. 

For now the necessary OGC UML packages will be maintained on the CityGML Git repository under the UML/OGC directory.

# Using the XMI Files

## SPARX Enterprise Architect

. Download the ISO-TC211 Enterprise Architect file.
. Rename the EA file to a name of your choice.
. Open the EA file.
. In the Project Browser, place focus on the OGC package.
. Create a CityGML package within the OGC package.
. Move the focus to the CityGML package.
. On the Publish tab, select Import XMI.
. Select "Import Model XMI".
. Select the file you want to import.
. Select the "Import" radio button.
. Your package should now show up in the Project Browser.
. Repeat for as many packages as you wish.

## other tools TBD
