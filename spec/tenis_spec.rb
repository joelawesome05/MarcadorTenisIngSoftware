require './lib/point_tenis.rb'

describe Point_Tenis do

	before(:each) do
		@game = Point_Tenis.new()
	end
	
	it "shoud show 0 iguales" do
		expect(@game.showScore()).to eq('0 iguales')
	end

	it "shoud show 0 15" do
		@game.updateScore("pointToPlayer2")
		expect(@game.showScore()).to eq('0 15')
	end

	it "shoud show 15 0" do
		@game.updateScore("pointToPlayer1")
		expect(@game.showScore()).to eq('15 0')
	end

	it "shoud show 15 30" do
		@game.updateScore("pointToPlayer2")
		@game.updateScore("pointToPlayer2")
		@game.updateScore("pointToPlayer1")
		expect(@game.showScore()).to eq('15 30')
	end

	it "shoud show 15 40" do
		@game.updateScore("pointToPlayer2")
		@game.updateScore("pointToPlayer2")
		@game.updateScore("pointToPlayer1")
		@game.updateScore("pointToPlayer2")
		expect(@game.showScore()).to eq('15 40')
	end

	it "shoud show 40 0" do
		@game.updateScore("pointToPlayer1")
		@game.updateScore("pointToPlayer1")
		@game.updateScore("pointToPlayer1")
		expect(@game.showScore()).to eq('40 0')
	end

	it "shoud show Game Player1" do
		@game.updateScore("pointToPlayer1")
		@game.updateScore("pointToPlayer1")
		@game.updateScore("pointToPlayer2")
		@game.updateScore("pointToPlayer1")
		@game.updateScore("pointToPlayer1")
		expect(@game.showScore()).to eq('Game Player1')
	end

	it "shoud show Game Player2" do
		@game.updateScore("pointToPlayer2")
		@game.updateScore("pointToPlayer2")
		@game.updateScore("pointToPlayer1")
		@game.updateScore("pointToPlayer2")
		@game.updateScore("pointToPlayer2")
		expect(@game.showScore()).to eq('Game Player2')
	end


	it "shoud show Deuce" do
		@game.updateScore("pointToPlayer2")
		@game.updateScore("pointToPlayer2")
		@game.updateScore("pointToPlayer1")
		@game.updateScore("pointToPlayer2")
		@game.updateScore("pointToPlayer1")
		@game.updateScore("pointToPlayer1")
		expect(@game.showScore()).to eq('Deuce')
	end

	it "shoud show Ventaja for Player1" do
		@game.updateScore("pointToPlayer2")
		@game.updateScore("pointToPlayer2")
		@game.updateScore("pointToPlayer1")
		@game.updateScore("pointToPlayer2")
		@game.updateScore("pointToPlayer1")
		@game.updateScore("pointToPlayer1")
		@game.updateScore("pointToPlayer2")
		@game.updateScore("pointToPlayer1")
		@game.updateScore("pointToPlayer1")
		@game.updateScore("pointToPlayer2")
		@game.updateScore("pointToPlayer2")
		expect(@game.showScore()).to eq('Ventaja for Player2')
	end
	

	it "shoud show Ventaja for Player2" do
		@game.updateScore("pointToPlayer2")
		@game.updateScore("pointToPlayer2")
		@game.updateScore("pointToPlayer1")
		@game.updateScore("pointToPlayer2")
		@game.updateScore("pointToPlayer1")
		@game.updateScore("pointToPlayer1")
		@game.updateScore("pointToPlayer2")
		@game.updateScore("pointToPlayer1")
		@game.updateScore("pointToPlayer1")
		expect(@game.showScore()).to eq('Ventaja for Player1')
	end
	
end