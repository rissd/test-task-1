job "nginx" {
  datacenters = ["dc1"]

  group "nginx" {
    count = 1

    task "nginx" {
      driver = "docker"

      config {
        image = "nginx:latest"
        port_map {
          http = 80
        }
        command = "sh"
        args = ["-c", "echo 'test job done' > /usr/share/nginx/html/index.html && nginx -g 'daemon off;'"]
      }

      resources {
        network {
          port "http" {
            static = 80
          }
        }
      }
    }
  }
}