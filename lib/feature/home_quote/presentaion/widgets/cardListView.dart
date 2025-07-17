import 'package:flutter/material.dart';
import 'Customcard.dart';
import 'dart:math';

class CardListView extends StatefulWidget {
  const CardListView({super.key, required this.controller});

  final PageController controller;

  @override
  _CardListViewState createState() => _CardListViewState();
}
class _CardListViewState extends State<CardListView> {
  final List<Map<String, String>> quotes = [
    {'content': 'Innovation distinguishes between a leader and a follower.', 'author': 'Steve Jobs'},
    {'content': 'Stay hungry, stay foolish.', 'author': 'Steve Jobs'},
    {'content': 'Design is not just what it looks like and feels like. Design is how it works.', 'author': 'Steve Jobs'},
    {'content': 'The people who are crazy enough to think they can change the world are the ones who do.', 'author': 'Steve Jobs'},
    {'content': 'Your time is limited, so don’t waste it living someone else’s life.', 'author': 'Steve Jobs'},
    {'content': 'We always overestimate the change that will occur in the next two years and underestimate the change that will occur in the next ten.', 'author': 'Bill Gates'},
    {'content': 'It’s fine to celebrate success, but it is more important to heed the lessons of failure.', 'author': 'Bill Gates'},
    {'content': 'If you are born poor it’s not your mistake, but if you die poor it’s your mistake.', 'author': 'Bill Gates'},
    {'content': 'Don’t compare yourself with anyone in this world. If you do so, you are insulting yourself.', 'author': 'Bill Gates'},
    {'content': 'Software is a great combination between artistry and engineering.', 'author': 'Bill Gates'},
    {'content': 'When something is important enough, you do it even if the odds are not in your favor.', 'author': 'Elon Musk'},
    {'content': 'Some people don’t like change, but you need to embrace change if the alternative is disaster.', 'author': 'Elon Musk'},
    {'content': 'Failure is an option here. If things are not failing, you are not innovating enough.', 'author': 'Elon Musk'},
    {'content': 'Persistence is very important. You should not give up unless you are forced to give up.', 'author': 'Elon Musk'},
    {'content': 'I think it is possible for ordinary people to choose to be extraordinary.', 'author': 'Elon Musk'},
    {'content': 'The biggest risk is not taking any risk.', 'author': 'Mark Zuckerberg'},
    {'content': 'Move fast and break things. Unless you are breaking stuff, you are not moving fast enough.', 'author': 'Mark Zuckerberg'},
    {'content': 'In a world that’s changing really quickly, the only strategy that is guaranteed to fail is not taking risks.', 'author': 'Mark Zuckerberg'},
    {'content': 'People don’t care about what you say, they care about what you build.', 'author': 'Mark Zuckerberg'},
    {'content': 'Ideas don’t come out fully formed. They only become clear as you work on them.', 'author': 'Mark Zuckerberg'},
    {'content': 'Always deliver more than expected.', 'author': 'Larry Page'},
    {'content': 'If you’re changing the world, you’re working on important things. You’re excited to get up in the morning.', 'author': 'Larry Page'},
    {'content': 'Lots of companies don’t succeed over time. What do they fundamentally do wrong? They usually miss the future.', 'author': 'Larry Page'},
    {'content': 'Solving big problems is easier than solving little problems.', 'author': 'Sergey Brin'},
    {'content': 'Obviously everyone wants to be successful, but I want to be looked back on as being very innovative, very trusted and ethical.', 'author': 'Sergey Brin'},
    {'content': 'That brain of mine is something more than merely mortal, as time will show.', 'author': 'Ada Lovelace'},
    {'content': 'The more I study, the more insatiable do I feel my genius for it to be.', 'author': 'Ada Lovelace'},
    {'content': 'The most dangerous phrase in the language is: "We’ve always done it this way."', 'author': 'Grace Hopper'},
    {'content': 'A ship in port is safe, but that’s not what ships are built for.', 'author': 'Grace Hopper'},
    {'content': 'It’s easier to ask forgiveness than it is to get permission.', 'author': 'Grace Hopper'},
    {'content': 'We can only see a short distance ahead, but we can see plenty there that needs to be done.', 'author': 'Alan Turing'},
    {'content': 'Sometimes it is the people no one can imagine anything of who do the things no one can imagine.', 'author': 'Alan Turing'},
    {'content': 'Software is like sex: it’s better when it’s free.', 'author': 'Linus Torvalds'},
    {'content': 'Talk is cheap. Show me the code.', 'author': 'Linus Torvalds'},
    {'content': 'I like offending people because I think people who get offended should be offended.', 'author': 'Linus Torvalds'},
    {'content': 'The Web does not just connect machines, it connects people.', 'author': 'Tim Berners-Lee'},
    {'content': 'We need diversity of thought in the world to face the new challenges.', 'author': 'Tim Berners-Lee'},
    {'content': 'If you double the number of experiments you do per year, you’re going to double your inventiveness.', 'author': 'Jeff Bezos'},
    {'content': 'What’s dangerous is not to evolve.', 'author': 'Jeff Bezos'},
    {'content': 'One of the only ways to get out of a tight box is to invent your way out.', 'author': 'Jeff Bezos'},
    {'content': 'Our industry does not respect tradition – it only respects innovation.', 'author': 'Satya Nadella'},
    {'content': 'Be passionate and bold. Always keep learning. You stop doing useful things if you don’t learn.', 'author': 'Satya Nadella'},
    {'content': 'Wear your failure as a badge of honor.', 'author': 'Sundar Pichai'},
    {'content': 'A person who is happy is not because everything is right in his life. He is happy because his attitude towards everything in his life is right.', 'author': 'Sundar Pichai'},
    {'content': 'The only way to learn a new programming language is by writing programs in it.', 'author': 'Dennis Ritchie'},
    {'content': 'UNIX is simple. It just takes a genius to understand its simplicity.', 'author': 'Dennis Ritchie'},
    {'content': 'One of my most productive days was throwing away 1,000 lines of code.', 'author': 'Ken Thompson'},
    {'content': 'The cleaner your code is, the better the engineering result.', 'author': 'James Gosling'},
    {'content': 'Focus is a matter of deciding what things you’re not going to do.', 'author': 'John Carmack'},
    {'content': 'The present is theirs; the future, for which I really worked, is mine.', 'author': 'Nikola Tesla'},
  ];

  final Random _random = Random();
  late int _initialPage;

  @override
  void initState() {

    super.initState();
    _initialPage = _random.nextInt(quotes.length);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      widget.controller.jumpToPage(_initialPage);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        controller: widget.controller,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: quotes.length,
        itemBuilder: (context, index) {
          return AnimatedBuilder(
            animation: widget.controller,
            builder: (context, child) {
              return Transform.scale(
                scale: widget.controller.page == index ? 1.0 : 0.95,
                child: child,
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: CustomCard(
                content: quotes[index]['content'] ?? '',
                author: quotes[index]['author'] ?? '',
              ),
            ),
          );
        },
      ),
    );
  }
}