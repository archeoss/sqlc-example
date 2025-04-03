data "external_schema" "gorm" {
  program = [
    "sh",
    "-c", 
    "find . -name 'schema.sql' -type f -exec cat {} \\;",
  ]
}

env "gorm" {
  src = data.external_schema.gorm.url
  dev = "docker://postgres/latest/director-dev"
  migration {
    dir = "file://migrations"
  }
  format {
    migrate {
      diff = "{{ sql . \"  \" }}"
    }
  }
}
