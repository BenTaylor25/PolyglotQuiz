const std = @import("std");
const stdout = std.io.getStdOut().writer();

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

    for (questions) |question| {
        try stdout.print("{s}\n", .{question.q});
        try stdout.print("{s}\n\n", .{question.a});
    }
}
