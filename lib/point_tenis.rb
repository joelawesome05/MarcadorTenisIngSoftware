class Point_Tenis

	def initialize
		@scorePlayer1 = 0
		@scorePlayer2 = 0
	end

	def updateScore(pointTo)
		if pointTo == "pointToPlayer1"
			if @scorePlayer1 <= 15
				@scorePlayer1 += 15
			elsif @scorePlayer1 == 30
					@scorePlayer1 = 40
				else
					if @scorePlayer2 == 40
						@scorePlayer1 = 50
					else
						if @scorePlayer2 == 50
							@scorePlayer2 = 40
						else
							@scorePlayer1 = 100
						end 	
					end
			end
		elsif pointTo == "pointToPlayer2"
			
			if @scorePlayer2 <= 15
				@scorePlayer2 += 15
			elsif @scorePlayer2 == 30
					@scorePlayer2 = 40
				else
					if @scorePlayer1 == 40
						@scorePlayer2 = 50
					else
						if @scorePlayer1 == 50
							@scorePlayer1 = 40
						else
							@scorePlayer2 = 100
						end 
					end
			end
		end

	end

	def showScore()
		resp = ""
		if @scorePlayer1 == @scorePlayer2
			if @scorePlayer1 == 40
				resp = "Deuce"
			else
				resp = @scorePlayer1.to_s + " iguales"
			end
		elsif @scorePlayer1 == 100
			resp = "Game Player1"
		elsif @scorePlayer2 == 100
			resp = "Game Player2"
		elsif @scorePlayer1 == 50
			resp = "Ventaja for Player1"
		elsif @scorePlayer2 == 50
			resp = "Ventaja for Player2"
		else	
			resp = @scorePlayer1.to_s + " " + @scorePlayer2.to_s
		end
		return resp
	end


end
