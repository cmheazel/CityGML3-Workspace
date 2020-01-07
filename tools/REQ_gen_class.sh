PKG=Appearance
for I in "AbstractSurfaceData" "AbstractTexture" "Color" "Appearance" "ColorPlusOpacity" "GeoreferencedTexture" "ParameterizedTexture" "TextureAssociation" "X3DMaterial" "AbstractTextureParameterization" "TexCoordGen" "TexCoordList" "TextureType" "WrapMode" 
do
cat REQ_Package_Class_Template.adoc | sed s/"CLASS"/$I/g | sed s/"PACKAGE"/$PKG/ | sed s/"REFF"/"<<"$I/ >../standard/requirements/Appearance/REQ_Appearance_$I.adoc
done


