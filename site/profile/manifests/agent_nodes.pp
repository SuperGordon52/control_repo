class profile::agent_nodes  {
  include dockeragent
  dockeragent::node {'web.puppet.vm.com':}
  dockeragent::node {'db.puppet.vm.com':}
}
