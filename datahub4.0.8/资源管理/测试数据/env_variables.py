def get_variables(env='200'):
    if env == '200':
        # 200环境
        variables = {
            # 访问域名
            "main_url": "http://demo202.test.com:8070",
            # 账号信息
            "un": "datahub",
            "pw": "datahub123"
        }

    elif env == '310':
        # 310环境
        variables = {
            # 访问域名
            "main_url": "http://demo310.test.com:8070",
            # 账号信息
            "un": "datahub",
            "pw": "datahub123"
        }

    else:
        # 测试环境
        variables = {
            # 访问域名
            "main_url": "http://demo215.test.com:8070",
            # 账号信息
            "un": "datahub",
            "pw": "datahub123"
        }

    return variables
