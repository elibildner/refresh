class CertificatePdf < Prawn::Document
	def initialize
		super
		text "Cert goes here"
	end
end