def assert(exp)
	raise "Falha de asserção" if !exp
end

begin
	assert 1 == 0
rescue StandardError => e
	raise e if e.message != "Falha de asserção"
end
