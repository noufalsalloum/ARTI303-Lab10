% Task 2
% Run: ?- login.
% Enter username/password

user(nouf, '1234').
user(student, 'pass123').
user(admin, 'admin2026').

login :-
    login_attempt(3).

login_attempt(AttemptsLeft) :-
    write('Username: '),
    read(Username),
    write('Password: '),
    read(Password),
    (   user(Username, Password)
    ->  writeln('Login Successful')
    ;   writeln('Login Unsuccessful'),
        Remaining is AttemptsLeft - 1,
        (   Remaining > 0
        ->  login_attempt(Remaining)
        ;   writeln('Sorry, you exceeded the maximum number of attempts, try again later.')
        )
    ).

% Successful Login
% ?- login.
% Username: nouf.
% Password: '1234'.
% Login Successful

% Incorrect Password, Then Correct
% ?- login.
% Username: nouf.
% Password: 1234.
% Login Unsuccessful
% Username: nouf.
% Password: '1234'.
% Login Successful

% Three Failed Attempts
% ?- login.
% Username: lama.
% Password: 5678.
% Login Unsuccessful
% Username: nouf.
% Password: 1111.
% Login Unsuccessful
% Username: student.
% Password: '1234'.
% Login Unsuccessful
% Sorry, you exceeded the maximum number of attempts, try again later.
