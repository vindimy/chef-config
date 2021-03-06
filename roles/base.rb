name "base"
description "Base role applied to all nodes."
run_list(
  "recipe[zsh]",
  "recipe[users::sysadmins]",
  "recipe[sudo]",
  "recipe[apt]",
  "recipe[git]",
  "recipe[build-essential]",
  "recipe[python]"
)

override_attributes(
  :authorization => {
    :sudo => {
      :users => ["ubuntu"],
      :passwordless => true
    }
  }
)

