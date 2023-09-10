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

    var incorrect_guesses = 0;

    for (questions) |question| {
        try stdout.print("{s}\n", .{question.q});

        var guess = "";

        while (guess != "skip" and guess != question.a) {
            try stdout.print("> ");

            var buf: [100]u8 = undefined;
            guess = try stdin.readUntilDelimiterOrEof(buf[0..], '\n') orelse "";

            // fix string comparison - std.mem.eql()?
            if (guess == "skip") {
                incorrect_guesses += 10;
                stdout.print("{s}\n", .{question.a});
            } else if (guess != question.a) {
                incorrect_guesses += 1;
            } else {
                stdout.print("Correct\n", .{});
            }
        }
    }

    stdout.print("Incorrect Guesses: {i}", incorrect_guesses);
}
