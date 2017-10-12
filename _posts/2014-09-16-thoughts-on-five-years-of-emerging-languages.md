---
layout: post
title: "Thoughts On Five Years of Emerging Languages"
---

# {{ page.title }}

This Wednesday will mark five years of [Emerging Languages](http://emerginglangs.com/), the showcase for new programming languages that I [dreamed up](https://al3x.net/2009/06/15/emerging-languages-conference.html) back in 2009. As we approach half a decade and well over fifty total presentations, I’ve been reflecting on where the event has been and how the language landscape has changed since we began.

Our first year, [2010](http://emerginglangs.com/archive/2010.html), was a big one. Several of the languages presented that year have since broken out into the mainstream, particularly [Clojure](http://clojure.org/), [Go](http://golang.org/), and [CoffeeScript](http://coffeescript.org/). The inaugural presentation culminated in a wonderfully tense moment, one that perfectly captures the push and pull of academic and industrial forces in the world of programming languages.

As Go co-creator Rob Pike wrapped up his talk and opened up the floor for Q&A, an audience member didn’t hesitate to address the elephant in the server room:

> “Rob, why have you shipped a language in 2010 that seemingly ignores the last 30+ years of [PLT](http://en.wikipedia.org/wiki/Programming_language_theory) research?”

I could attempt to reconstruct Pike’s arch-yet-erudite response, but Go’s significant adoption since is an even better rebuttal. Go's design does seem far more informed by industrial practice than academic research. Go asserts that a productive systems language is a conservative one. There are few concepts in Go that date more recently than the mid-1970s, and the language has continued to maintain a trim surface area in subsequent releases.

I’m beginning to write my second real-world Go project as I head to St Louis for this year’s Emerging Languages. When working in Go I feel, I must admit, like a traitor to the cause of advancing programming languages. What I miss in terms of higher-level abstractions and functional features is largely made up for by Go’s superb tooling, documentation, and core libraries. But oh, the guilt!

## Tooling and Editing

This year, Emerging Languages has joined up with [Jonathan Edwards](http://alarmingdevelopment.org/) and [Richard Gabriel](https://www.dreamsongs.com/Bio.html). I reached out after they announced their [Future Programming Workshop](http://www.future-programming.org/), as I thought our events had significant overlap. They kindly agreed. Our combined event will broaden the focus of Emerging Languages to include the tooling _around_ languages, something we’ve only touched on in previous years.

One could read the success of Go as an indictment of contemporary PLT, but I prefer to see it as a reminder of just how much language tooling matters. Perhaps even more critical, Go’s lean syntax, selective semantics, and cautiously-chosen feature set demonstrate the importance of a strong editorial voice in a language’s design and evolution.

Having co-authored a book on [Scala](http://scala-lang.org/), it’s been painful to see systems programmers in my community express frustration with the ambitious hybrid language. I’ve watched them abandon ship and swim back to the familiar shores of Java, or alternately into the uncharted waters of Clojure, Go, and [Rust](http://www.rust-lang.org/). A pity, but not entirely surprising if we’re being honest with ourselves.

Unlike Go, Scala has struggled with tooling from its inception. More than that, Scala has had a growing editorial problem. Every shop I know that’s been successful with Scala has limited itself to some subset of the language. Meanwhile, in pursuit of enterprise developers, its surface area has expanded in seemingly every direction. The folks behind Scala have, thankfully, taken notice: [upcoming releases](http://scala-lang.org/news/roadmap-next) are promised to focus on simplicity, clarity, and better tooling.

## Virtual Machines and Flying Solo

CoffeeScript and Clojure were, as mentioned above, two other breakout languages from our 2010 event. There are further lessons for language authors to be learned from their examples.

CoffeeScript has proven robust enough to, amongst other things, [power a desktop text editor](https://atom.io/). Its success has unquestionably put pressure on the [ECMAScript](http://en.wikipedia.org/wiki/ECMAScript) committee to deliver much-belated improvements to the self-styled “language of the web”. Yet, there is a [visible crest and tapering-off](http://www.google.com/trends/explore#q=coffeescript) of interest in CoffeeScript. A [common takeaway](http://oscargodson.com/posts/why-i-dont-use-coffeescript.html) is that CoffeeScript improved on too little over plain JavaScript while [complicating the toolchain](http://www.walkercoderanger.com/blog/2014/03/coffeescript-isnt-the-answer/) too much.

Back in 2008 I [had a hunch](https://al3x.net/2007/12/20/big-in-2008-dynamic-languages-atop-high.html) that VMs designed for high-level languages (ex: Java and the JVM, Erlang and its VM, JavaScript and its many VMs) were going to flourish as host platforms for even higher-level languages. That prediction has largely come true, but as an implementation strategy it’s starting to outstay its welcome. CoffeeScript being set aside for JavaScript and [Scala being set aside for Java](http://codahale.com/the-rest-of-the-story/) are not, I think, isolated cases.

The Clojure community has made periodic noises of longing regarding a port to [LLVM](http://llvm.org/), which would liberate it from the [frustrations of the JVM](http://martintrojer.github.io/clojure/2014/04/05/the-clojure-repl-a-blessing-and-a-curse/), albeit with significant effort. (One [Clojure-on-LLVM project](https://github.com/halgari/mjolnir) has 175 stars on GitHub; a [Clojure-inspired Lisp on LLVM](https://github.com/artagnon/rhine) boasts nearly 400.) While Clojure offers a bounty of the sort of novel language features that Go has passed up, having to understand the JVM in order to confidently use the language has proven a consistent stumbling block for new Clojurists. The same [friction](http://telladifferentstory.tumblr.com/post/68164735574/tough-day-in-clojurescript-land) can be heard in discussions of ClojureScript. Like CoffeeScript, it’s a marked improvement over JavaScript, but for many developers that may not be enough to warrant the cognitive overhead.

This is the devil’s bargain made by such stranger-on-a-strange-VM languages: there is nothing you truly get for free from the host platform. Someone pays the price, whether up front by weary compiler authors or passed on to language users as unwelcome technical debt. At some point the productivity gains yielded by higher-than-high-level languages give way to VM parameter tuning, messy interoperability work, and even competition with the host language as it appropriates the best features of its guests.

The era of shipping new languages on existing VMs brought language authors a lot of flexibility and experimentation. With a solid, established foundation to build on, individuals and small teams could ship practical languages in a short period of time. The benefits of this strategy are not to be dismissed, but nor are the downsides that we’ve since discovered in practice.

If I’m being held to another prediction, it’s that the insurgent languages five years from now will be – like Go, Rust, and [Julia](http://julialang.org/) – untethered by a host VM. The low-power, high-connectivity Internet of Things world we’re moving towards leaves far less room for fat VMs. The languages that haven't abandoned their hosts by then will be thought of as baggage from the resource-inefficient early days of cloud computing.

## Why Ask Why?

On the last day of the first Emerging Languages I was interviewed about the event by the [MIT Technology Review](http://www.technologyreview.com/news/419956/new-languages-and-why-we-need-them/). The journalist asked me the questions that any inquiring non-programmer might have when considering all these wacky languages:

> “Why do we need new programming languages? Why are there so many of them? Why isn’t there a single standard language that all programmers use?”

When Facebook announced [Hack](http://hacklang.org/) and Apple announced [Swift](https://developer.apple.com/swift/) earlier this year, those questions weren’t present in much of the reporting. If there’s one thing that’s changed in the time since Emerging Languages started, it’s a general perception that polyglotism is here to stay and that periodically learning new languages is part of being a well-rounded professional programmer. That open and exploratory attitude may not be universal, but it's certainly more prevalent today, to the credit of the PLT community as a whole.

If Go is a rejection of advances in PLT, Hack and Swift offer warm and welcoming embraces to denizens of the ivory tower. Hack infuses familiar PHP with many powerful features from Haskell, while Swift looks not at all unlike the hypothetical trimmed-down and edited Scala we’ve been promised. Both languages were met with curiosity and enthusiasm when announced. I find this thoroughly encouraging.

The purpose of Emerging Languages is not solely to showcase the new languages with that will see wide adoption. Some writing is for writers, some music for musicians, and some programming languages are, in turn, for other programming language designers. What I’ve tried to facilitate is an open exchange of ideas; a cross-pollination between industry and academe, static and dynamic, functional and object-oriented, practical and whimsical.

If nothing else, I hope that five years of Emerging Languages has answered the “whys” above while making a little more space in which we can explore the languages and tools that will carry the craft of programming into an uncertain and demanding future.
