import io:*
import str:*
import vec:*
import set:*

fun main(argc: int, argv: **char): int {
    println(read_file(str(argv[1])))
    var a = read_file(str(argv[1])).lines().filter(fun(line: str): bool {
        return line != "";
    });
    for (var i = 0; i < a.size; i++;) {
        for (var j = i + 1; j < a.size; j++;) {
            var diff = 0
            for (var k = 0; k < a[i].length(); k++;)
                if (a[i][k] != a[j][k])
                    diff++
            if diff == 1 {
                var res = str()
                for (var k = 0; k < a[i].length(); k++;)
                    if (a[i][k] == a[j][k])
                        res += a[i][k]
                println(res)
                return 0
            }
        }
    }
    return 1
}
