install.packages("RMySQL")


library("RMySQL")


mysqlconn = dbConnect(MySQL(), user = 'root', password = 'password',
                      dbname = 'rstudio', host = 'localhost')


dbListTables(mysqlconn)

dbSendQuery(mysqlconn, 'DROP TABLE coche2')
res = dbSendQuery(mysqlconn, "SELECT * FROM coche")
df = fetch(res, n = 3)
print(df)


dbSendQuery(mysqlconn, "insert into coche values('merce',23,34)")