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
      }

      resources {
        network {
          port "http" {
            static = 80
          }
        }
      }

      template {
        data =  "test job done"
        destination = "/usr/share/nginx/html/index.html"
      }
    }
  }
}
