# adapted from https://github.com/imgproxy/imgproxy/blob/master/examples/signature.rb
require "openssl"
require "base64"
require 'launchy'

key = ["dca562cbe2b96cc3bd79162fd5b0122f7394e3593ef8a1447da8959448fa4075"].pack("H*")
salt = ["cd4842017110a9412ddaa36d13dce193edd76a2ed4f46e91855570003468b148"].pack("H*")

url = ARGV[0]

encoded_url = Base64.urlsafe_encode64(url).tr("=", "").scan(/.{1,16}/).join("/")

path = "/#{encoded_url}"

digest = OpenSSL::Digest.new("sha256")
hmac = Base64.urlsafe_encode64(OpenSSL::HMAC.digest(digest, key, "#{salt}#{path}")).tr("=", "")

signed_path = "/#{hmac}#{path}"

puts "Opening http://localhost:8080#{signed_path} in a web browser"
Launchy.open("http://localhost:8080#{signed_path}")
