function  onefloat  = BitConverterToSingle( fourbytes )
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明
onefloat=0.000;
    fourbytes_11=fourbytes(1:2);%四元数w
    fourbytes_12=fourbytes(3:4);
    fourbytes_13=fourbytes(5:6);%四元数w
    fourbytes_14=fourbytes(7:8);
    fourbytes_1=myHexstr2num(fourbytes_11);
    fourbytes_2=myHexstr2num(fourbytes_12);
    fourbytes_3=myHexstr2num(fourbytes_13);
    fourbytes_4=myHexstr2num(fourbytes_14);
    
    tem_onefloat=[fourbytes_1 fourbytes_2 fourbytes_3 fourbytes_4];
    tem_onefloat = uint8(tem_onefloat) ;                      %// cast them to "uint8" if they are not already
    onefloat = typecast( tem_onefloat , 'single') ;

end

