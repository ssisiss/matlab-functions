function  onefloat  = BitConverterToSingle( fourbytes )
%UNTITLED 返回从字节数组中指定位置的四个字节转换来单精度浮点数
%   https://msdn.microsoft.com/zh-cn/library/system.bitconverter.tosingle(v=vs.110).aspx
onefloat=0.000;
    fourbytes_11=fourbytes(1:2);
    fourbytes_12=fourbytes(3:4);
    fourbytes_13=fourbytes(5:6);
    fourbytes_14=fourbytes(7:8);
    fourbytes_1=myHexstr2num(fourbytes_11);
    fourbytes_2=myHexstr2num(fourbytes_12);
    fourbytes_3=myHexstr2num(fourbytes_13);
    fourbytes_4=myHexstr2num(fourbytes_14);
    
    tem_onefloat=[fourbytes_1 fourbytes_2 fourbytes_3 fourbytes_4];
    tem_onefloat = uint8(tem_onefloat) ;          
    onefloat = typecast( tem_onefloat , 'single') ;

end

