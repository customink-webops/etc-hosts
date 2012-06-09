HOSTS_IP_REGEX = /\A(?:25[0-5]|(?:2[0-4]|1\d|[1-9])?\d)(?:\.(?:25[0-5]|(?:2[0-4]|1\d|[1-9])?\d)){3}\z/

attribute :name, :kind_of => String, :name_attribute => true
attribute :ip, :regex => HOSTS_IP_REGEX
attribute :hostnames, :kind_of => [ String, Array ]

actions :create

def initialize(*args)
  super
  @action = :create
end
