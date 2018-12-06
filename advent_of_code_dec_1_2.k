import io:*
import str:*
import vec:*

fun main(argc: int, argv: **char): int {
    var a = read_file(str(argv[1])).lines().slice(0,-2).map(fun(line: str): int {
        if line.length() <= 1 {
            return 0
        } else if line[0] == '+' {
            return string_to_num<int>(line.slice(1,-1));
        } else {
            return string_to_num<int>(line);
        }
    });
    var current = 0
    var past = vec<int>()
    for (var i = 0; !past.any_true(fun(c: int):bool return c == current;); i++;) {
        past.add(current)
        current += a[i % a.size]
    }
    println(current)
    return 0
}
