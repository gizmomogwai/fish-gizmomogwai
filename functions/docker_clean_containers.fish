function docker_clean_containers -d "cleanup containers"
  docker ps --no-trunc -aqf "status=exited" | xargs docker rm
end
