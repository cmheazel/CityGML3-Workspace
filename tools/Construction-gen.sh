#
# A tool to generate AsciiDoc formatted Requirements and Abstract Test files for 
# the CityGML 3.0 Conceptual Model. A copy of this script should be created for 
# each package. The only difference is in the values of the variables.
#
# This tool uses a set of template files, one for each class type. Sed commands 
# replace tokens in the template with values from the script variables. The script 
# variables are also used to build the file names for the output.
#
# Created by Chuck Heazel
# January, 2020
# 

# First define the variables
# The package name
PKG=Construction

# A list of the Abstract Classes
ACLIST="AbstractConstruction AbstractConstructionSurface AbstractConstructiveElement AbstractFillingElement AbstractFillingSurface AbstractFurniture AbstractInstallation"

# The instantiatable classes
CCLIST="CeilingSurface Door DoorSurface FloorSurface GroundSurface InteriorWallSurface OtherConstruction OuterCeilingSurface OuterFloorSurface RoofSurface WallSurface Window WindowSurface"

# CodeLists
CLLIST="DoorClassValue DoorFunctionValue DoorUsageValue ElevationReferenceValue EventValue OtherConstructionClassValue OtherConstructionFunctionValue OtherConstructionUsageValue WindowClassValue WindowFunctionValue WindowUsageValue ConditionOfConstructionValue HeightStatusValue RelationToConstruction"  

# And Data Types
DTLIST="ConstructionEvent Elevation Height" 

# Then for each list of classes, the substitution commands are run gainst the 
# appropriate requirement template.

for I in $ACLIST
do
cat ./Templates/REQ_Package_Abstract_Template.adoc | sed s/"CLASS"/$I/g | sed s/"PACKAGE"/$PKG/ | sed s/"REFF"/"<<"$I/ >../standard/requirements/$PKG/REQ_`echo $PKG`_$I.adoc
done

for I in $CCLIST
do
cat ./Templates/REQ_Package_Class_Template.adoc | sed s/"CLASS"/$I/g | sed s/"PACKAGE"/$PKG/ | sed s/"REFF"/"<<"$I/ >../standard/requirements/$PKG/REQ_`echo $PKG`_$I.adoc
done

for I in $CLLIST
do
cat ./Templates/REQ_Package_CodeList_Template.adoc | sed s/"CLASS"/$I/g | sed s/"PACKAGE"/$PKG/ | sed s/"REFF"/"<<"$I/ >../standard/requirements/$PKG/REQ_`echo $PKG`_$I.adoc
done

for I in $DTLIST
do
cat ./Templates/REQ_Package_BasicType_Template.adoc | sed s/"CLASS"/$I/g | sed s/"PACKAGE"/$PKG/ | sed s/"REFF"/"<<"$I/ >../standard/requirements/$PKG/REQ_`echo $PKG`_$I.adoc
done

# Now do the same thing for the Abstract Test templates

for I in $ACLIST
do
cat ./Templates/AT_Package_Abstract_Template.adoc | sed s/"CLASS"/$I/g | sed s/"PACKAGE"/$PKG/g | sed s/"REFF"/"<<"$I/ >../standard/abstract_tests/$PKG/ATS_`echo $PKG`_$I.adoc
done

for I in $CCLIST
do
cat ./Templates/AT_Package_Class_Template.adoc | sed s/"CLASS"/$I/g | sed s/"PACKAGE"/$PKG/g | sed s/"REFF"/"<<"$I/ >../standard/abstract_tests/$PKG/ATS_`echo $PKG`_$I.adoc
done

for I in $CLLIST
do
cat ./Templates/AT_Package_CodeList_Template.adoc | sed s/"CLASS"/$I/g | sed s/"PACKAGE"/$PKG/g | sed s/"REFF"/"<<"$I/ >../standard/abstract_tests/$PKG/ATS_`echo $PKG`_$I.adoc
done

for I in $DTLIST
do
cat ./Templates/AT_Package_BasicType_Template.adoc | sed s/"CLASS"/$I/g | sed s/"PACKAGE"/$PKG/g | sed s/"REFF"/"<<"$I/ >../standard/abstract_tests/$PKG/ATS_`echo $PKG`_$I.adoc
done

