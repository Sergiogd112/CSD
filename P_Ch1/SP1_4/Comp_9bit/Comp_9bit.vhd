LIBRARY ieee;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY Comp_9bit IS
    PORT (
        A, B : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
        Gi, Ei, Li : IN STD_LOGIC;
        GT, EQ, LT : OUT STD_LOGIC
    );
END Comp_9bit;
ARCHITECTURE hierarchical_structure_PlanC2 OF Comp_9bit IS

    COMPONENT Comp_1bit IS
        PORT (
            A, B, Gi, Ei, Li : IN STD_LOGIC;
            GT, EQ, LT : OUT STD_LOGIC
        );
    END COMPONENT;

    SIGNAL G, E, L : STD_LOGIC_VECTOR(6 DOWNTO 0);

BEGIN

    Chip1 : Comp_1bit
    PORT MAP
    (
        A => A(0),
        B => B(0),
        Gi => Gi,
        Ei => Ei,
        Li => Li,
        GT => G(0),
        EQ => E(0),
        LT => L(0)
    );
    Chip2 : Comp_1bit
    PORT MAP
    (
        A => A(1),
        B => B(1),
        Gi => G(0),
        Ei => E(0),
        Li => L(0),
        GT => G(1),
        EQ => E(1),
        LT => L(1)
    );
    Chip2 : Comp_1bit
    PORT MAP
    (
        A => A(2),
        B => B(2),
        Gi => G(0),
        Ei => E(0),
        Li => L(0),
        GT => G(1),
        EQ => E(1),
        LT => L(1)
    );
    Chip2 : Comp_1bit
    PORT MAP
    (
        A => A(3),
        B => B(3),
        Gi => G(0),
        Ei => E(0),
        Li => L(0),
        GT => G(1),
        EQ => E(1),
        LT => L(1)
    );
    Chip2 : Comp_1bit
    PORT MAP
    (
        A => A(4),
        B => B(4),
        Gi => G(1),
        Ei => E(1),
        Li => L(1),
        GT => G(2),
        EQ => E(2),
        LT => L(2)
    );
    Chip2 : Comp_1bit
    PORT MAP
    (
        A => A(5),
        B => B(5),
        Gi => G(2),
        Ei => E(2),
        Li => L(2),
        GT => G(3),
        EQ => E(3),
        LT => L(3)
    );
    Chip2 : Comp_1bit
    PORT MAP
    (
        A => A(6),
        B => B(6),
        Gi => G(3),
        Ei => E(3),
        Li => L(3),
        GT => G(4),
        EQ => E(4),
        LT => L(4)
    );
    Chip2 : Comp_1bit
    PORT MAP
    (
        A => A(7),
        B => B(7),
        Gi => G(4),
        Ei => E(4),
        Li => L(4),
        GT => G(5),
        EQ => E(5),
        LT => L(5)
    );
    Chip2 : Comp_1bit
    PORT MAP
    (
        A => A(8),
        B => B(8),
        Gi => G(5),
        Ei => E(5),
        Li => L(5),
        GT => G(6),
        EQ => E(6),
        LT => L(6)
    );
    GT <= G(6);
    EQ <= E(6);
    LT <= L(6);
END