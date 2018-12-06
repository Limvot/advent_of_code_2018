import io:*
import str:*
import vec:*
import set:*

fun main(argc: int, argv: **char): int {
    println(read_file(str(argv[1])))
    var a = read_file(str(argv[1])).lines().filter(fun(line: str): bool {
        return line != "";
    });
    var two = 0
    var three = 0
    for (var i = 0; i < a.size; i++;) {
        var have_two = false
        var have_three = false
        var unique = from_vector(a[i].data).data
        for (var ui = 0; ui < unique.size && (!have_two || !have_three); ui++;) {
            var count = 0;
            for (var cs = 0; cs < a[i].length(); cs++;)
                if (unique[ui] == a[i][cs])
                    count++
            if count == 2 {
                have_two = true
            } else if count == 3 {
                have_three = true
            }
        }
        if (have_two)
            two++
        if (have_three)
            three++
    }
    println(two * three)
    return 0
}
