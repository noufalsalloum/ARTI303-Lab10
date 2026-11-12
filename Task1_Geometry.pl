% Task 1


square(Side, Area, Perimeter) :-
    number(Side), Side > 0,
    Area is Side * Side,
    Perimeter is 4 * Side.

rectangle(Width, Height, Area, Perimeter) :-
    number(Width), number(Height), Width > 0, Height > 0,
    Area is Width * Height,
    Perimeter is 2 * (Width + Height).

triangle(Base, Height, SideA, SideB, SideC, Area, Perimeter) :-
    number(Base), number(Height), number(SideA), number(SideB), number(SideC),
    Base > 0, Height > 0, SideA > 0, SideB > 0, SideC > 0,
    SideA + SideB > SideC,
    SideA + SideC > SideB,
    SideB + SideC > SideA,
    Area is 0.5 * Base * Height,
    Perimeter is SideA + SideB + SideC.

% Example queries:
% ?- square(5, Area, Perimeter).
% Area = 25,
% Perimeter = 20.
% ?- rectangle(4, 6, Area, Perimeter).
% Area = 24,
% Perimeter = 20.
% ?- triangle(3, 4, 3, 4, 5, Area, Perimeter).
% Area = 6.0,
% Perimeter = 12.