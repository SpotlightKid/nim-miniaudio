import std/[math, rdstdin, strformat]
import miniaudio

var engine = AudioEngine.new()

var
  sound = loadSoundFromFile(engine, "test.wav")

sound.looping = true
sound.start()

var volume: float32

for i in 1 .. 10:
  volume = i/10
  engine.volume = volume

  echo fmt"Current Engine Volume: {round(volume*100)}%"

  discard readLineFromStdin("Press Enter to continue...")
