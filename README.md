# Docker: Interactive Stego
interactive docker container featuring many stego-related tools
- use `./build` to build the image
- use `./interactive_stego` to enter container
### overview of provided tools
| name | tool type | media type | basic usage | source |
| --- | --- | --- | --- | --- |
| as4pgc | stego | Audio (MP3, WAV, OGG, FLAC) | `./as4pgc -h`<br/>`./as4pgc -w <message_file> <carrier_file> [options]`<br/>`./as4pgc -r <stego_file> [options]` | pip |
| asteg | stego | Audio (MP3, WAV) | `./asteg -h`<br/>`./asteg -p -i <carrier_file> [-o <stego_file>] [-f <message_file>]`<br/>`./asteg -x -i <stego_file> [-o <message_file>]` | pip |
| AudioStego | stego | Audio (MP3, WAV) | `./AudioStego`<br/>`./AudioStego <carrier_file> <message_file>`<br/>`./AudioStego <stego_file> -f` | https://github.com/danielcardeenas/AudioStego.git |
| binwalk | analysis | general | `./binwalk -h`<br/>`./binwalk <file>` | apt |
| cloackedpixel | stego & analysis | Images (JPG) | `./cloacked-pixel`<br/>`./cloacked-pixel hide <carrier_file> <message_file> <key>`<br/>`./cloacked-pixel extract <stego_file> <message_file> <key>`<br/>`./cloacked-pixel analyse <file>` | https://github.com/livz/cloacked-pixel.git |
| [TODO] DeepSound | stego | Audio (MP3, WAV, FLAC) | `./DeepSound`<br/>GUI | https://github.com/Jpinsoft/DeepSound.git |
| exiftool | info | general | `./exiftool <file>` | apt |
| f5 | stego | Images (JPG) | `./f5-embed -e <message_file> [-p <key>] <carrier_file> [stego_file]`<br/>`./f5-extract -e <message_file> [-p <key>] <stego_file>` | https://github.com/matthewgao/F5-steganography.git |
| ffmpeg | info | Audio (MP3), Video (MP4) | `./ffmpeg -h`<br/>`./ffmpeg [options] [[infile options] -i infile]... {[outfile options] outfile}...` | apt |
| file | info | general | `./file --help`<br/>`./file [options] <file>` | apt |
| hidereveal | stego | Images (PNG, BMP, TIFF) | `./HideReveal`<br/>GUI | http://hidereveal.ncottin.net/software.php |
| foremost | analysis | general | `./foremost -h`<br/>`./foremost [options] <file>` | apt |
| id3stego | stego | Audio (MP3) | `./id3stego -h`<br/>`./id3stego -m put -a <carrier_file> -o <message_file>`<br/>`./id3stego -m get -a <stego_file> -o <message_file>` | https://github.com/FrozenBurrito/id3stego |
| LSBSteg | stego | Images (PNG) | `./LSBSteg -h`<br/>`./LSBSteg encode -i <carrier_file> -o <stego_file> -f <message_file>`<br/>`./LSBSteg decode -i <stego_file> -o <message_file>` | https://github.com/RobinDavid/LSB-Steganography.git |
| [TODO] magick | info | Images (JPG, PNG, ...) | https://github.com/ImageMagick/ImageMagick.git |
| jpeg-investigator | analysis | Images (JPG) | `./jpeg-investigator -h`<br/>`./jpeg-investigator [-jf <json_file>] [-es <segments>] [-et] [-ed <output_directory>] [-f] [-s] <jpeg_file> [jpeg_file ...]` | https://github.com/bh-8/hiwi-jpeg-investigator.git |
| jphide/jpseek | stego | Images (JPG) | `./jphide <carrier_file> <stego_file> <message_file>`<br/>`./jpseek <stego_file> <message_file>` | https://github.com/h3xx/jphs.git |
| jsteg | stego | Images (JPG) | `./jsteg`<br/>`./jsteg hide <carrier_file> <message_file> <stego_file>`<br/>`./jsteg reveal <stego_file> <message_file>` | https://github.com/lukechampine/jsteg.git |
| mp3-analyzer | analysis | Audio (MP3) | `./mp3-analyzer -h`<br/>`./mp3-analyzer -i <file> [-o <json_file>] [-d] [-f]` | https://git.code.sf.net/p/mp3filestructureanalyser/code |
| MP3Stego | stego | Audio (MP3) | `./MP3Stego-encode -h`<br/>`./MP3Stego-encode [-b <bitrate>] [-c] [-o] -E <message_file> [-P <key>] <carrier_file> <stego_file>`<br/>`./MP3Stego-decode -h`<br/>`./MP3Stego-decode -X [-P <key>] <stego_file> [<pcm_file> [<message_file>]]` | https://www.petitcolas.net/steganography/mp3stego/ |
| mp3stegz | stego | Audio (MP3) | `./mp3stegz`<br/>GUI | https://sourceforge.net/projects/mp3stegz/ |
| OpenPuff | stego | Images (JPG, PNG, BMP, ...), Audio (MP3, WAV, ...), Video (MP4, ...) | `./OpenPuff`<br/>GUI | https://embeddedsw.net/OpenPuff_Steganography_Home.html |
| OpenStego | stego | Images (PNG) | `./OpenStego -h`<br/>`./OpenStego embed [-a <stego_algorithm>] -mf <message_file> -cf <carrier_file> -sf <stego_file> [-e -p <key> -A <crypto_algorithm>]`<br/>`./OpenStego extract [-a <stego_algorithm>] -sf <stego_file> -xf <message_file> [-p <key>]`<br/>`./OpenStegoGUI` | https://github.com/syvaidya/openstego.git |
| outguess | stego | Images (JPG) | `./outguess`<br/>`./outguess -k password -d <message_file> <carrier_file> <stego_file>` | apt |
| pngcheck | analysis | Images (PNG) | `./pngcheck`<br/>`./pngcheck -7cfpqtvx <file>` | apt |
| SNOW | stego | Text (TXT) | `./SNOW -h`<br/>`./SNOW [-C] [-Q] [-S] [-p <key>] [-l <line_length>] -f <message_file> <carrier_file> <stego_file>` | https://github.com/mattkwan-zz/snow.git |
| SonicVisualiser | analysis | Audio (MP3, WAV, OGG, ...) | `./SonicVisualiser`<br/>GUI | https://github.com/sonic-visualiser/sonic-visualiser.git |
| spectrology | stego | Audio (WAV) | `./spectrology -h`<br/>`./spectrology [-r] [-i] [-o <stego_file>] [-b <bottom>] [-t <top>] [-p <pixels>] [-s <sampling>] <message_file>` | https://github.com/solusipse/spectrology.git |
| Steg | stego | Images (JPG, PNG, BMP, TIFF) | `./Steg`<br/>GUI | https://www.fabionet.org/ |
| steganabara | analysis | Images (JPG, PNG, BMP, GIF) | `./steganabara`<br/>GUI | https://github.com/quangntenemy/Steganabara.git |
| stegano | stego | Images (JPG, PNG) | `./stegano-lsb`, `./stegano-red`, `./stegano-steganalysis-parity`, `./stegano-steganalysis-statistics`<br/>`./stegano-lsb hide -i <carrier_file> [-g [<generator> [<generator> ...]]] [-s <shift>] -f <message_file> -o <stego_file>`<br/>`./stegano-lsb reveal -i <stego_file> [-g [<generator> [<generator> ...]]] [-s <shift>] [-o <message_file>]` | https://www.stegano.org/ |
| stegdetect/stegbreak | analysis | Images (JPG) | `./stegdetect [-nqV] [-s <float>] [-d <num>] [-t <tests>] [-C <num>] [<stego_file>]`<br/>`./stegbreak [-V] [-r <rules>] [-f <wordlist>] [-t <schemes>] <stego_file>` | https://github.com/abeluck/stegdetect.git |
| steghide | stego | Images (JPG, BMP), Audio (WAV, AU) | `./steghide --help`<br/>`./steghide embed -ef <message_file> -cf <carrier_file> [-p <key>] -sf <stego_file>`<br/>`./steghide extract -sf <stego_file> [-p <key>] -xf <message_file>` | apt |
| StegJ | stego | Images (???) | `./StegJ`<br/>`./StegJ -a <algorithm> -i <carrier_file> -f <message_file> -o <stego_file> [-p <key>]`<br/>`./StegJ -a <algorithm> -i <stego_file> -e <output_directory> [-p <key>]` | https://stegj.sourceforge.net/ |
| stegonaut | stego | Audio (MP3) | `./stegonaut`<br/>GUI | https://github.com/knez/stegonaut.git |
| stegosuite | stego | Images (JPG, PNG, BMP, GIF) | `./stegosuite`<br/>GUI | apt |
| stegoveritas | analysis | Images (JPG, PNG, BMP, GIF, TIFF) | `./stegoveritas -h`<br/>`./stegoveritas [-out <directory>] -meta -imageTransform -extractLSB -extract_frames -trailing -steghide -exif -xmp -carve <stego_file>` | pip |
| stegpy | stego | Images (PNG, BMP, GIF), Audio (WAV) | `./stegpy -h`<br/>`./stegpy [-b [{1,2,4}]] [-c] <message_file> <carrier_file>` | pip |
| Stegsolve | analysis | Images (???) | `./Stegsolve`<br/>GUI | https://wiki.bi0s.in/steganography/stegsolve/ |
| strings | analysis | general | `./strings <file>` | apt |
| twopix | stego | Images (BMP) | `./twopix`<br/>`./twopix <carrier_file> <message_file> <stego_file> <key> <quality (1-8)>` | https://github.com/aiceware/2pix-steganography.git |
| zsteg | analysis | Images (PNG, BMP) | `./zsteg`<br/>`./zsteg -a <stego_file>` | https://github.com/zed-0xff/zsteg.git |
