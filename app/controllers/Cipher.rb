require 'openssl'
require 'base64'
require 'json'
require 'digest/md5'

class Cipher

	def Encode (string)
		#public_key_file = 'public.pem';
		public_key_file = './pP.pem';

		public_key = OpenSSL::PKey::RSA.new(File.read(public_key_file))
		encrypted_string = Base64.encode64(public_key.public_encrypt(string))

		print encrypted_string, "\n"
	end

	def Decode (string)
		#private_key_file = 'essenceid.pem';
		@private_key_file = '/home/ubuntu/api-one/pS.pem';
		@password = 'aPpOlLyOnsaki8*jA123rex'

		@encrypted_string = string

		@private_key =
		  OpenSSL::PKey::RSA.new(File.read(@private_key_file),@password)

		@string =
		  @private_key.private_decrypt(Base64.decode64(@encrypted_string))

		return @string
	end
end