#!/usr/bin/env ruby

WIDTH = 40
HEIGHT = 6
CRT = Array.new(WIDTH * HEIGHT, ".")
crt_pos = 0

DATA.each_line.inject(1) do |x, line|
    instruction = line.strip

    case instruction
    when /addx (-?\d+)/
        num = $1.to_i

        2.times do
            CRT[crt_pos] = [x, x-1, x+1].include?(crt_pos % WIDTH) ? "#" : "."

            crt_pos += 1
        end

        x += num
    else
        CRT[crt_pos] = [x, x-1, x+1].include?(crt_pos % WIDTH) ? "#" : "."

        crt_pos += 1
    end

    x
end

CRT.each_slice(40) do |crt_line|
    puts crt_line.join("")
end

__END__
addx 1
addx 4
addx 1
noop
addx 4
noop
noop
noop
noop
addx 4
addx 1
addx 5
noop
noop
addx 5
addx -1
addx 3
addx 3
addx 1
noop
noop
addx 4
addx 1
noop
addx -38
addx 10
noop
noop
noop
noop
noop
addx 2
addx 3
addx -2
addx 2
addx 5
addx 2
addx -13
addx 14
addx 2
noop
noop
addx -9
addx 19
addx -2
addx 2
addx -9
addx -24
addx 1
addx 6
noop
noop
addx -2
addx 5
noop
noop
addx -12
addx 15
noop
addx 3
addx 3
addx 1
addx 5
noop
noop
noop
noop
addx -24
addx 29
addx 5
noop
noop
addx -37
noop
addx 26
noop
noop
addx -18
addx 28
addx -24
addx 17
addx -16
addx 4
noop
addx 5
addx -2
addx 5
addx 2
addx -18
addx 24
noop
addx -2
addx 10
addx -6
addx -12
addx -23
noop
addx 41
addx -34
addx 30
addx -25
noop
addx 16
addx -15
addx 2
addx -12
addx 19
addx 3
noop
addx 2
addx -27
addx 36
addx -6
noop
noop
addx 7
addx -33
addx -4
noop
addx 24
noop
addx -17
addx 1
noop
addx 4
addx 1
addx 14
addx -12
addx -14
addx 21
noop
noop
noop
addx 5
addx -17
addx 1
addx 20
addx 2
noop
addx 2
noop
noop
noop
noop
noop
