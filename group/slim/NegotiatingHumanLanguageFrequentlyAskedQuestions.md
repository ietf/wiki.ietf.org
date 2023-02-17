---
title: NegotiatingHumanLanguageFrequentlyAskedQuestions
description: 
published: true
date: 2023-01-15T22:49:39.160Z
tags: 
editor: markdown
dateCreated: 2023-01-15T22:49:35.116Z
---

# Emergency Call from English Speaker in Spain 
Someone who speaks only English is visiting Spain and places an emergency (112) call. The call offers an audio stream using English. The ESInet and PSAP have policy-based routing rules that take into account the SDP language request when deciding how to route and process the call. The ESInet routes the call to a PSAP within Spain where an English-speaking call taker is available, and the PSAP selects an English-speaking call taker to handle the call. The PSAP answers the offer with an audio stream using English. The call is established with an audio stream; the caller and call taker communicate in English.

Alternatively, the ESInet routes the call to a cooperating PSAP within the U.K. The PSAP answers the offer with an audio stream using English. The call is established with an audio stream; the caller and call taker communicate in English. (This approach is similar to that envisioned in REACH112 Total Conversation.)

---
# Emergency Call from Spanish and English Speaker in France
Someone who speaks both Spanish and English (but prefers Spanish) is visiting France and places an emergency (112) call. The call offers an audio stream listing first Spanish (meaning most preferred) and then English. The ESInet and PSAP have policy-based routing rules that take into account the SDP language request when deciding how to route and process the call. The ESInet routes the call to a PSAP within France where a Spanish-speaking call taker is available, and the PSAP selects a Spanish-speaking call taker to handle the call. The PSAP answers the offer with an audio stream listing Spanish. The call is established with an audio stream; the caller and call taker communicate in Spanish.

Alternatively, the ESInet routes the call to a cooperating PSAP in Spain or England. (This approach is similar to that envisioned in REACH112 Total Conversation.)

Alternatively, there is no ESInet or the ESInet does not take language into account in its PBR. The call is routed to a PSAP in France. The PSAP ignores the language information in the SDP offer, and answers the offer with an audio stream with no language or with French. The UE continues the call anyway. The call taker answers in French, the user tries speaking Spanish and perhaps English. The call taker bridges in a translation service or transfers the call to a multilingual call taker.

# Call to Call Center from Russian Speaker in U.S.
A Russian speaker is visiting the U.S. and places a call to her airline reservation desk to inquire about her return flight. The airline call processing system takes into account the SDP language request and decides to route the call to its call center within Russia.

Alternatively, if the airline call processing system does not look at SDP, it uses the SIP "hint" if present.

---
# Emergency Call from speech-impaired caller in the U.S.
Someone who uses English but is speech-impaired places an emergency (911) call. The call offers an audio stream listing English and a real-time text stream also using English. The ESInet and PSAP have policy-based routing rules that take into account the SDP language and media requests when deciding how to route and process the call. The ESInet routes the call to a PSAP with real-time text capabilities. The PSAP answers the offer with an audio stream listing English and a real-time text stream listing English. The call is established with an audio and a real-time text stream; the caller and call taker communicate in English using voice from the call-taker to the caller and text from the caller to the call taker. The audio stream is two-way, allowing the call taker to hear background sounds.

---
# Emergency Call from deaf caller in the U.S.
A deaf caller who uses American Sign Language (ASL) places an emergency (911) call. The call offers a video stream listing ASL and an audio stream with no language indicated. The ESInet and PSAP have policy-based routing rules that take into account the SDP language and media needs when deciding how to route and process the call. The ESInet routes the call to a PSAP. The PSAP answers the offer with an audio stream listing English and a video stream listing ASL. The PSAP bridges in a sign language interpreter. The call is established with an audio and a video stream.

---
&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2015-11-02. It was migrated from the old Trac wiki on 2023-01-15.*