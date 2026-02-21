import redis

r = redis.Redis(host='localhost', port=6379, db=0)

def cache_data(key, value):
    r.set(key, value)

def get_cached_data(key):
    return r.get(key)