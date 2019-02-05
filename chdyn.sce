function image_extended = extensionDynamicRange (image)
    size_image=size(image);
    matix_columns = size_image(1);
    matix_arrows = size_image(2);
        
    for i=1:matix_columns
        for j=1:matix_arrows
            image_extended(i,j)=(255/(max(image)-min(image)))*(image(i,j)-min(image));
        end
    end
endfunction

function image_bridged = histogram_equalization (image)
    size_image=size(image);
    matix_columns = size_image(1);
    matix_arrows = size_image(2);
    [number_of_pixel, pixel_value]=imhist(image);
    
    for k=min(pixel_value):max(pixel_value)
        c(k)=sum()
        for i=1:matix_columns
            for j=1:matix_arrows
                image_bridged(i,j)=(255/(max(image)-min(image)))*(image(i,j)-min(image));
            end
        end
    end
endfunction

image =imread('Unknown.jpg');
image=image(:,:,2);
image_extended = extensionDynamicRange (image);

figure(0);
subplot(2,2,1)
imshow(image);
subplot(2,2,2)
bar(imhist(image));
subplot(2,2,3)
imshow(image_extended);
subplot(2,2,4)
bar(imhist(image_extended));


