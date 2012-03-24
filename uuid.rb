#
# Library for generating UUIDs.
# Author: Joe Tyson <pqse@acm.org>
# Date: March 24, 2012
#

require 'java'


#
# This module contains functions used for generating random UUIDs in
# various useful formats. It utilizes the powerful and simple *java*
# implementations instead of using ruby's verbose and superfluous UUID
# library.
#
module UUID
  
  # Returns a random UUID in compact format.
  #
  # Example:
  #   uuid = generate()
  #
  def generate
    uuid = java.util.UUID.randomUUID.toString.gsub('-', '')
  end

  # Returns a random UUID in a binary format.
  #
  # Example:
  #   bin_uuid = generate_binary()
  #
  def generate_binary
    generate.to_a.pack('H*')
  end
end
