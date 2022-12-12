#!/usr/bin/ruby

ROUNDS = 20
WORRY_LEVEL_DIVISOR = 3

class Monkey
    def initialize(items, operation, test, true_monkey_idx, false_monkey_idx)
        @items = items
        @operation = operation
        @test = test
        @true_monkey_idx = true_monkey_idx
        @false_monkey_idx = false_monkey_idx
        @items_inspected = 0
    end

    attr_reader :items, :operation, :test, :true_monkey_idx, :false_monkey_idx, :items_inspected

    def increment_items_inspected
        @items_inspected += 1
    end

    def clear_items!
        @items = []
    end
end

monkeys = [
    Monkey.new(
        [56, 52, 58, 96, 70, 75, 72],
        ->(old) { old * 17 },
        ->(item) { item % 11 == 0 },
        2,
        3,
    ),
    Monkey.new(
        [75, 58, 86, 80, 55, 81],
        ->(old) { old + 7 },
        ->(item) { item % 3 == 0 },
        6,
        5,
    ),
    Monkey.new(
        [73, 68, 73, 90],
        ->(old) { old * old },
        ->(item) { item % 5 == 0 },
        1,
        7,
    ),
    Monkey.new(
        [72, 89, 55, 51, 59],
        ->(old) { old + 1 },
        ->(item) { item % 7 == 0 },
        2,
        7,
    ),
    Monkey.new(
        [76, 76, 91],
        ->(old) { old * 3 },
        ->(item) { item % 19 == 0 },
        0,
        3,
    ),
    Monkey.new(
        [88],
        ->(old) { old + 4 },
        ->(item) { item % 2 == 0 },
        6,
        4,
    ),
    Monkey.new(
        [64, 63, 56, 50, 77, 55, 55, 86],
        ->(old) { old + 8 },
        ->(item) { item % 13 == 0 },
        4,
        0,
    ),
    Monkey.new(
        [79, 58],
        ->(old) { old + 6 },
        ->(item) { item % 17 == 0 },
        1,
        5,
    ),
]

ROUNDS.times do
    monkeys.each do |monkey|
        monkey.items.each_with_index do |item, idx|
            monkey.increment_items_inspected
            new_worry_level = (monkey.operation.call(item) / WORRY_LEVEL_DIVISOR).floor
            receiver_idx = monkey.test.call(new_worry_level) ?
                monkey.true_monkey_idx : monkey.false_monkey_idx

            monkeys[receiver_idx].items.push(new_worry_level)
        end

        monkey.clear_items!
    end
end

ordered_monkey_counts = monkeys.map {|m| m.items_inspected }.sort.reverse

puts ordered_monkey_counts[0] * ordered_monkey_counts[1]
