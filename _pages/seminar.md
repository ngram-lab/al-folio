---
layout: page
permalink: /seminar/
title: seminar
order: 6.5
description:
nav: true

---

# UMass NLP Seminar

This webpage will contain information on the Fall 2025 NLP seminar.
See further below for information about the seminar as a course.

## Schedule: Fall 2025

The NLP seminar takes place Wednesdays, 12:30pm - 1:45pm, in room LGRC A104 and on Zoom.

- Sept. 10: organizational meeting
- Sept. 17: [Katrin Erk](https://www.katrinerk.com/), UMass CICS and Linguistics, "Analyzing word token embeddings to assess meaning in context."  (In-person talk.)
  - *Abstract:* Word token embeddings constitute a condensed record of utterances of many speakers. This makes them interesting as data for lexical semantics, for questions like: Can word embeddings tell us about the structure of polysemous words, and which properties distinguish different usage groups? Do word embeddings encode meaning distinctions that differ from dictionary senses, and if so, is this data or noise? Can word embeddings help us assess the subtle meaning changes that  constructions impose on their components? And, importantly: How can we test the performance of methods for analyzing word token embeddings, and under what circumstances can we rely on them? In this talk I discuss methods that we have been developing for studying lexical semantics through embeddings, and analyses we've done so far. 
  - *Related papers:*
  [A method for studying semantic construal in grammatical constructions with interpretable contextual embedding spaces](https://aclanthology.org/2023.acl-long.14/) (Chronis et al., ACL 2023) and [Adjusting interpretable dimensions in embedding space with human judgements](https://aclanthology.org/2024.naacl-long.146/) (Erk & Apidianaki, NAACL 2024).
- Sept. 24: [Catherine Arnett](https://www.catherinearnett.github.io/), EleutherAI, "Why do language models perform worse for morphologically complex languages?"
  - *Abstract:* Language models perform differently across languages. It has been previously suggested that morphological typology may explain some of this variability (Cotterell et al., 2018). We replicate previous analyses and find additional new evidence for a performance gap between agglutinative and fusional languages, where fusional languages, such as English, tend to have better language modeling performance than morphologically more complex languages like Turkish. We then propose and test three possible causes for this performance gap: morphological alignment of tokenizers, tokenization quality, and disparities in dataset sizes and measurement. We find some evidence that tokenization quality explains the performance gap, but none for the role of morphological alignment. Instead we find that the performance gap is most reduced when training datasets are of equivalent size across language types, but only when scaled according to the so-called "byte-premium"---the different encoding efficiencies of different languages and orthographies. These results suggest that languages of particular morphological types are not intrinsically advantaged or disadvantaged in language modeling. These findings bear on ongoing efforts to improve performance for low-performing and under-resourced languages.
  - *Related papers:* [Why do language models perform worse for morphologically complex languages?](https://aclanthology.org/2025.coling-main.441/) (Arnett & Bergen, COLING 2025), [A bit of a problem: Measurement disparities in dataset sizes across languages](https://aclanthology.org/2024.sigul-1.1.pdf) (Arnett et al., SIGUL 2024), and [Goldfish: Monolingual language models for 350 languages](https://arxiv.org/pdf/2408.10441) (Chang et al., arxiv 2024).
- Oct. 1: Paper discussion: [Large language model hacking: Quantifying the hidden risks of using LLMs for text annotation](https://arxiv.org/abs/2509.08825) (Baumann et al., arxiv 2025).
- Oct. 8: No session
- Oct. 15: [Alisa Liu](https://alisawuffles.github.io/), University of Washington, "Between Language and Models: Rethinking Algorithms for Tokenization."
  - *Abstract:* Language models operate over real numbers, while users of language models interface with human-readable text. This is made possible by tokenization, which encodes text as a sequence of embeddings and decodes real-valued predictions back into generated text. Despite its foundation importance to language modeling, the algorithms for tokenization have remained largely unchanged in the era of LLMs. In this talk, I will discuss my recent work in improving algorithms for tokenization. The first half presents SuperBPE, a superword tokenizer that extends traditional subword tokenization to include tokens that span multiple words. We motivate superword tokens from a linguistic perspective, and demonstrate empirically that models pretrained from scratch with SuperBPE achieve stronger performance on downstream tasks while also being significantly more efficient at inference-time. The second half revisits a fundamental limitation of tokenizer-based LMs: models trained over sequences of tokens cannot, out of the box, model the probability of arbitrary strings. I discuss the practical implications of this in domains such as Chinese and code, and then present an inference-time algorithm that converts LM-predicted probabilities over tokens into probabilities over characters, while preserving the sampling distribution at the text level. I will conclude by discussing open questions on the future of tokenization.
  - *Related papers:* [SuperBPE: Space travel for language models](https://arxiv.org/abs/2509.08825) (Liu et al., COLM 2025) and [Sampling from your language model one byte at a time](https://arxiv.org/abs/2509.08825) (Hayase et al., arxiv 2025). 
- Oct. 22: [Emma Pierson](https://people.eecs.berkeley.edu/~emmapierson/), University of California, Berkeley, "Sparse autoencoders for hypothesis generation."
  - *Abstract:* I will describe HypotheSAEs, a general method to hypothesize interpretable relationships between text data (e.g., headlines) and a target variable (e.g., clicks) using sparse autoencoders. HypotheSAEs produces novel discoveries on well-studied tasks and, compared to baselines, better identifies reference hypotheses on synthetic datasets and produces more predictive hypotheses on real datasets. After describing HypotheSAEs, I will describe how we have applied it to (1) learn the preferences encoded in human feedback datasets and (2) learn interpretable representations of free-text survey data.
  - *Related papers:* [Sparse autoencoders for hypothesis generation](https://openreview.net/pdf?id=4R0pugRyN5) (Movva et al., ICML 2025).
- Oct. 29: [Os Keyes](https://ironholds.org/), University of Massachusetts Lowell. (In-person talk.) 
- Nov. 5: [Jack Wang](https://zichaow.github.io/), Adobe Research
- Nov. 12: [Emily Tseng](https://emtseng.me/), University of Washington
- Nov. 19: [Shira Wein](https://shirawein.github.io/), Amherst College.  (In-person talk.)
- Nov. 26: No session (Thanksgiving break)
- Dec. 3: TBA

## Course: COMPSCI 692L

The seminar is available as a 1-credit seminar course, 692L.
Enrollment in the course is not required to attend talks.

Course requirements: Students must read posted papers before the class sessions, submit questions before the seminar, and be prepared to ask their questions (or other questions) at the speaker's talk.  In class sessions without a speaker, students should be ready to participate in class discussions.

Assignment details are distributed through the seminar's slack channel.

## Previous seminars

Speakers from some previous offerings of the NLP Seminar:
  <a href="/seminar_s25/">Spring 2025</a>,
  <a href="https://people.cs.umass.edu/~miyyer/nlpseminar/">Fall 2024</a>,
  <a href="https://people.cs.umass.edu/~miyyer/nlpseminar/spring24.html">Spring 2024</a>,
  <a href="https://people.cs.umass.edu/~miyyer/nlpseminar/fall23.html">Fall 2023</a>,
  <a href="https://people.cs.umass.edu/~miyyer/nlpseminar/spring23.html">Spring 2023</a>.

