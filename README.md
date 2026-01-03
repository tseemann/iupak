[![CI](https://github.com/tseemann/iupak/actions/workflows/CI.yml/badge.svg)](https://github.com/tseemann/iupak/actions/workflows/CI.yml)
[![Version](https://img.shields.io/github/v/release/tseemann/iupak)](https://github.com/tseemann/iupak/releases)
[![License: GPL v2](https://img.shields.io/badge/License-GPL%20v2-blue.svg)](https://www.gnu.org/licenses/old-licenses/gpl-2.0.en.html)
![Don't judge me](https://img.shields.io/badge/Language-Perl_5-steelblue.svg)
[![Bioconda Downloads](https://img.shields.io/conda/dn/bioconda/iupak.svg)](https://anaconda.org/bioconda/iupak)

# iupak

Decode and display IUPAC code information

## Quick Start

```
% iupack
A=A	C=C	G=G	T=T	
K=GT	M=AC	R=AG	S=GC	
W=AT	Y=CT	B=CGT	D=AGT	
H=ACT	V=ACG	N=ACGT

% iupak GRANT
/G[AG]A[ACGT]T/

% iupak -t
<snip>
	CT
B	CGT
D	AGT
H	ACT
V	ACG
N	ACGT

% cat test/dna.fasta
>dna1
GATTACA
>dna2
GRANT

% iupak test/dna.fasta
FIXME

```

## Installation

### Conda
If you are using [Conda](https://bioconda.github.io/user/install.html)
```
% conda install -c bioconda iupak
$ iupak -h
```

### Direct script download

```
% wget % https://raw.githubusercontent.com/tseemann/iupak/refs/heads/main/iupak
% chmod +x iupak
% iupak -h
```   

## References

* [IUPAC Consortium](https://github.com/IUPAC)

## Citation

* Seemann T, `iupak` **Github** https://github.com/tseemann/iupak

## Feedback

Please submit via the [Github Issues page](https://github.com/tseemann/iupak/issues)

## Licence

[GPL v3](https://raw.githubusercontent.com/tseemann/iupak/master/LICENSE)

## Author

* [Torsten Seemann](https://tseemann.github.io/)
