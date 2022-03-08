in_names = "A,B,C"
out_names = "D,E"


def eq(inputs):
    A, B, C = inputs
    D = (
        A
        and not ((B or C) and (not (B) or not (C)))
        and ((not (A) and B) or (not (A) and C))
        and (not (B) or not (C))
    )
    E = not ((not (A) and not (B)) or not (not(A) or not (B) and C)) or (A and B)
    return [D,E]    
