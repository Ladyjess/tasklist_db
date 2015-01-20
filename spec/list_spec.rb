require('rspec')
require('pg')
require('list')

DB = PG.connect({:dbname => 'to_do_test'})

RSpec.configure do |config|
  config.after(:each) do
    DB.exec("DELETE FROM *;")
  end
end

describe("#List") do
  describe(".all") do
    it("startes off with no lists") do
      expect(List.all()).to(eq([]))
    end
  end  
