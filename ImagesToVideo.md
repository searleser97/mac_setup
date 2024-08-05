### Transform HEIC (IOS) images to JPG
```
magick mogrify -monitor -format jpg *.heic
```
### Trash HEIC images
```
trash *.heic
```
### Rename JPG to jpg extension
```
rename 's/\.JPG$/._jpg/' *.JPG && rename 's/\._jpg$/.jpg/' *._jpg
```
### Reorient images to its correct position
```
exiftran -a -i *.jpg
```
### Update images modified and creation date based on EXIF data
```
jhead -ft *.jpg
```
### Copy images to a tmp folder with a sequential name (e.g. "img0034.jpg"
```
mkdir ~/Desktop/NN
x=1; for i in $(ls -r -t *jpg); do counter=$(printf %04d $x); cp "$i" /Users/sergiosanc/Desktop/NN/img"$counter".jpg; x=$(($x+1)); done
```
### Create the video
```
cd ~/Desktop/NN
ffmpeg -framerate 13 -i img%04d.JPG -c:v libx264 -profile:v high -crf 20 -pix_fmt yuv420p -filter_complex "scale=1920:1080:force_original_aspect_ratio=decrease,pad=1920:1080:(ow-iw)/2:(oh-ih)/2" output.mp4
```
