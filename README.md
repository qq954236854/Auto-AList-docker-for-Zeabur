# Auto-AList-docker-for-Zeabur

### 如何使用？

Fork到自己的仓库，然后在Zeabur中使用Github仓库部署，找到Fork的[Auto-AList-docker-for-Zeabur]，部署即可，建议白嫖一个数据库，这样每次更新部署就不用来回备份与恢复了

## 数据库
一些免费的数据库:

- https://db4free.net/
- https://remotemysql.com/
- https://www.freesqldatabase.com/
- https://planetscale.com/
- https://bit.io/
- https://www.elephantsql.com/
- https://scalingo.com/
- http://cloud.yugabyte.com/

如何更改数据库？
> 在 Variable 中添加变量
> ```json
>   "DB_TYPE":"mysql",
>   "DB_HOST":"sql.com",
>   "DB_PORT":"3306",
>   "DB_USER":"alist",
>   "DB_PASS":"password",
>   "DB_NAME":"alist",
>   "DB_TABLE_PREFIX":"alist_",
>   "DB_SSL_MODE":"true"
> ```
> 数据库是私有的，因此您无需担心泄露数据。

### bit数据库示例 https://bit.io
> ```json
>   "DB_TYPE": "postgres",
>   "DB_HOST": "db.bit.io",
>   "DB_PORT": "5432",
>   "DB_USER": "账号",
>   "DB_PASS": "密码",
>   "DB_NAME": "账号/数据库名称",
>   "DB_TABLE_PREFIX": "alist_",
>   "DB_SSL_MODE": "require"
> 

### db4free示例 https://db4free.net
> ```json
>   "DB_TYPE": "mysql", 
>   "DB_HOST": "db4free.net", 
>   "DB_PORT": "3306", 
>   "DB_USER": "账号", 
>   "DB_PASS": "密码", 
>   "DB_NAME": "数据名称", 
>   "DB_TABLE_PREFIX": "xlist_", 
>   "DB_SSL_MODE": "true" 
> ```



## 密码
初始密码是随机生成的，您可以通过检查控制台日志/查看数据库来获取它。

请勿滥用！
