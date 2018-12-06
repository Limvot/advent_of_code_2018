import io:*
import str:*
import vec:*
import set:*

fun main(argc: int, argv: **char): int {
    println(read_file(str(argv[1])))
    var a = read_file(str(argv[1])).lines().filter(fun(line: str): bool {
        return line != "";
    });
    var board.construct(1000*1000): vec<int>
    for (var i = 0; i < 1000*1000; i++;) {
        board.add(0)
    }
    for (var i = 0; i < a.size; i++;) {
        var c = a[i].split("@ ")[1].split(",")
        var sc = string_to_num<int>(c[0])
        c = c[1].split(": ")
        var sr = string_to_num<int>(c[0])
        c = c[1].split("x")
        var lc = string_to_num<int>(c[0])
        var lr = string_to_num<int>(c[1].split('\n')[0])

        for (var r = sr; r < sr + lr; r++;)
            for (var c = sc; c < sc + lc; c++;)
                board[r*1000 + c]++
    }
    var num_over = 0
    for (var i = 0; i < board.size; i++;)
        if (board[i] > 1)
            num_over++
    println(num_over)
    return 1
}
