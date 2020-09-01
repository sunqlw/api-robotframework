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


def get_variables():
    mysql_params = mysql_params_pre.copy()
    mysql_params["url"] = "jdbc:mysql://" + mysql_params_pre["host"] + ":" + mysql_params_pre["port"]
    mysql_params["params"] = "[]"
    mysql_params["otherParams"] = "{}"
    oracle_params = oracle_params_pre.copy()
    oracle_params["url"] = "jdbc:oracle:thin:@//" + oracle_params_pre["host"] + ":" + oracle_params_pre["port"]
    oracle_params["params"] = json.dumps([{"name": "sid", "value": oracle_params_pre["sid"], "extend": False}])
    oracle_params["otherParams"] = json.dumps({"sid": oracle_params_pre["sid"]})

    variables = {
        "mysql_params": mysql_params,
        "oracle_params": oracle_params
    }
    return variables
