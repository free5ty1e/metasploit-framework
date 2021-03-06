##
# This module requires Metasploit: http://metasploit.com/download
# Current source: https://github.com/rapid7/metasploit-framework
##


require 'msf/core'


class MetasploitModule < Msf::Auxiliary

  include Msf::Auxiliary::Scanner

  def initialize
    super(
      'Name'        => 'Simple Recon Module Tester',
      'Description' => 'Simple Recon Module Tester',
      'Author'      => 'hdm',
      'License'     => MSF_LICENSE
    )

    register_options(
      [
        Opt::RPORT,
      ], self.class)

  end

  def run_range(range)
    print_status("Working on range #{range}")
    rw = Rex::Socket::RangeWalker.new(range)
    print_status("RangeWalker: #{rw.inspect}")
  end


end
