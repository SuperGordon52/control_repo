class profile::agent_nodes  {
  include dockeragent
  dockeragent::node {'web.puppet.vm.us-central1-a.c.axiomatic-sonar-285617.internal':}
  dockeragent::node {'db.puppet.vm.us-central1-a.c.axiomatic-sonar-285617.internal':}
}
