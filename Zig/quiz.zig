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

        //var guess = "";   // doesn't like this combined with line 35...

        // while (!std.mem.eql(u8, guess, "skip") and !std.mem.eql(u8, guess, question.a)) {
        while (true) {
            try stdout.print("> ", .{});

            const guess = try readLine(stdin);

            // fix string comparison - std.mem.eql()?
            // if (guess == "skip") {
            if (std.mem.eql(u8, guess, "skip")) {
                incorrect_guesses += 10;
                stdout.print("{s}\n", .{question.a});
                break;
            // } else if (guess != question.a) {
            } else if (!std.mem.eql(u8, guess, question.a)) {
                incorrect_guesses += 1;
            } else {
                stdout.print("Correct\n", .{});
                break;
            }
        }
    }

    try stdout.print("Incorrect Guesses: {s}\n", .{incorrect_guesses});
}

// A combination of minimal online resources and
// minimal time is making Zig a lot more difficult
// than the other languages in this repo.
// Zig is a very interesting language, and I would
// like to revisit this challenge some time in the
// near future.

fn readLine(reader: *std.io.File.Reader) ![]const u8 {
    var buffer: [256]u8 = undefined;
    var line: []const u8 = undefined;

    while (true) {
        const bytesRead = try reader.read(buffer[0..]);

        if (bytesRead == 0) {
            break;
        }

        for (buffer[0..bytesRead]) |byte| {
            if (byte == '\n' || byte == '\r') {
                line = buffer[0..];
                return line;
            }
        });
    }

    return line;
}
