import 'Models.dart';

class StaticFields {
  static User? activeUser;
  static String postFix = "\u0000";
  static String ip = '192.168.1.103';
  static int port = 8000;
  static List<Audiobook> audiobooks = [
    Audiobook(
        name: "Lady Tan's Circle of Wo",
        authorName: "Lisa See",
        price: 19,
        description:
            "INSTANT NEW YORK TIMES BESTSELLER The latest historical novel from New York Times bestselling author Lisa See, inspired by the true story of a woman physician from 15th-century China—perfect for fans of See’s classic Snow Flower and the Secret Fan and The Island of Sea Women.",
        imagePath:
            "assets/images/6.jpg",
        path:
            "assets/audio/audio.mp3",
        topSelling: true,
        rate: 4.6),
    Audiobook(
        name: "King",
        authorName: "Jonathan Eig",
        price: 13,
        description:
            "AN INSTANT NEW YORK TIMES BESTSELLER | A Washington Post and National Indie Bestseller “Supple, penetrating, heartstring-pulling and compulsively readable . . . Eig’s book is worthy of its subject.” —Dwight Garner, The New York Times (Book Review Editors' Choice) [King is] infused with the narrative energy of a thriller . . . The most compelling account of King’s life in a generation.” —Mark Whitaker, The Washington Post \"No book could be more timely than Jonathan Eig’s sweeping and majestic new King . . . Eig has created 2023′s most vital tome.\" —Will Bunch, The Philadelphia Inquirer",
        imagePath:
            "assets/images/7.jpg",
        path:
            "assets/audio/audio.mp3",
        topSelling: true,
        rate: 4.7),
    Audiobook(
        name: "Warrior Girl Unearthed",
        authorName: "Angeline Boulley",
        price: 9,
        description:
            "An Instant New York Times bestseller! #1 Indies Bestseller! An Amazon Best Book of the Month! An Indigo Teen Staff Pick of the Month! An Indie Next Pick! FIVE STARRED REVIEWS FOR WARRIOR GIRL UNEARTHED! #1 New York Times bestselling author of Firekeeper's Daughter Angeline Boulley takes us back to Sugar Island in this high-stakes thriller about the power of discovering your stolen history.",
        imagePath:
            "assets/images/8.jpg",
        path:
            "assets/audio/audio.mp3",
        topSelling: false,
        rate: 3.9),
    Audiobook(
        name: "Hang the Moon",
        authorName: "Jeannette Walls",
        price: 8,
        description:
            "“Glorious…a masterwork.” —The Washington Post *“Propulsive.” —Associated Press * “Wild, smart, energetic.” —Los Angeles Times * “Brilliant and effervescent.” —NPR From the #1 bestselling author of The Glass Castle, the instant New York Times bestseller a “rip-roaring, action-packed” (The New York Times) novel about an indomitable young woman in prohibition-era Virginia.",
        imagePath:
            "assets/images/9.jpg",
        path:
            "assets/audio/audio.mp3",
        topSelling: false,
        rate: 3.4),
    Audiobook(
        name: "The Covenant of Water",
        authorName: "Abraham Verghese",
        price: 4,
        description:
            "OPRAH’S BOOK CLUB PICK • INSTANT NEW YORK TIMES BESTSELLER From the New York Times-bestselling author of Cutting for Stone comes a stunning and magisterial epic of love, faith, and medicine, set in Kerala, South India, following three generations of a family seeking the answers to a strange secret “One of the best books I’ve read in my entire life. It’s epic. It’s transportive . . . It was unputdownable!” — Oprah Winfrey, OprahDaily.com",
        imagePath:
            "assets/images/10.jpg",
        path:
            "assets/audio/audio.mp3",
        topSelling: false,
        rate: 2.4),
  ];
  static List<Ebook> ebooks = [
    Ebook(
        name: "Pomegranate",
        authorName: "Helen Elaine Lee",
        price: 15,
        description:
            "The acclaimed author of The Serpents Gift returns with this deep and beautiful (Jaqueline Woodson, New York Times bestselling author) story about a queer Black woman working to stay clean, pull her life together, and heal after being released from prison.",
        imagePath:
            "assets/images/1.jpg",
        path:
            "assets/pdf/1.pdf",
        topSelling: true,
        rate: 4.4),
    Ebook(
        name: "Hello Beautiful",
        authorName: "Ann Napolitano",
        price: 16,
        description:
            "NEW YORK TIMES BESTSELLER • OPRAH’S BOOK CLUB PICK • From the author of Dear Edward comes a powerfully affecting (People) family story that asks: Can love make a broken person whole? Another tender tearjerker . . . Napolitano chronicles lifes highs and lows with aching precision.—The Washington Post",
        imagePath:
            "assets/images/2.jpg",
        path:
            "assets/pdf/1.pdf",
        topSelling: true,
        rate: 4.5),
    Ebook(
        name: "Weyward",
        authorName: "Emilia Hart",
        price: 20,
        description:
            "INSTANT NEW YORK TIMES BESTSELLER \n A brave and original debut Weyward is a spellbinding story about what may transpire when the natural world collides with a legacy of witchcraft. ––Sarah Penner New York Times bestselling author of The Lost Apothecary",
        imagePath:
            "assets/images/3.jpg",
        path:
            "assets/pdf/1.pdf",
        topSelling: true,
        rate: 4.9),
    Ebook(
        name: "All the Sinners Bleed",
        authorName: "S. A. Cosby",
        price: 9,
        description: "INSTANT NEW YORK TIMES BESTSELLER\n" +
            "Fresh and exhilarating. . . Cosby keeps his eye on the story and the pedal to the metal. —Stephen King TheNew York Times Book Review\n" +
            "\n" +
            "A Black sheriff. A serial killer. A small town ready to combust.\n" +
            "The new novel from New York Times bestselling and Los Angeles Times Book Prize-winning author S. A. Cosby one of the most muscular distinctive grab-you-by-both-ears voices in American crime fiction. —Washington Post.",
        imagePath:
            "assets/images/4.jpg",
        path:
            "assets/pdf/1.pdf",
        topSelling: false,
        rate: 3.6),
    Ebook(
        name: "The Wager",
        authorName: "David Grann",
        price: 6,
        description:
            "#1 NEW YORK TIMES BESTSELLER • From the author of Killers of the Flower Moon a page-turning story of shipwreck survival and savagery culminating in a court martial that reveals a shocking truth. The powerful narrative reveals the deeper meaning of the events on The Wager showing that it was not only the captain and crew who ended up on trial but the very idea of empire.\n" +
                "Riveting...Reads like a thriller tackling a multilayered history—and imperialism—with gusto. —Time\n" +
                "A tour de force of narrative nonfiction. —The Wall Street Journal",
        imagePath:
            "assets/images/5.jpg",
        path:
            "assets/pdf/1.pdf",
        topSelling: false,
        rate: 2.5),
  ];
}
