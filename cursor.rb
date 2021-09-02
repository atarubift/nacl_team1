class Cursor < Sprite
    def initialize
        self.image = Image.load("images/shooter.png")
        f = 4000
        @sound = SoundEffect.new(20, WAVE_TRI) do
          f = f - 120
          [f, 15]
        end
    end

    def move       
        self.x = Input.mouse_pos_x
        self.y = Input.mouse_pos_y 

        Window.draw(self.x, self.y, self.image) 
        
        if Input.mouse_down?(M_LBUTTON) then   
            @sound.play
        end
    end
end
