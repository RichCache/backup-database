# backup-database

备份文件解密方式：

`openssl aes-256-cbc -d -base64 -in production_backup.tar.enc -out production_backup.tar`
  输入密码后解密

用Docker www容器中的OpenSSL 1.0.1t  3 May 2016版本进行解密，其他OpenSSL版本解密可能会出错