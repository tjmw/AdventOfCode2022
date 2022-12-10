#!/usr/bin/env ruby

require 'pp'

full_overlap_count = DATA.each_line.inject(0) do |total, line|
    ranges = line.split(",").map { |r|
        r.split("-").then { |start_and_end|
            start_and_end.first.to_i.upto(start_and_end.last.to_i).to_a
        }
    }

    total += ranges.first.intersect?(ranges.last) ? 1 : 0
end

puts full_overlap_count

__END__
7-24,8-8
2-75,37-51
47-78,20-39
53-91,34-53
13-50,14-50
93-93,20-93
74-80,48-81
30-87,27-38
6-93,7-94
56-98,12-49
10-71,3-4
87-95,55-88
27-98,52-99
4-11,11-82
4-90,4-96
3-89,4-80
4-88,6-82
69-75,70-76
6-71,5-7
91-96,8-74
52-53,2-52
9-94,10-97
14-75,63-76
3-26,3-4
40-55,39-41
17-22,4-80
62-94,15-95
37-77,6-76
21-22,22-27
3-94,93-98
92-93,12-93
80-81,6-80
53-54,54-95
45-90,44-91
12-99,21-95
36-69,35-68
30-77,61-86
24-49,23-78
40-87,40-86
36-53,53-54
11-96,55-86
31-41,40-45
8-99,11-87
15-71,70-71
5-34,8-33
2-96,2-95
31-95,22-96
47-98,48-90
48-79,48-80
46-84,45-81
61-96,85-97
15-82,16-84
23-54,51-80
17-66,17-67
18-95,16-16
6-22,21-21
74-78,74-77
90-99,91-94
1-34,7-78
72-72,9-73
80-80,79-97
71-80,77-81
61-62,59-61
87-89,37-88
30-40,40-81
5-21,21-69
17-37,16-18
39-74,17-98
73-98,14-96
16-95,15-17
22-62,22-63
4-4,5-63
9-11,10-92
33-51,51-96
1-99,1-51
5-76,4-76
58-84,35-89
2-25,24-38
1-8,8-95
48-79,25-78
85-98,6-86
2-24,9-25
7-60,6-60
4-6,5-28
8-95,19-98
19-19,19-82
71-83,33-87
61-77,95-95
57-58,56-59
3-53,1-98
83-83,10-84
30-93,92-93
37-73,4-95
37-96,38-99
23-89,2-20
31-90,89-90
53-59,60-60
88-92,35-92
47-84,46-98
77-91,91-91
16-53,16-54
15-94,2-15
26-54,76-79
32-78,33-78
3-4,3-17
48-54,39-40
51-99,52-98
10-10,9-56
70-75,71-71
24-43,23-35
41-83,40-83
23-76,22-23
29-60,13-37
3-31,2-38
34-48,26-47
6-96,95-95
94-99,98-98
3-84,3-84
7-62,61-62
16-93,99-99
68-84,67-92
91-91,23-92
56-81,61-82
93-94,44-95
24-52,48-58
4-81,2-5
26-73,27-74
3-95,3-96
10-84,1-60
15-17,13-17
18-88,3-89
62-73,27-72
12-12,11-97
9-27,27-43
1-62,1-1
94-95,82-92
28-89,89-90
33-36,19-24
14-41,13-42
3-92,4-91
82-88,5-84
12-47,8-12
20-99,20-96
2-76,1-75
55-92,31-90
10-80,30-81
2-76,92-94
30-30,30-80
8-61,7-61
11-94,93-99
15-82,12-16
58-63,58-77
31-76,76-83
36-87,35-61
24-94,58-93
7-52,10-35
79-79,45-79
93-97,5-56
52-53,53-58
35-90,29-35
26-48,26-49
7-97,5-7
33-63,33-78
10-12,11-88
41-41,30-41
5-90,4-91
3-3,6-86
43-90,52-90
31-57,30-32
70-89,4-71
4-96,3-5
70-70,10-71
50-71,50-51
46-47,47-89
66-87,65-87
6-85,2-6
29-91,30-90
44-79,14-47
30-73,73-73
24-93,24-89
24-88,24-44
29-32,32-32
14-30,30-30
69-78,70-70
35-48,23-27
86-86,65-86
91-92,70-91
18-78,11-17
40-40,40-75
50-52,55-81
40-51,40-52
27-64,27-65
15-94,12-15
86-99,59-92
7-11,10-69
43-98,42-99
6-88,5-89
3-82,2-83
79-98,98-98
79-79,51-79
77-77,3-77
7-8,8-89
35-54,38-58
63-85,84-84
23-94,47-79
25-26,25-93
91-91,57-91
17-94,13-17
17-50,16-51
39-67,51-68
13-93,12-94
4-96,5-5
10-87,23-87
24-93,81-96
44-59,7-45
16-76,16-61
23-52,23-53
30-56,29-56
20-20,23-75
4-95,5-94
79-97,80-97
53-91,72-93
16-50,15-17
16-99,15-16
70-84,54-83
56-89,57-89
51-72,52-72
55-57,30-56
13-14,13-70
27-51,8-79
17-78,18-92
66-95,67-94
2-57,57-58
26-93,27-64
21-26,80-94
28-41,21-25
10-21,22-56
91-94,7-92
2-94,77-99
4-29,29-30
37-37,29-38
89-89,33-89
14-88,11-14
8-80,8-8
7-7,6-68
3-98,2-20
90-90,36-90
81-96,80-87
8-9,8-98
24-79,58-79
19-96,20-95
9-93,10-68
68-90,68-89
97-98,2-97
57-71,12-58
35-87,36-43
1-4,3-19
34-45,39-46
3-95,1-1
57-58,56-57
1-97,2-2
67-72,7-73
1-85,2-85
25-80,71-79
2-91,47-91
40-84,26-84
32-93,31-32
37-96,6-85
52-94,51-95
23-94,22-96
41-41,7-42
51-83,50-83
12-94,93-93
28-29,29-98
14-22,12-24
6-96,95-96
20-20,20-92
15-34,5-15
15-23,14-22
88-90,87-94
1-88,2-88
38-57,15-38
61-77,78-86
25-28,26-28
63-69,65-68
9-46,9-45
2-33,1-82
15-38,4-16
10-95,94-94
2-85,1-86
68-68,74-74
79-86,78-87
9-99,7-59
16-50,15-17
42-74,42-73
29-47,28-29
68-90,67-68
82-97,83-99
13-96,95-99
29-91,30-92
8-96,7-9
12-93,12-93
86-99,97-97
18-75,17-97
48-90,47-90
20-87,21-94
54-71,55-70
30-65,31-64
97-97,1-87
5-82,83-94
29-70,23-72
39-48,38-48
15-95,98-99
98-98,34-99
44-95,45-94
46-70,38-69
99-99,2-97
2-3,2-86
35-79,35-35
14-92,15-93
18-19,18-98
6-15,8-98
7-88,6-87
60-95,61-61
71-82,71-83
33-43,32-43
5-39,5-63
7-92,9-92
43-43,33-42
17-88,16-94
13-53,52-53
5-26,25-87
8-74,73-74
47-53,48-53
24-26,24-26
9-57,56-56
44-63,44-89
2-89,11-42
82-82,1-82
15-88,7-60
11-94,12-93
78-88,77-89
67-78,54-68
69-91,69-89
17-33,12-13
37-37,28-38
28-96,12-91
99-99,1-98
25-60,15-26
96-96,57-96
25-28,55-95
9-52,47-50
59-93,17-94
20-80,21-21
49-73,48-73
34-77,33-76
55-55,4-56
8-56,7-55
2-99,2-97
8-70,8-69
90-99,92-98
28-72,27-73
28-84,17-75
22-32,33-33
20-94,20-93
62-77,63-97
7-27,7-26
4-83,3-98
11-56,12-97
21-73,6-21
3-99,2-99
93-97,35-76
87-99,61-86
4-99,3-98
52-93,51-93
2-80,2-79
38-88,39-73
7-86,7-85
82-95,17-83
35-67,66-66
42-42,40-43
21-93,20-88
38-74,39-88
44-93,3-97
23-58,22-58
8-27,2-26
1-87,1-88
65-66,65-92
69-69,12-69
4-76,2-77
33-52,32-33
40-88,78-89
2-95,1-96
7-87,28-55
13-93,10-92
24-38,15-60
45-59,44-59
18-93,17-93
69-90,74-91
73-73,73-73
17-90,6-91
26-75,27-71
4-80,5-80
52-92,91-94
32-53,31-53
73-89,38-84
70-90,71-89
72-93,72-93
12-79,13-68
29-76,54-77
26-66,65-67
10-10,9-78
43-94,44-99
13-48,13-14
24-25,24-64
26-84,84-85
96-98,32-93
2-90,3-3
18-69,8-76
6-99,98-99
69-88,66-97
17-96,9-18
42-75,74-74
4-5,4-54
87-97,69-87
2-3,2-99
15-86,14-16
4-97,4-98
6-63,5-7
4-97,12-94
63-70,44-69
28-93,27-93
50-54,46-54
66-68,67-76
52-65,52-68
51-77,50-91
2-49,4-95
25-86,15-25
19-20,15-84
74-85,73-85
1-10,2-8
37-79,36-55
5-76,5-75
5-79,5-80
12-45,4-12
2-2,2-99
13-76,14-76
17-17,16-54
39-59,39-39
52-52,48-52
3-91,2-48
29-72,72-72
6-46,5-46
26-38,38-38
5-97,1-99
15-29,20-28
23-29,18-33
93-93,1-94
46-90,46-55
7-48,6-39
25-86,24-26
16-83,83-83
38-69,68-94
76-79,47-86
90-96,91-98
31-81,80-81
85-86,85-87
22-89,21-90
73-98,88-99
66-67,2-67
22-91,21-87
53-89,53-90
32-32,31-47
57-88,87-98
6-91,13-83
7-95,3-7
40-48,48-49
34-74,33-73
13-63,14-64
39-85,40-85
1-85,13-87
6-12,11-56
16-93,92-92
8-42,39-78
83-83,50-83
8-59,58-59
48-76,49-77
86-86,36-86
29-45,44-49
67-92,66-92
1-53,34-76
39-99,38-70
21-80,22-22
39-54,38-99
13-96,95-98
95-97,61-92
15-66,18-67
38-97,39-83
84-85,85-97
20-41,21-40
95-97,28-96
99-99,68-96
10-64,9-65
88-96,42-89
30-99,30-98
68-97,70-96
10-10,9-96
18-26,17-27
13-58,5-40
13-66,67-75
56-60,42-61
60-94,93-93
62-69,7-95
6-81,31-97
51-80,79-80
25-43,26-43
65-65,64-86
9-9,8-83
50-81,51-81
79-79,28-80
14-84,15-15
74-91,4-90
17-89,17-34
14-14,14-94
2-34,1-33
39-73,40-72
2-90,1-89
49-71,48-50
37-87,87-87
6-73,6-74
39-96,18-98
38-59,58-58
9-90,20-89
79-80,38-80
5-30,7-90
10-84,10-83
51-75,19-74
21-22,22-98
1-37,37-38
6-92,4-6
35-37,36-82
1-93,93-93
58-95,35-68
20-85,20-81
1-85,1-93
22-50,21-51
44-84,43-87
58-63,58-79
59-60,58-59
35-47,35-36
19-28,9-19
33-59,32-60
6-97,6-81
89-90,21-90
97-99,48-89
2-67,2-68
14-97,13-97
6-29,28-28
33-71,32-71
35-89,92-93
51-97,51-87
15-30,14-20
14-97,15-97
28-43,8-52
3-99,2-55
33-37,32-38
69-69,69-83
4-76,4-50
87-91,28-58
76-80,77-95
38-57,29-58
11-90,51-76
16-89,16-88
21-77,20-68
7-86,7-7
28-94,29-95
29-30,30-97
62-77,62-91
2-97,1-96
26-33,26-27
24-64,4-63
23-58,22-59
13-59,58-58
35-38,19-94
31-98,32-97
43-82,43-84
6-92,40-75
3-3,2-81
5-92,6-97
72-85,71-86
21-21,20-26
8-8,7-98
22-63,21-23
20-73,19-21
60-71,53-61
26-68,25-27
21-93,21-94
1-80,1-2
17-65,66-87
70-92,70-91
7-73,7-72
4-81,5-82
5-85,85-86
36-37,21-36
49-97,49-97
8-70,7-71
43-85,68-91
25-95,99-99
35-86,36-36
55-55,54-66
75-84,74-85
6-38,10-39
76-83,8-76
67-69,68-87
4-96,6-96
45-88,78-89
4-42,3-43
16-95,43-87
48-67,47-97
18-98,19-99
22-71,70-70
64-89,88-99
10-17,9-61
2-3,6-73
13-79,14-78
31-69,30-69
8-66,9-94
4-95,3-96
13-92,14-91
47-59,48-60
31-75,75-95
47-96,96-96
31-54,32-75
3-68,2-74
10-11,10-75
83-96,75-84
33-33,32-78
6-64,6-65
2-97,3-97
57-77,37-77
5-52,5-52
7-31,31-76
37-37,32-42
7-92,8-91
35-83,27-82
27-90,27-90
24-46,25-46
57-78,58-58
14-67,2-34
70-81,24-82
85-85,72-86
8-29,7-13
19-90,20-89
30-90,29-98
92-95,8-93
60-99,34-96
4-4,3-46
8-85,9-84
7-53,8-38
18-97,62-99
29-80,28-38
47-50,49-75
50-70,51-51
36-54,35-37
13-71,49-91
15-83,83-84
27-27,26-93
14-28,13-27
40-57,39-57
55-57,56-92
13-56,12-57
76-99,63-89
61-61,61-65
55-92,45-67
22-81,22-82
9-69,8-10
6-96,9-96
29-73,28-67
2-54,10-70
17-95,16-94
7-84,8-84
22-23,23-23
3-99,98-98
1-80,1-81
44-55,38-44
4-83,5-97
4-87,2-47
28-93,28-74
90-91,76-89
22-80,23-81
32-93,8-60
46-57,47-57
4-69,69-69
41-41,40-70
21-61,60-61
42-48,52-91
91-92,32-59
26-38,16-16
89-94,89-93
29-62,29-61
12-31,31-77
21-74,4-21
1-89,2-88
66-89,99-99
42-51,41-52
48-70,49-59
27-80,49-69
36-95,36-83
79-89,86-89
4-91,4-92
66-77,65-78
4-99,5-99
54-79,53-80
15-19,16-20
29-37,29-30
8-57,57-57
16-18,17-48
20-46,21-66
10-93,3-98
63-95,14-72
97-97,22-90
38-78,37-89
96-96,55-97
30-69,31-70
41-90,40-90
17-93,32-95
50-88,49-88
23-67,66-67
5-84,5-84
8-96,7-9
66-94,16-65
7-87,8-87
29-30,29-99
12-13,12-99
10-12,11-96
68-69,23-68
3-3,2-98
6-84,7-84
46-96,4-46
4-86,4-25
4-96,5-36
21-39,22-40
3-99,1-1
19-21,20-62
49-96,95-95
49-51,51-52
41-62,6-61
7-16,26-39
17-86,17-18
22-45,23-44
33-39,39-39
40-81,41-81
63-86,65-83
17-35,18-97
13-21,14-75
11-91,8-90
9-20,20-21
77-80,76-81
2-9,4-96
14-59,60-91
18-18,17-97
15-41,42-61
27-80,38-80
46-69,46-70
7-83,96-98
16-96,8-12
5-56,5-9
1-96,2-97
12-97,12-96
78-83,78-82
3-63,1-3
4-76,2-5
68-96,69-81
19-84,14-20
35-78,34-78
41-66,42-65
18-96,46-56
37-94,15-37
69-94,69-93
22-24,23-97
25-47,19-25
4-40,7-98
67-96,68-95
43-75,31-74
51-77,50-51
6-76,77-77
8-96,7-97
45-85,85-85
37-62,37-61
25-59,24-58
22-79,78-78
79-79,6-80
39-97,40-82
22-88,21-88
4-91,58-96
23-90,24-90
14-86,15-86
29-44,29-43
53-68,63-65
4-37,3-97
41-85,40-59
6-7,7-61
82-96,81-83
52-93,52-96
4-52,4-53
18-52,17-36
16-85,15-86
19-73,73-73
7-88,6-89
32-54,54-54
30-35,29-30
14-95,14-15
25-96,24-95
16-75,15-75
29-66,52-66
10-10,11-54
6-67,6-58
9-46,1-9
2-53,95-98
11-46,12-67
64-65,39-64
37-48,36-48
5-42,13-99
16-58,9-9
7-91,7-90
50-51,50-94
31-76,32-75
31-96,31-95
10-81,11-80
23-76,57-81
14-83,12-82
3-93,2-93
27-27,26-73
98-99,17-99
13-67,14-14
48-48,1-49
94-95,7-94
42-97,43-98
62-81,63-82
27-27,17-28
20-69,59-68
18-67,68-68
2-13,5-7
3-98,2-97
27-90,26-90
2-9,9-48
11-99,12-97
3-88,2-12
12-13,12-49
5-20,20-39
39-98,38-75
90-90,4-91
64-77,64-77
3-51,4-51
3-10,10-34
4-29,29-96
2-90,1-90
55-55,9-55
70-79,37-71
66-66,31-66
2-11,1-12
72-76,72-76
34-87,87-99
14-67,14-67
73-82,74-81
62-62,29-62
57-58,11-58
3-7,8-82
19-99,18-20
23-26,22-26
20-63,11-63
11-82,12-83
76-83,76-83
10-72,8-10
48-49,48-53
10-41,11-42
44-55,54-54
80-92,79-81
8-43,7-42
12-20,1-20
22-71,23-23
2-95,1-2
21-71,20-71
9-83,9-83
58-75,4-60
98-98,30-99
63-96,68-97
27-79,27-79
3-56,56-75
1-91,82-92
62-76,61-77
6-8,7-97
37-67,37-66
52-53,52-83
92-92,54-92
55-91,91-91
61-79,61-65
44-44,37-45
64-89,9-64
20-35,19-36
16-49,15-16
64-82,64-83
3-97,2-94
52-53,40-52
43-68,15-85
79-79,36-80
35-84,85-94
23-96,23-95
65-73,65-74
2-69,3-70
49-76,49-95
2-97,1-98
8-68,7-9
86-87,40-86
50-94,79-94
34-48,19-35
7-12,8-12
10-92,92-92
92-99,7-98
52-83,83-83
10-22,11-64
66-90,66-67
10-88,11-88
37-85,38-84
9-63,10-58
26-52,25-51
14-60,15-61
41-58,57-57
16-86,17-86
19-93,19-92
89-89,3-89
7-99,8-8
36-96,14-95
9-50,10-10
12-87,12-88
59-91,96-99
13-92,14-14
13-95,14-98
8-74,15-77
26-74,72-80
4-5,4-28
92-92,20-93
8-97,97-97
68-79,67-69
2-85,21-83
2-6,9-14
60-64,81-89
5-47,47-82
41-80,41-80
54-55,52-55
4-5,6-85
10-88,11-87
4-46,46-46
25-35,26-43
10-19,11-18
42-83,41-83
6-90,4-7
28-97,29-96
22-67,21-68
16-75,17-74
19-74,53-95
67-75,72-76
19-94,88-99
6-91,5-69
3-95,95-95
3-5,4-60
29-82,89-90
3-3,2-97
6-25,25-40
10-98,11-93
4-38,37-39
99-99,3-97
28-75,75-76
29-96,30-95
13-48,27-98
4-83,10-70
14-38,30-35
59-98,49-51
18-88,87-94
9-21,14-43
36-49,33-36
95-96,54-95
37-92,16-41
32-92,43-93
36-38,37-80
3-3,34-56
1-8,2-2
16-28,26-30
50-98,51-98
13-90,12-13
50-94,51-51
98-98,12-99
10-96,1-74
44-74,74-74
64-67,63-65
59-77,59-81
1-99,1-98
31-96,32-95
13-72,14-55
23-79,22-24