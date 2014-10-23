class puppet_dev {


  include virtualbox
  include packer
  include atom

  class { 'vagrant':
    version     => '1.6.5',
    completion  => true,
  }

}
