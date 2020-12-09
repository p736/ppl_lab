faculty_sub(t1,ppl).
faculty_sub(t2,ppl).
faculty_sub(t3,dsa).
faculty_sub(t4,dsa).

sub_faculty(ppl,t1).
sub_faculty(ppl,t2).
sub_faculty(dsa,t3).


div_faculty(div1,t1).
div_faculty(div1,t3).
div_faculty(div2,t2).
div_faculty(div2,t4).

student_div(s1,div1).
student_div(s2,div2).
 

div_subject(D,S):-div_faculty(D,F),sub_faculty(S,F).
student_sub(P,S):-student_div(P,D),div_faculty(D,F),faculty_sub(F,S).