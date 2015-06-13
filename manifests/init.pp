class root (
  $src = "/home/eulisse/src",
  $prefix = "/home/eulisse/sw/root",
  $root_repo = "root-mirror/root"
)
{
  include protobuilder
  protobuilder::build{"root":
    repo => "root-mirror/root",
    ref => "v5-34-30",
    prefix => $prefix
  }
}
