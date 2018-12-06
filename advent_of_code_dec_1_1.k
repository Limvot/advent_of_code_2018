import io:*
import str:*

fun main(argc: int, argv: **char): int {
    println(read_file(str(argv[1])).lines().reduce(fun(line: str, curr: int): int {
        if line.length() <= 1 {
            return curr
        } else if line[0] == '+' {
            return curr + string_to_num<int>(line.slice(1,-1));
        } else {
            return curr + string_to_num<int>(line);
        }
    }, 0));
    return 0
}
