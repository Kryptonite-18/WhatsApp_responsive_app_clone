const info = [
  {
    'name': 'Broo',
    'message': 'Hey, how are you doing?',
    'time': '3:53 pm',
    'profilePic':
        'https://upload.wikimedia.org/wikipedia/commons/8/85/Elon_Musk_Royal_Society_%28crop1%29.jpg',
    'last_called': 'January 14, 1:55 PM',
  },
  {
    'name': 'Ashu',
    'message': 'Hello, whats up',
    'time': '2:25 pm',
    'profilePic':
        'https://www.socialketchup.in/wp-content/uploads/2020/05/fi-vill-JOHN-DOE.jpg',
    'last_called': 'January 15, 2:30 PM',
  },
  {
    'name': 'avnish  singh ',
    'message': 'Hello, I want to sleep.',
    'time': '1:03 pm',
    'profilePic':
        'https://media.cntraveler.com/photos/60596b398f4452dac88c59f8/16:9/w_3999,h_2249,c_limit/MtFuji-GettyImages-959111140.jpg',
    'last_called': 'January 16, 3:45 PM',
  },
  {
    'name': 'Person 0',
    'message': 'Call me, have some work',
    'time': '12:06 pm',
    'profilePic':
        'https://pbs.twimg.com/profile_images/1419974913260232732/Cy_CUavB.jpg',
    'last_called': 'January 17, 11:15 AM',
  },
  {
    'name': 'random girl',
    'message': 'You ate food?',
    'time': '10:00 am',
    'profilePic':
        'https://uploads.dailydot.com/2018/10/olli-the-polite-cat.jpg?auto=compress%2Cformat&ixlib=php-3.3.0',
    'last_called': 'January 18, 9:00 AM',
  },
  {
    'name': 'long lost friend',
    'message': 'Yo!!!!! Long time, no see!?',
    'time': '9:53 am',
    'profilePic':
        'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60',
    'last_called': 'January 19, 6:20 PM',
  },
  {
    'name': 'Mr Positive',
    'message': 'Life is good',
    'time': '7:25 am',
    'profilePic':
        'https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60',
    'last_called': 'January 20, 4:10 PM',
  },
  {
    'name': 'Mr Fitness',
    'message': 'I am from International Olym...',
    'time': '6:02 am',
    'profilePic':
        'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60',
    'last_called': 'January 21, 5:55 PM',
  },
  {
    'name': 'Nerd',
    'message': 'Lets Code!',
    'time': '4:56 am',
    'profilePic':
        'https://images.unsplash.com/photo-1619194617062-5a61b9c6a049?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHJhbmRvbSUyMHBlb3BsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60',
    'last_called': 'January 22, 8:30 AM',
  },
  {
    'name': 'Recruiter',
    'message': 'Images by Unsplash',
    'time': '1:00 am',
    'profilePic':
        'https://images.unsplash.com/photo-1539571696357-5a69c17a67c6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60',
    'last_called': 'January 23, 10:40 AM',
  },
  {
    'name': 'Recruiter',
    'message': 'Images by Unsplash',
    'time': '1:00 am',
    'profilePic':
        'https://images.unsplash.com/photo-1539571696357-5a69c17a67c6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60',
    'last_called': 'January 23, 10:40 AM',
  },
  {
    'name': 'Recruiter',
    'message': 'Images by Unsplash',
    'time': '1:00 am',
    'profilePic':
        'https://images.unsplash.com/photo-1539571696357-5a69c17a67c6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60',
    'last_called': 'January 23, 10:40 AM',
  },
  {
    'name': 'Recruiter',
    'message': 'Images by Unsplash',
    'time': '1:00 am',
    'profilePic':
        'https://images.unsplash.com/photo-1539571696357-5a69c17a67c6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60',
    'last_called': 'January 23, 10:40 AM',
  },
  {
    'name': 'Recruiter',
    'message': 'Images by Unsplash',
    'time': '1:00 am',
    'profilePic':
        'https://images.unsplash.com/photo-1539571696357-5a69c17a67c6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60',
    'last_called': 'January 23, 10:40 AM',
  },
  {
    'name': 'Recruiter',
    'message': 'Images by Unsplash',
    'time': '1:00 am',
    'profilePic':
        'https://images.unsplash.com/photo-1539571696357-5a69c17a67c6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60',
    'last_called': 'January 23, 10:40 AM',
  },
  {
    'name': 'Recruiter',
    'message': 'Images by Unsplash',
    'time': '1:00 am',
    'profilePic':
        'https://images.unsplash.com/photo-1539571696357-5a69c17a67c6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60',
    'last_called': 'January 23, 10:40 AM',
  },
];

const messages = [
  {"isMe": false, "text": "Hey What is up with you!!", "time": "10:00 am"},
  {"isMe": true, "text": "im fine,wbu?", "time": "11:00 am"},
  {"isMe": false, "text": "I am great man!", "time": "11:01 am"},
  {"isMe": false, "text": "and tell hows life??^^", "time": "11:04 am"},
  {"isMe": true, "text": " its good man, you tell", "time": "11:05 am"},
  {
    "isMe": false,
    "text": "I miss school days :(",
    "time": "11:06 am",
  },
  {
    "isMe": false,
    "text": "things were easy and fun back then",
    "time": "11:06 am",
  },
  {
    "isMe": true,
    "text": "Yeahh man, we were so cool , bike rides n all",
    "time": "11:15 am",
  },
  {"isMe": true, "text": "good old days", "time": "11:17 am"},
  {"isMe": true, "text": "How's your college going?", "time": "11:16 am"},
  {"isMe": false, "text": "it's nice, made some friends.", "time": "11:17 am"},
  {
    "isMe": false,
    "text": "and what abt your college?",
    "time": "11:18 am",
  },
  {
    "isMe": true,
    "text": "pretty normal",
    "time": "11:19 am",
  },
  {
    "isMe": true,
    "text": "sometimes I miss school so much man",
    "time": "11:20 am",
  },
  {
    "isMe": false,
    "text": "me too",
    "time": "11:20 am",
  },
  {
    "isMe": false,
    "text": "will you be home this Holi?",
    "time": "11:20 am",
  },
];
