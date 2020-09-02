import json
# 根据实际信息修改以下参数值
mysql_params_pre = {
    "host": "172.17.202.145",
    "port": "3306",
    "user": "datahub",
    "password": "datahub"
}
oracle_params_pre = {
    "host": "172.17.202.145",
    "port": "1521",
    "user": "lenovo",
    "password": "123456",
    "sid": "ora11"
}
sqlserver_params_pre = {
    "host": "172.17.202.239",
    "port": "1433",
    "user": "sa",
    "password": "leap@123"
}
db2_params_pre = {
    "host": "172.17.202.145",
    "port": "50000",
    "user": "dbtowuo",
    "password": "Lenovo@2017",
    "sid": "lenovo"
}
postgresql_params_pre = {
    "host": "172.17.202.145",
    "port": "5432",
    "user": "lenovo2",
    "password": "Lenovo@2017"
}
ftp_params_pre = {
    "host": "172.17.202.145",
    "port": "21",
    "user": "datahub",
    "password": "datahub"
}
sftp_params_pre = {
    "host": "172.17.202.145",
    "port": "22",
    "user": "datahub",
    "password": "datahub"
}
s3_params_pre = {
    "secretKey": "jK4m+JaNHft4HKCO7EqSl1lMAq5CkSwoDtoOrgAj",
    "accessKey": "AKIAP4MOVNBFMWGNR4IA",
    "region": "cn-north-1"  # 这个值具体来源查看/common/select/regions接口
}


def get_variables():
    mysql_params = mysql_params_pre.copy()
    mysql_params["url"] = "jdbc:mysql://" + mysql_params_pre["host"] + ":" + mysql_params_pre["port"]
    mysql_params["params"] = "[]"
    mysql_params["otherParams"] = "{}"
    oracle_params = oracle_params_pre.copy()
    oracle_params["url"] = "jdbc:oracle:thin:@//" + oracle_params_pre["host"] + ":" + oracle_params_pre["port"]
    oracle_params["params"] = json.dumps([{"name": "sid", "value": oracle_params_pre["sid"], "extend": False}])
    oracle_params["otherParams"] = json.dumps({"sid": oracle_params_pre["sid"]})
    sqlserver_params = sqlserver_params_pre.copy()
    sqlserver_params["url"] = "jdbc:sqlserver://" + sqlserver_params_pre["host"] + ":" + sqlserver_params_pre["port"]
    sqlserver_params["params"] = "[]"
    sqlserver_params["otherParams"] = "{}"
    postgresql_params = postgresql_params_pre.copy()
    postgresql_params["url"] = "jdbc:postgresql://" + postgresql_params_pre["host"] + ":" + postgresql_params_pre["port"]
    postgresql_params["params"] = "[]"
    postgresql_params["otherParams"] = "{}"
    db2_params = db2_params_pre.copy()
    db2_params["url"] = "jdbc:db2://" + db2_params_pre["host"] + ":" + db2_params_pre["port"]
    db2_params["params"] = json.dumps([{"name": "sid", "value": db2_params_pre["sid"], "extend": False}])
    db2_params["otherParams"] = json.dumps({"sid": db2_params_pre["sid"]})
    ftp_params = ftp_params_pre.copy()
    ftp_params["url"] = "ftp://" + ftp_params_pre["host"] + ":" + ftp_params_pre["port"]
    ftp_params["params"] = json.dumps([{"name": "protocol", "value": "FTP", "extend": False}])
    ftp_params["otherParams"] = json.dumps({"protocol": "FTP"})
    sftp_params = sftp_params_pre.copy()
    sftp_params["url"] = "ftp://" + sftp_params_pre["host"] + ":" + sftp_params_pre["port"]
    sftp_params["params"] = json.dumps([{"name": "protocol", "value": "SFTP", "extend": False}])
    sftp_params["otherParams"] = json.dumps({"protocol": "SFTP"})
    s3_params = s3_params_pre.copy()
    s3_list = list()
    for x in s3_params:
        s3_list.append({"name": x, "value": s3_params[x], "extend": False})
    s3_params["params"] = json.dumps(s3_list)
    s3_params["otherParams"] = json.dumps(s3_params_pre.copy())
    variables = {
        "mysql_params": mysql_params,
        "oracle_params": oracle_params,
        "sqlserver_params": sqlserver_params,
        "postgresql_params": postgresql_params,
        "db2_params": db2_params,
        "ftp_params": ftp_params,
        "sftp_params": sftp_params,
        "s3_params": s3_params
    }
    return variables
