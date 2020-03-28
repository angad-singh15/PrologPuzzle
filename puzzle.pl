%Name - Angad Singh
%Program 3

%Predicate to create the list of Students
students(0, []) :- !.
students(N, [(_Major,_Car,_Team,_Music,_Drink)|T]) :- N1 is N-1, students(N1,T).

%Helper function for expressing the adjacent relation in a list
student(1, [H|_], H) :- !.
student(N, [_|T], R) :- N1 is N-1, student(N1, T, R).

%The computer science student lives in the middle of the corridor
fact1(Students) :- student(3, Students, (computerscience,_,_,_,_)).

%The history major is a jazz fan
fact2([(history,_,_,jazz,_)|_]).
fact2([_|T]) :- fact2(T).

%The Yankees fan drives a Toyota
fact3([(_,toyota,yankees,_,_)|_]).
fact3([_|T]) :- fact3(T).

%The accounting major drinks Coke
fact4([(accounting,_,_,_,coke)|_]).
fact4([_|T]) :- fact4(T).

%The engineering major drinks coffee
fact5([(engineering,_,_,_,coffee)|_]).
fact5([_|T]) :- fact5(T).

%The computer science student and history student are neighbors
fact6([(computerscience,_,_,_,_),(history,_,_,_,_)|_]).
fact6([(history,_,_,_,_),(computerscience,_,_,_,_)|_]).
fact6([_|T]) :- fact6(T).

%The student at the far end of the hall likes classical music
fact7(Students) :- student(5, Students, (_,_,_,classical,_)).

%The tea drinker drives a Tesla
fact8([(_,tesla,_,_,tea)|_]).
fact8([_|T]) :- fact8(T).

%The classical music fan lives next to the jazz listener
fact9([(_,_,_,jazz,_),(_,_,_,classical,_)|_]).
fact9([(_,_,_,classical,_),(_,_,_,jazz,_)|_]).
fact9([_|T]) :- fact9(T).

%The English major does not live in either of the first two rooms
fact10(Students) :- student(3, Students, (english,_,_,classical,_)); 
student(4, Students, (english,_,_,_,_)); 
student(5, Students, (english,_,_,_,_)).

%The Royals fan drives a Tesla
fact11([(_,tesla,royals,_,_)|_]).
fact11([_|T]) :- fact11(T).

%The Cubs fan listens to jazz.
fact12([(_,_,cubs,jazz,_)|_]).
fact12([_|T]) :- fact12(T).

%The engineering major follows the Chiefs
fact13([(engineering,_,chiefs,_,_)|_]).
fact13([_|T]) :- fact13(T).

%The first room is the home of the Broncos fan
fact14(Students) :- student(1, Students, (_,_,broncos,_,_)).

%The Coke drinker drives a Nissan
fact15([(_,nissan,_,_,coke)|_]).
fact15([_|T]) :- fact15(T).

%The country music fan and the techno fan are neighbors
fact16([(_,_,_,country,_),(_,_,_,techno,_)|_]).
fact16([(_,_,_,techno,_),(_,_,_,country,_)|_]).
fact16([_|T]) :- fact16(T).

%The accounting major lives in the first room
fact17(Students) :- student(1, Students, (accounting,_,_,_,_)).

%The fans of the 2 Kansas City teams (Chiefs and Royals) are neighbors
fact18([(_,_,chiefs,_,_),(_,_,royals,_,_)|_]).
fact18([(_,_,royals,_,_),(_,_,chiefs,_,_)|_]).
fact18([_|T]) :- fact18(T).

%The accounting major listens to rock music
fact19([(accounting,_,_,rock,_)|_]).
fact19([_|T]) :- fact19(T).

%The Yankees fan drinks milk
fact20([(_,_,yankees,_,milk)|_]).
fact20([_|T]) :- fact20(T).

%The Chevy driver listens to country music
fact21([(_,chevy,_,country,_)|_]).
fact21([_|T]) :- fact21(T).

%The jazz fan drives a Ford.
fact22([(_,ford,_,jazz,_)|_]).
fact22([_|T]) :- fact22(T).

%What music does the computer-science student listen to, and what does the English major drink?
question1([(computerscience,_,_,_,_)|_]).
question1([_|T]) :- question1(T).

question2([(english,_,_,_,_)|_]).
question2([_|T]) :- question2(T).

%Assign water to student who does not have a drink
fact23([(_,_,_,_,water)|_]).
fact23([_|T]) :- fact23(T).

%The main predicate for solving the puzzle
solvePuzzle(Students) :-
  students(5, Students),
  fact1(Students),
  fact2(Students),
  fact3(Students),
  fact4(Students),
  fact5(Students),
  fact6(Students),
  fact7(Students),
  fact8(Students),
  fact9(Students),
  fact10(Students),
  fact11(Students),
  fact12(Students),
  fact13(Students),
  fact14(Students),
  fact15(Students),
  fact16(Students),
  fact17(Students),
  fact18(Students),
  fact19(Students),
  fact20(Students),
  fact21(Students),
  fact22(Students),
  fact23(Students),
  question1(Students),
  question2(Students).


