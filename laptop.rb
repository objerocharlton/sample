#!/usr/bin//env ruby

class Laptop
	def play_game
		self.read_cd
	end
	private
		def read_cd
			puts "reading a cd"
		end
end
a = Laptop.new
a.play_game


