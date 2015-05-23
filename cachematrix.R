## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## 1. set the value of the matrix
## 2. get the value of the matrix
## 3. set the inverse of the matrix
## 4. get the value of the matrix
makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        set <- function(y){ 
                x<<-y
                i<<-NULL
        }
        get <- function(){
                x
        }
        setinverse<-function(inverse){
                i<<-inverse
        }
        getinverse<-function(){
                i
        }
        list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)  ## return list of functions

}


## Write a short comment describing this function
## the following function calculates the inverse of the matrix. it first checks if
## the inverse has already been calculated. if yes, it will get the inverse from the
## cache and return the inverse. otherwise it will calculate the inverse of the 
## matrix and set the value the inverse

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        i<-x$getinverse()
        if(!is.null(i)){
                message("getting cached data")
                return(i)
        }
        data<-x$get()
        i<-solve(data)
        x$setinverse(i)
        i
}
