## makeCacheMatrix arg is a matrix, sets value/matrix in cache
## then gets it, sets inverse_matrix in casche 
## then gets it, returns a list

makeCacheMatrix <- function(x = matrix()) {		

  	m<-NULL				
	
	 	 set<-function(y){
			  x<<-y							##assign value in cache
			  m<<-NULL						##reserves value in cache
		}

		get<-function() {
			x							##get value
		}


		
		setmatrix<-function(solve) { 		
			m<<- solve						##assign iverse_matrix function to m in cache	
		}

		
		getmatrix<-function() {
			m							##get value from inverse_matrix function assigned to m in cache
		}


	list(set=set, get=get, setmatrix=setmatrix, getmatrix=getmatrix)	##list setting and getting matrix and inverse
}



## cacheSolve checks if inverse_matrix is already in cache
## otherwise inverses matrix and sets it in cache
## returning the inverse_matrix

cacheSolve <- function(x=matrix(), ...) {

    m<-x$getmatrix()

    	if(!is.null(m)){

	      message("getting cached data")
      	      return(m)