library(magick)

files <- list.files("toThumnailize", full.names = T)
images <- image_read(files)

tbnails <- image_scale(images, "305x203")
outputs <- gsub(".jpg", ".png", gsub("toThumnailize", "thumbs", files))

sapply(1:length(tbnails), function (i) {
  image_write(tbnails[i], path  = outputs[i], format = "png")  
})


