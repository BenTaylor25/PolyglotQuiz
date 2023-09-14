const std = @import("std");
const stdout = std.io.getStdOut().writer();
const stdin = std.io.getStdIn().reader();

const QuestionAnswer = struct {
    q: []const u8,
    a: []const u8
};

pub fn main() !void {

    const questions = [_]QuestionAnswer {
        QuestionAnswer {
            .q = "qstn",
            .a = "ansr"
        },
        QuestionAnswer {
            .q = "qstn 2",
            .a = "ansr 2"
        }
    };

    var incorrect_guesses: i32 = 0;

    for (questions) |question| {
        try stdout.print("{s}\n", .{question.q});

        var guess = "";   // doesn't like this combined with line 35...

        // while (guess != "skip" and guess != question.a) {
        while (!std.mem.eql(u8, guess, "skip") and !std.mem.eql(u8, guess, question.a)) {
            try stdout.print("> ", .{});

            var buf: [100]u8 = undefined;
            guess = try stdin.readUntilDelimiterOrEof(buf[0..], '\n') orelse "";

            // fix string comparison - std.mem.eql()?
            // if (guess == "skip") {
            if (std.mem.eql(u8, guess, "skip")) {
                incorrect_guesses += 10;
                stdout.print("{s}\n", .{question.a});
            // } else if (guess != question.a) {
            } else if (!std.mem.eql(u8, guess, question.a)) {
                incorrect_guesses += 1;
            } else {
                stdout.print("Correct\n", .{});
            }
        }
    }

    try stdout.print("Incorrect Guesses: {s}\n", .{incorrect_guesses});
}
