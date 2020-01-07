PKG=Appearance
for I in "AbstractSurfaceData" "AbstractTexture" "Appearance" "GeoreferencedTexture" "ParameterizedTexture" "TextureAssociation" "X3DMaterial" 
do
cat REQ_Package_Class_Template.adoc | sed s/"CLASS"/$I/g | sed s/"PACKAGE"/$PKG/ | sed s/"REFF"/"<<"$I/ >../standard/requirements/Appearance/REQ_Appearance_$I.adoc
done

for I in 
do
cat REQ_Package_CodeList_Template.adoc | sed s/"CLASS"/$I/g | sed s/"PACKAGE"/$PKG/ | sed s/"REFF"/"<<"$I/ >../standard/requirements/Appearance/REQ_Appearance_$I.adoc
done

for I in "Color" "ColorPlusOpacity" "AbstractTextureParameterization" "TexCoordGen" "TexCoordList" "TextureType" "WrapMode" 
do
cat REQ_Package_BasicType_Template.adoc | sed s/"CLASS"/$I/g | sed s/"PACKAGE"/$PKG/ | sed s/"REFF"/"<<"$I/ >../standard/requirements/Appearance/REQ_Appearance_$I.adoc
done


