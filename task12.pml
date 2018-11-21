#define SOURCE 0
#define TARGET 1

bit m1 = TARGET;
bit m2 = SOURCE;
bit m3 = TARGET;

byte c = 3;

inline move12() {
  m1 = 1 - m1;
  m2 = 1 - m2;
  c = c - 1;
  printf("12");
}

inline move13() {
  m1 = 1 - m1;
  m3 = 1 - m3;
  c = c - 1;
  printf("13");
}

inline move23() {
  m2 = 1 - m2;
  m3 = 1 - m3;
  c = c - 1;
  printf("23");
}

inline canMove() {
  c > 0;
}

active proctype man() {
  do
  :: atomic {canMove() -> move12()}
  :: atomic {canMove() -> move23()}
  :: atomic {canMove() -> move13()}
  od
}

ltl goalNeverReached{!<> (m1==m2 && m2==m3 && m3==m1)}
