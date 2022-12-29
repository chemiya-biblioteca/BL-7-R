tryCatch(               
  
  
  expr = {                     
    1 + 1
    print("Everything was fine.")
  },
  
  error = function(e){         
    print("There was an error message.")
  },
  
  warning = function(w){      
    print("There was a warning message.")
  },
  
  finally = {            
    print("finally Executed")
  }
)
