#
# Top Level Manfest: site.pp

node default {
  if ($::role) {
    include "${::role}"
  } else {
    warning('There is no "role" parameter specified!!')
  }
}
