package policy

default allow = false

allow {
  input.user.roles[_] == "admin"
}

allow {
  startswith(input.request.path, "/public")
  input.request.method == "GET"
}
