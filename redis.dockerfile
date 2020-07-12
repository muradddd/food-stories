FROM redis:4.0.11

ENV REDIS_PASSWORD 7eSOXdGjlm1t0oGZ

CMD ["sh", "-c", "exec redis-server --requirepass \"$REDIS_PASSWORD\""]