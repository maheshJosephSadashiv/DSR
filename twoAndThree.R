#2nd problem

Buff_Tail = c(10, 1, 37, 5, 12)
Garden_bee = c(8, 3, 9, 6, 4)
Red_Tail = c(18, 9, 12, 4, 5)
Carder_bee = c( 8, 27, 6 ,32, 23) 
Honey_Bee = c( 12, 13, 16, 9, 10)
df = data.frame(Buff_Tail,Garden_bee,Red_Tail,Carder_bee,Honey_Bee)
row.names(df) = c( "Thistle","Vipers","Golden Rain","Yellowalfala","blackberry")
df


#3rd problem
#3a
mat = data.matrix(df)
mat = t(mat)
as.list(data.frame(mat))

#3b

num = c(1:9)
float = as.numeric(num)
str = c("123s","vcvsf","thsth","artfweqg","fsgfsdh","fawerga","aerfq","afa")
lis = list(num,float,str)
typeof(lis[[1]])
typeof(lis[[2]])
typeof(lis[[3]])
