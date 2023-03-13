import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:book_collection/models/book.dart';

class BookData extends ChangeNotifier {
  final List<Book> _allBooks = [
    Book(
        title: 'Rich Dad, Poor Dad',
        author: 'Robert Kiyosaki, Sharon Lechter',
        coverImage: "Rich_Dad_Poor_Dad.jpg",
        rating: 4.6,
        description:
            "Rich Dad, Poor Dad is Robert's story of growing up with two dads — his real father and the father of his best friend, his rich dad — and the ways in which both men shaped his thoughts about money and investing. The book explodes the myth that you need to earn a high income to be rich and explains the difference between working for money and having your money work for you.",
        publisher: 'Plata Publishing',
        pages: 336),
    Book(
        title: 'Harry Potter and the Sorcerer’s Stone',
        author: 'J.K. Rowling',
        coverImage: "Harry_Potter_and_the_Sorcerer’s_Stone.jpg",
        rating: 4.7,
        description:
            "Harry Potter spent ten long years living with Mr. and Mrs. Dursley, an aunt and uncle whose outrageous favoritism of their perfectly awful son Dudley leads to some of the most inspired dark comedy since Charlie and the Chocolate Factory. But fortunately for Harry, he's about to be granted a scholarship to a unique boarding school called THE HOGWORTS SCHOOL OF WITCHCRAFT AND WIZARDRY, where he will become a school hero at the game of Quidditch (a kind of aerial soccer played high above the ground on broomsticks), he will make some wonderful friends, and, unfortunately, a few terrible enemies. For although he seems to be getting your run-of-the-mill boarding school experience (well, ok, even that's pretty darn out of the ordinary), Harry Potter has a destiny that he was born to fulfill. A destiny that others would kill to keep him from.",
        publisher: 'Arthur A. Levine Books',
        pages: 320),
    Book(
        title: 'A Tale of Two Cities',
        author: 'Charles Dickens',
        coverImage: "A_Tale_of_Two_Cities.jpg",
        rating: 4.2,
        description:
            "The story is set in the late 18th century against the background of the French Revolution. Although Dickens borrowed from Thomas Carlyle's history, The French Revolution, for his sprawling tale of London and revolutionary Paris, the novel offers more drama than accuracy. The scenes of large-scale mob violence are especially vivid, if superficial in historical understanding. The complex plot involves Sydney Carton's sacrifice of his own life on behalf of his friends Charles Darnay and Lucie Manette. While political events drive the story, Dickens takes a decidedly antipolitical tone, lambasting both aristocratic tyranny and revolutionary excess--the latter memorably caricatured in Madame Defarge, who knits beside the guillotine. The book is perhaps best known for its opening lines, \"It was the best of times, it was the worst of times,\" and for Carton's last speech, in which he says of his replacing Darnay in a prison cell, \"It is a far, far better thing that I do, than I have ever done; it is a far, far better rest that I go to, than I have ever known.\" -- The Merriam-Webster Encyclopedia of Literature",
        publisher: 'Public Domain Books',
        pages: 290),
    Book(
        title: 'The Lord of the Rings',
        author: 'J.R.R. Tolkien',
        coverImage: "The_Lord_of_the_Rings.jpg",
        rating: 4.6,
        description:
            "Continuing the story begun in The Hobbit, all three parts of the epic masterpiece, The Lord of the Rings, in one paperback. Features the definitive edition of the text, fold-out flaps with the original two-colour maps, and a revised and expanded index.Sauron, the Dark Lord, has gathered to him all the Rings of Power – the means by which he intends to rule Middle-earth. All he lacks in his plans for dominion is the One Ring – the ring that rules them all – which has fallen into the hands of the hobbit, Bilbo Baggins.In a sleepy village in the Shire, young Frodo Baggins finds himself faced with an immense task, as the Ring is entrusted to his care. He must leave his home and make a perilous journey across the realms of Middle-earth to the Crack of Doom, deep inside the territories of the Dark Lord. There he must destroy the Ring forever and foil the Dark Lord in his evil purpose.",
        publisher: 'HarperCollins',
        pages: 1216),
    Book(
        title: 'The Little Prince',
        author: 'Antoine de Saint-Exupery',
        coverImage: "The_Little_Prince.jpg",
        rating: 4.8,
        description:
            "A pilot stranded in the desert awakes one morning to see, standing before him, the most extraordinary little fellow. \"Please,\" asks the stranger, \"draw me a sheep.\" And the pilot realizes that when life's events are too difficult to understand, there is no choice but to succumb to their mysteries. He pulls out pencil and paper... And thus begins this wise and enchanting fable that, in teaching the secret of what is really important in life, has changed forever the world for its readers.",
        publisher: 'Harcourt, Inc.',
        pages: 96),
    Book(
        title: 'One Hundred Years of Solitude',
        author: 'Gabriel García Marquez',
        coverImage: "One_Hundred_Years_of_Solitude.jpg",
        rating: 4.6,
        description:
            "One of the twentieth century’s enduring works, One Hundred Years of Solitude is a widely beloved and acclaimed novel known throughout the world and the ultimate achievement in a Nobel Prize–winning career. The novel tells the story of the rise and fall of the mythical town of Macondo through the history of the Buendía family. Rich and brilliant, it is a chronicle of life, death, and the tragicomedy of humankind. In the beautiful, ridiculous, and tawdry story of the Buendía family, one sees all of humanity, just as in the history, myths, growth, and decay of Macondo, one sees all of Latin America.Love and lust, war and revolution, riches and poverty, youth and senility, the variety of life, the endlessness of death, the search for peace and truth—these universal themes dominate the novel. Alternately reverential and comical, One Hundred Years of Solitude weaves the political, personal, and spiritual to bring a new consciousness to storytelling. Translated into dozens of languages, this stunning work is no less than an account of the history of the human race.",
        publisher: 'Blackstone Audio, Inc.',
        pages: 417),
    Book(
        title: 'The Da Vinci Code',
        author: 'Dan Brown',
        coverImage: "The_Da_Vinci_Code.jpg",
        rating: 4.6,
        description:
            "While in Paris on business, Harvard symbologist Robert Langdon receives an urgent late-night phone call: the elderly curator of the Louvre has been murdered inside the museum. Near the body, police have found a baffling cipher. While working to solve the enigmatic riddle, Langdon is stunned to discover it leads to a trail of clues hidden in the works of Da Vinci, clues visible for all to see, yet ingeniously disguised by the painter. Langdon joins forces with a gifted French cryptologist, Sophie Neveu, and learns the late curator was involved in the Priory of Sion - an actual secret society whose members included Sir Isaac Newton, Botticelli, Victor Hugo, and Da Vinci, among others. In a breathless race through Paris, London, and beyond, Langdon and Neveu match wits with a faceless powerbroker who seems to anticipate their every move. Unless Langdon and Neveu can decipher the labyrinthine puzzle in time, the Priory's ancient secret - and an explosive historical truth - will be lost forever.",
        publisher: 'Delacorte Press',
        pages: 460),
    Book(
        title: 'Think and Grow Rich',
        author: 'Napoleon Hill',
        coverImage: "Think_and_Grow_Rich.jpg",
        rating: 4.7,
        description:
            "Think and Grow Rich is a guide to success by Napoleon Hill, which was first published in 1937 following the Great Depression. It was immediately welcomed as an antidote to hard times and remained a bestseller for decades. Many people still find its philosophy of positive thinking and its specific steps for achieving wealth both relevant and life-changing. Hill contends that our thoughts become our reality, and offers a plan and principles for transforming thoughts into riches, including visualization, affirmation, creating a Master Mind group, defining a goal, and planning.",
        publisher: 'Gildan Media, LLC',
        pages: 233),
    Book(
        title: 'Black Beauty',
        author: 'Anna Sewell',
        coverImage: "Black_Beauty.jpg",
        rating: 4.6,
        description:
            "As a young horse, Black Beauty is well-loved and happy. But when his owner is forced to sell him, his life changes drastically. He has many new owners--some of them cruel and some of them kind. All he needs is someone to love him again...As a young horse, Black Beauty is well-loved and happy. But when his owner is forced to sell him, his life changes drastically. He has many new owners--some of them cruel and some of them kind. All he needs is someone to love him again...",
        publisher: 'Scholastic Paperbacks',
        pages: 245),
    Book(
        title: 'The Hobbit',
        author: 'J.R.R. Tolkien',
        coverImage: "The_Hobbit.jpg",
        rating: 4.8,
        description:
            "In a hole in the ground there lived a hobbit. Not a nasty, dirty, wet hole, filled with the ends of worms and an oozy smell, nor yet a dry, bare, sandy hole with nothing in it to sit down on or to eat: it was a hobbit-hole, and that means comfort. This introduction to the hobbit Bilbo Baggins, the wizard Gandalf, Gollum, and the spectacular world of Middle-earth recounts of the adventures of a reluctant hero, a powerful and dangerous ring, and the cruel dragon Smaug the Magnificent.",
        publisher: 'Houghton Mifflin',
        pages: 366),
  ];

  List<Book> _favoriteBooks = [];
  List<Book> _searchedBooks = [];

  List<Book> showAllBooks() {
    return _allBooks;
  }

  List<Book> showSearchedBooks() {
    return _searchedBooks;
  }

  UnmodifiableListView<Book> get allBooks {
    return UnmodifiableListView(_allBooks);
  }

  UnmodifiableListView<Book> get favoriteBooks {
    return UnmodifiableListView(_favoriteBooks);
  }

  UnmodifiableListView<Book> get searchedBooks {
    return UnmodifiableListView(_searchedBooks);
  }

  void markBookFavorite(Book book) {
    _favoriteBooks.add(book);
    notifyListeners();
  }

  void clearSearchResults() {
    _searchedBooks.clear();
    notifyListeners();
  }
}
