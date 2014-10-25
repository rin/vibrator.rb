require 'bundler/setup'
require 'dino'
require './components/vibrator'

OUTPUT_PIN = 9

board    = Dino::Board.new(Dino::TxRx::Serial.new)
vibrator = Dino::Components::Vibrator.new(pin: OUTPUT_PIN, board: board)

vibrator.pulsate(2, 0.3)
vibrator.pulsate(2, 1)