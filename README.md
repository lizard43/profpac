# Professor Pac-Man プロフェッサー・パックマン Disassembly

Professor Pac-Man was a Dave Nutting Associates game, developed for Bally Midway’s Astrocade-derived arcade platform. Released in August 1983, it was the final commercial arcade game built around that hardware family. It was a multiple-choice educational/trivia game—not a maze game despite the Pac-Man license.

Professor pacman ran on a version of the bally astrocade hardware with different graphics hardware giving 16 colours and it also had masses of banked rom (768k)

it uses the same custom chips used by Gorf, Wizard of Wor, Robby Roto etc.



## Was it written in TERSE?

It was written in a Forth-family language and was very likely built with DNA’s TERSE system, but I have not found a primary source explicitly naming TERSE.

Contemporary-derived game histories consistently say it was programmed in FORTH. That description fits TERSE: DNA’s Astrocade development environment was a compact threaded, Forth-like system, and Professor Pac-Man came from the same shop and technical lineage as Gorf.

There are additional reasons TERSE is likely:

Rick Frankel had already supplied programming support on Gorf, whose surviving program contains a recognizable TERSE threaded-code system.
Professor Pac-Man appeared late in DNA’s Astrocade period, when reusing that established toolchain would make sense.
A large, screen-oriented quiz program benefits from TERSE’s compact vocabulary and threaded application code.
Historical summaries may have called it “FORTH” because that is the recognizable language family rather than DNA’s internal dialect name.

Still, “written in FORTH” does not prove “written in TERSE.” We would want to inspect the Professor Pac-Man ROMs for the TERSE fingerprints we found in Gorf: colon-word headers or threaded word bodies, a common inner interpreter, parameter-field addresses, dictionary-like structures, and shared primitive implementations. Until that comparison is made, I would label it:

Forth-based; probably DNA TERSE, pending ROM confirmation.

Known creative and development personnel
Role	Person or organization
Original game proposal	Johnny Lott and Ed Adlum
Development studio	Dave Nutting Associates
Publisher/manufacturer	Bally Midway
Principal programmer/writer	Rick Frankel
Graphics and animation	Mark Steven Pierce
Additional graphics	Sue Forner
Sound and music	Marc Canter
Likely studio/product oversight	Dave Nutting

The individual credits are consistently reported as Rick Frankel for the program, Mark Steven Pierce and Sue Forner for graphics, and Marc Canter for sound and music.

Mark Pierce’s own later account is especially useful. He recalled that Rick Frankel was making the game through Dave Nutting Associates’ relationship with Bally and that Pierce was brought in to animate the multiple-choice questions. He also remembered Marc Canter working on audio at the company.

Who designed the concept?

The concept has two distinct stages:

Johnny Lott and Ed Adlum proposed a Pac-Man game in which normal maze play would be interrupted by quiz questions after Pac-Man ate a power pellet.
After Midway accepted it, Dave Nutting Associates substantially redesigned it, removing the maze gameplay and turning it into the animated multiple-choice game that shipped.

Accounts say Lott and Adlum were not informed that their maze component had been removed.

That makes the design credit less clean than the programming credit. Lott and Adlum originated the quiz/Pac-Man concept, but the shipped game design appears to have been created inside DNA—probably under Dave Nutting’s direction with Rick Frankel doing the principal implementation. I have not found a reliable source assigning the final game-design credit to one named DNA employee.

What made the machine unusual?

Professor Pac-Man was much more ambitious than a normal 16 KB Astrocade title:

Z80-based Astrocade-family video hardware
Two Astrocade custom I/O/sound chips
Three answer buttons
Extensive animated question presentations
A comparatively large collection of program, graphics, and question data
Planned replacement question sets so operators could refresh the machine

Midway reportedly envisioned family, public/bar, and prize-oriented question packages, with periodic revisions to prevent memorization. Only about 400 cabinets are commonly reported as manufactured, and many were reportedly returned and later converted.
