module Dino
  module Components
    class Vibrator < BaseComponent

      def stop
        output 0
      end

      def pulsate(number_of_times, strength = 1)
        number_of_times.times do |index|
          vibrate(strength)
          stop
          sleep 0.5
        end
      end

      private

      def output(strength)
        analog_write(self.pin, (strength * 255).to_i)
      end

      def vibrate(strength = 1)
        strength = [strength, 1].min
        3.times do |index|
         output(strength)
         sleep 0.1
        end
      end
    end
  end
end