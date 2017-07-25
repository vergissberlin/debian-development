# debian-development
Debian based development / deployment docker box. Use it for example in your Concourse pipeline, or in your development context.

## Concourse

```
fly set-pipeline --target util --config pipeline.yml --pipeline docker-debian -l credentials.yml
```
