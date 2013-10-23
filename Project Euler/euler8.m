function [out] = euler8(number_as_string,length_product)
%EULER8 Summary of this function goes here
%   Detailed explanation goes here
i = 1;
length_number = length (number_as_string);
while i + length_product - 1 <= length_number
    product (i) = 1;
    j = 0;
    while j < length_product
        product (i) = product (i) * str2num (number_as_string (i + j));
        j = j + 1;
    end
    i = i + 1;
end
out = max (product);
end

