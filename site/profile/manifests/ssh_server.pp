class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDFJeFxvlaGGF0GjnFJU/gdoKV2sSIrJ2IYp1dJUNFdn6pVY2kRs4YAuzT1YfCfld7qfv7RgygwpiEO7ETVQp7yr7y2b7t/7ZxV3IsVt5tyZnP43etXkdQ6w246gxoGZsVI52Z+cGtCcHSY8HjUceeJ769GhTel2eYHFxN7U8yi6EeGDH88POCbMuyhYUkklrp8IBIfLkBf/2RHdsMIALYzwgzyxrTjh2npsCxGBxntF/Uco9IGxGtzjP5pWGgS2AVgBQihM/m97h/J5LskB9k93YM+b65s6zLUdx3kKtGbiOM4vQn4KUlSAVrgQzA57Rx3F5HTrB03g5PqSZgBc+jv',
	}  
}
