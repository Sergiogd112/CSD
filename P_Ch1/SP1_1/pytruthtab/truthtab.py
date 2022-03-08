from eq import *


def main():
    inn = len(in_names.split(","))
    maxn = 2 ** inn - 1
    inputs = [0] * inn
    header = (
        "n ".rjust(len(str(maxn)) + 1, " ")
        + "|"
        + in_names.replace(",", "|")
        + "||"
        + out_names.replace(",", "|")
    )
    print(header)
    print("".join(["+" if x == "|" else "-" for x in header]))
    for i in range(maxn + 1):
        n = i
        for j in range(len(inputs)):
            inputs[j] = n % 2
            n = n // 2
        outputs = eq(inputs[::-1])
        row = (
            (str(i) + " ").rjust(len(str(maxn)) + 1, " ")
            + "|"
            + "|".join(
                [
                    str(x).center(len(name), " ")
                    for name, x in zip(in_names.split(","), inputs[::-1])
                ]
            )
            + "||"
            + "|".join(
                [
                    str(int(x)).center(len(name), " ")
                    for name, x in zip(out_names.split(","), outputs)
                ]
            )
        )
        print(row)


if __name__ == "__main__":
    main()
