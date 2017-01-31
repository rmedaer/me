# Me, myself and I

A latex exercise: my resume !

## Build

Please install following dependencies:

  * texlive-xetex
  * texlive-bibtex-extra
  * Ubuntu fonts

I might missed some dependencies, feel free to complete through PR ;-)

Then run Makefile. It will ask you a passphrase to decrypt personal data.

Here is the pattern of decrypted `personal.tex` file:

```tex
\newcommand{\myPhoneNumber}{<my phone number>}
\newcommand{\myAddress}{<my home address>}
\newcommand{\myPrivateMail}{<my private mail address>}
```

## License

```
CC BY-NC-SA 3.0 (http://creativecommons.org/licenses/by-nc-sa/3.0/)
```
