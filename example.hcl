job "example" {
  datacenters = ["dc1"]

  group "example" {
    restart {
      attempts = 0
    }

    task "example" {
      driver = "docker"

      config {
        image = "alpine:latest"
        command = "sh"
        args = ["-c", "echo 'test job done'"]
      }

      resources {
        cpu    = 500
        memory = 256
      }
    }
  }
}
