October 31st notes - Day-17
========================================================
# Utility Functions
planebind <- function(red,green,blue){
  array(c(red,green,blue), dim=c(dim(red)[1],dim(red)[2],3)) 
}

ShowImage <- function(image){
  size <- dim(image)
  canvas(x=c(1,size[2]), y=c(1,size[1]),asp=1,)
  rasterImage(image,1,1,size[2],size[1])

========================================================
colorPlane <- function(npixels=50,howMuchBlue=.5){


npixels <- 50
howMuchBlue <- .5

x <- seq(0,1, length=npixels)
# initialize state
red <- matrix(0, nrow=npixels, ncol=npixels)
for(k in 1:npixels){
# update 
  red[ ,k] <- cbind(x)
  }
green <- matrix(0, nrow=npixels, ncol=npixels)
for(k in 1:npixels){
# update 
  green[k, ] <- rbind(x)
  }

blue <- matrix(howMuchBlue, nrow=npixels, ncol=npixels)
 
 return(planeBind(red,green,blue))
 }
 
 
========================================================
# Spot the Difference
puzzleURL <- 'http://www.vistax64.com/attachments/chillout-room/9404d1231736689-spot-difference-spot02-c.jpg'
puzzle <- readJPEG( getURLContent( puzzleURL ) ) 
## Subtract Statagey for Spot the difference

spotDiff <- function(lfet,right){
  abs(left - right)
}

readImageURL <- function(URL){
  isJPEG <- grepl("[.jpg$ | .jpeg$]",URL)
  if(isJPEG) 
    image <- readJPEG(getURLContent(URL))
    else
  image <- readPNG(getURLContent(URL))
}


splitThePuzzle <- function(puzzle){
  sz <- dim(puzzle)
  mid <- sz[2]/2
  left <- puzzle[,1:mid,]
  right <- puzzle[,(mid+1):sz[2],]
  return(list(left=left, right=right))
}

=============

From collaborator

puzzle <- readJPEG( getURLContent( puzzleURL ) )


# ===============

readImageURL <- function(URL){
  isJPEG <- grepl("[.jpg$|.jpeg$]",URL)
  
  if( isJPEG ) 
   image <- readJPEG(getURLContent(URL))
    else
   image<- readPNG(getURLContent(URL))
      
  }
 readImageURL(puzzleURL)
# ===============
splitThePuzzle <- function(puzzle) {
  sz <- dim(puzzle)
  mid <- sz[2]/2
  left <- puzzle[,1:mid,]
  right <- puzzle[,(mid+1):sz[2],]
  return( list(left=left, right=right ) )
  }
    
# ================    

# Generate a plane of colors

## Utility Functions
ShowImage <- function(image){
 size <- dim(image) 
 canvas(x=c(1,size[2]), y=c(1,size[1]), asp=1)
 rasterImage(image,1,1,size[2],size[1]) 
 } 

planeBind <- function(red,green,blue){
  array(c(red,green,blue), 
        dim<-c(dim(red)[1],dim(red)[2],3) )
}
# ==========================
colorPlane <- function( npixels=50,
                  howMuchBlue=.5) {

x <- seq(0,1,length=npixels)

#initialize state
red <- matrix(0, nrow=npixels, ncol=npixels)
for (k in 1:npixels){
  # update
  red[,k ] <- cbind(x)
}

green <- matrix(0, nrow=npixels, ncol=npixels)
for (k in 1:npixels){
    green[k, ] <- rbind(x)
}

blue <- matrix(howMuchBlue, 
               nrow=npixels,
               ncol=npixels)

  return(planeBind(red,green,blue)) 
}
               
ShowImage(colorPlane(howMuchBlue=1,npixels=50))

