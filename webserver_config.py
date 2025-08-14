""" Необходимая настройка, чтобы Flask-Limiter не использовал оперативную
память для хранения лимитов запросов к веб-серверу, а пользовался Redis. 
 """

from flask_limiter.util import get_remote_address


RATELIMIT_STORAGE_URI = "redis://redis:6379/0"
RATELIMIT_STRATEGY = "fixed-window"
RATELIMIT_KEY_FUNC = get_remote_address
