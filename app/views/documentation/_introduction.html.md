# Introduction

## Purpose

This document is compiled to detail the software requirements for the Feral Pest Tracking System (FPTS), which is to be implemented by New South Wales National Parks and Wildlife Service (PWS). This is the first revision (Revision 1.0) of the 		document and will detail all requirements that have been extrapolated thus far.

The FPTS is a system that will be integrated into the pre-existing software suite operated by the PWS. This document however only details the FPTS directly and does not include any information of systems outside the scope of this system; for example, the payroll system.

## Document Conventions

The document will maintain the conventions and typography standards adopted by our team. The typographical conventions are: a Helvetica Light 11pt standard body, numbered Helvetica Light 16pt main headings, numbered Helvetica Light 13pt sub headings, italicised key points and bolded sub-points.

The logical conventions of the document are such that all higher level requirements are also required by their more specific child requirements. Child requirements will have priorities no higher than the total of their parent requirement, though can be equal. All child requirements also logically inherit the parent’s fundamental requirements.

## Intended Audience and Reading Suggestions

This document is directed to the PWS to detail the software system being developed. It is suggested that a basic technical understanding is present for the majority of the document and is intended for project managers, users, testers and documentation writers. Some of the technical diagrams illustrated toward the end should be read by those with advanced understanding of software development, such as web system developers.

The recommended reading of this document is in section order as the document is presented in a tier structure, detailing all information in the appropriate order. The document goes from high level to lower level detail as the sections progress. Developers and Architects can skip to later sections (Section 3 onwards) if it suits their needs best.

## Product Scope

The software specified is a multi-platform system used by the NSW Parks and Wildlife authority to track feral pests throughout the National Parks. The system has receives data input from a multitude of users; including visitors, tour guides, and the staff themselves.

This system is to serve the purpose of monitoring potential threats and keeping all occupants of the parks safe at all times, as well as gather information on the pests themselves; including their migration habits and general daily activities.

The software system being developed serves as an extension to the PWS current standing software suite, and will allow for interdependency, though will perform all its key competencies as a stand-along software.