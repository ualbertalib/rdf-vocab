# -*- encoding: utf-8 -*-
# frozen_string_literal: true
# This file generated automatically using rdf vocabulary format from http://purl.org/ontology/bibo/
require 'rdf'
module RDF::Vocab
  # @!parse
  #   # Vocabulary for <http://purl.org/ontology/bibo/>
  #   class BIBO < RDF::StrictVocabulary
  #   end
  class BIBO < RDF::StrictVocabulary("http://purl.org/ontology/bibo/")

    # Ontology definition
    ontology :"http://purl.org/ontology/bibo/",
      "dc:creator": ["bibo:bdarcus".freeze, "bibo:fgiasson".freeze],
      "dc:description": "The Bibliographic Ontology describes\nbibliographic things on the semantic Web in RDF.  This ontology can be\nused as a citation ontology, as a document classification ontology, or\nsimply as a way to describe any kind of document in RDF. It has been\ninspired by many existing document description metadata formats, and\ncan be used as a common ground for converting other bibliographic data\nsources.".freeze,
      "dc:title": "The Bibliographic Ontology".freeze,
      "owl:versionInfo": "http://purl.org/ontology/bibo/1.3/".freeze,
      type: "owl:Ontology".freeze

    # Class definitions
    term :AcademicArticle,
      comment: %(A scholarly academic article, typically published in a journal.).freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "Academic Article".freeze,
      subClassOf: "bibo:Article".freeze,
      type: "owl:Class".freeze,
      "vs:term_status": "stable".freeze
    term :Article,
      comment: %(A written composition in prose, usually nonfiction, on a specific topic, forming an independent part of a book or other publication, as a newspaper or magazine.).freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "Article".freeze,
      subClassOf: "bibo:Document".freeze,
      type: "owl:Class".freeze,
      "vs:term_status": "stable".freeze
    term :AudioDocument,
      comment: %(An audio document; aka record.).freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "audio document".freeze,
      subClassOf: "bibo:Document".freeze,
      type: "owl:Class".freeze,
      "vs:term_status": "stable".freeze
    term :AudioVisualDocument,
      comment: %(An audio-visual document; film, video, and so forth.).freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "audio-visual document".freeze,
      subClassOf: "bibo:Document".freeze,
      type: "owl:Class".freeze,
      "vs:term_status": "stable".freeze
    term :Bill,
      comment: %(Draft legislation presented for discussion to a legal body.).freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "Bill".freeze,
      subClassOf: "bibo:Legislation".freeze,
      type: "owl:Class".freeze,
      "vs:term_status": "stable".freeze
    term :Book,
      comment: %(A written or printed work of fiction or nonfiction, usually on sheets of paper fastened or bound together within covers.).freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "Book".freeze,
      subClassOf: "bibo:Document".freeze,
      type: "owl:Class".freeze,
      "vs:term_status": "stable".freeze
    term :BookSection,
      comment: %(A section of a book.).freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "Book Section".freeze,
      subClassOf: "bibo:DocumentPart".freeze,
      type: "owl:Class".freeze,
      "vs:term_status": "unstable".freeze
    term :Brief,
      comment: %(A written argument submitted to a court.).freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "Brief".freeze,
      subClassOf: "bibo:LegalCaseDocument".freeze,
      type: "owl:Class".freeze,
      "vs:term_status": "unstable".freeze
    term :Chapter,
      comment: %(A chapter of a book.).freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "Chapter".freeze,
      subClassOf: "bibo:BookSection".freeze,
      type: "owl:Class".freeze,
      "vs:term_status": "unstable".freeze
    term :Code,
      comment: %(A collection of statutes.).freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "Code".freeze,
      subClassOf: ["bibo:Periodical".freeze, term(
          allValuesFrom: "bibo:Legislation".freeze,
          onProperty: "dc:hasPart".freeze,
          type: "owl:Restriction".freeze
        ), term(
          minCardinality: "1".freeze,
          onProperty: "dc:hasPart".freeze,
          type: "owl:Restriction".freeze
        )],
      type: "owl:Class".freeze,
      "vs:term_status": "stable".freeze
    term :CollectedDocument,
      comment: %(A document that simultaneously contains other documents.).freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "Collected Document".freeze,
      subClassOf: ["bibo:Document".freeze, term(
          allValuesFrom: "bibo:Document".freeze,
          onProperty: "dc:hasPart".freeze,
          type: "owl:Restriction".freeze
        ), term(
          minCardinality: "1".freeze,
          onProperty: "dc:hasPart".freeze,
          type: "owl:Restriction".freeze
        )],
      type: "owl:Class".freeze,
      "vs:term_status": "stable".freeze
    term :Collection,
      comment: %(A collection of Documents or Collections).freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "Collection".freeze,
      subClassOf: term(
          allValuesFrom: term(
            type: "owl:Class".freeze,
            unionOf: list("bibo:Collection".freeze, "bibo:Document".freeze)
          ),
          onProperty: "dc:hasPart".freeze,
          type: "owl:Restriction".freeze
        ),
      type: "owl:Class".freeze,
      "vs:term_status": "stable".freeze
    term :Conference,
      comment: %(A meeting for consultation or discussion.).freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "Conference".freeze,
      subClassOf: "http://purl.org/NET/c4dm/event.owl#Event".freeze,
      type: "owl:Class".freeze,
      "vs:term_status": "stable".freeze
    term :CourtReporter,
      comment: %(A collection of legal cases.).freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "Court Reporter".freeze,
      subClassOf: ["bibo:Periodical".freeze, term(
          allValuesFrom: "bibo:LegalDocument".freeze,
          onProperty: "dc:hasPart".freeze,
          type: "owl:Restriction".freeze
        ), term(
          minCardinality: "1".freeze,
          onProperty: "dc:hasPart".freeze,
          type: "owl:Restriction".freeze
        )],
      type: "owl:Class".freeze,
      "vs:term_status": "stable".freeze
    term :Document,
      comment: %(A document \(noun\) is a bounded physical representation of body of information designed with the capacity \(and usually intent\) to communicate. A document may manifest symbolic, diagrammatic or sensory-representational information.).freeze,
      equivalentClass: "foaf:Document".freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "Document".freeze,
      type: "owl:Class".freeze,
      "vs:term_status": "stable".freeze
    term :DocumentPart,
      comment: %(a distinct part of a larger document or collected document.).freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "document part".freeze,
      subClassOf: ["bibo:Document".freeze, term(
          maxCardinality: "1".freeze,
          onProperty: "dc:isPartOf".freeze,
          type: "owl:Restriction".freeze
        )],
      type: "owl:Class".freeze,
      "vs:term_status": "unstable".freeze
    term :DocumentStatus,
      comment: %(The status of the publication of a document.).freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "Document Status".freeze,
      type: "owl:Class".freeze,
      "vs:term_status": "stable".freeze
    term :EditedBook,
      comment: %(An edited book.).freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "Edited Book".freeze,
      subClassOf: "bibo:CollectedDocument".freeze,
      type: "owl:Class".freeze,
      "vs:term_status": "stable".freeze
    term :Email,
      comment: %(A written communication addressed to a person or organization and transmitted electronically.).freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "EMail".freeze,
      subClassOf: "bibo:PersonalCommunicationDocument".freeze,
      type: "owl:Class".freeze,
      "vs:term_status": "stable".freeze
    term :Event,
      type: "owl:Class".freeze
    term :Excerpt,
      comment: %(A passage selected from a larger work.).freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "Excerpt".freeze,
      subClassOf: "bibo:DocumentPart".freeze,
      type: "owl:Class".freeze,
      "vs:term_status": "stable".freeze
    term :Film,
      comment: %(aka movie.).freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "Film".freeze,
      subClassOf: "bibo:AudioVisualDocument".freeze,
      type: "owl:Class".freeze,
      "vs:term_status": "stable".freeze
    term :Hearing,
      comment: %(An instance or a session in which testimony and arguments are presented, esp. before an official, as a judge in a lawsuit.).freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "Hearing".freeze,
      subClassOf: "http://purl.org/NET/c4dm/event.owl#Event".freeze,
      type: "owl:Class".freeze,
      "vs:term_status": "stable".freeze
    term :Image,
      comment: %(A document that presents visual or diagrammatic information.).freeze,
      equivalentClass: "foaf:Image".freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "Image".freeze,
      subClassOf: "bibo:Document".freeze,
      type: "owl:Class".freeze,
      "vs:term_status": "stable".freeze
    term :Interview,
      comment: %(A formalized discussion between two or more people.).freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "Interview".freeze,
      subClassOf: "http://purl.org/NET/c4dm/event.owl#Event".freeze,
      type: "owl:Class".freeze,
      "vs:term_status": "stable".freeze
    term :Issue,
      comment: %(something that is printed or published and distributed, esp. a given number of a periodical).freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "Issue".freeze,
      subClassOf: ["bibo:CollectedDocument".freeze, term(
          allValuesFrom: "bibo:Article".freeze,
          onProperty: "dc:hasPart".freeze,
          type: "owl:Restriction".freeze
        ), term(
          minCardinality: "1".freeze,
          onProperty: "dc:hasPart".freeze,
          type: "owl:Restriction".freeze
        )],
      type: "owl:Class".freeze,
      "vs:term_status": "stable".freeze
    term :Journal,
      comment: %(A periodical of scholarly journal Articles.).freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "Journal".freeze,
      subClassOf: ["bibo:Periodical".freeze, term(
          allValuesFrom: "bibo:Issue".freeze,
          onProperty: "dc:hasPart".freeze,
          type: "owl:Restriction".freeze
        ), term(
          minCardinality: "1".freeze,
          onProperty: "dc:hasPart".freeze,
          type: "owl:Restriction".freeze
        )],
      type: "owl:Class".freeze,
      "vs:term_status": "stable".freeze
    term :LegalCaseDocument,
      comment: %(A document accompanying a legal case.).freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "Legal Case Document".freeze,
      subClassOf: "bibo:LegalDocument".freeze,
      type: "owl:Class".freeze,
      "vs:term_status": "unstable".freeze
    term :LegalDecision,
      comment: %(A document containing an authoritative determination \(as a decree or judgment\) made after consideration of facts or law.).freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "Decision".freeze,
      subClassOf: "bibo:LegalCaseDocument".freeze,
      type: "owl:Class".freeze,
      "vs:term_status": "unstable".freeze
    term :LegalDocument,
      comment: %(A legal document; for example, a court decision, a brief, and so forth.).freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "Legal Document".freeze,
      subClassOf: "bibo:Document".freeze,
      type: "owl:Class".freeze,
      "vs:term_status": "stable".freeze
    term :Legislation,
      comment: %(A legal document proposing or enacting a law or a group of laws.).freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "Legislation".freeze,
      subClassOf: "bibo:LegalDocument".freeze,
      type: "owl:Class".freeze,
      "vs:term_status": "unstable".freeze
    term :Letter,
      comment: %(A written or printed communication addressed to a person or organization and usually transmitted by mail.).freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "Letter".freeze,
      subClassOf: "bibo:PersonalCommunicationDocument".freeze,
      type: "owl:Class".freeze,
      "vs:term_status": "stable".freeze
    term :Magazine,
      comment: %(A periodical of magazine Articles. A magazine is a publication that is issued periodically, usually bound in a paper cover, and typically contains essays, stories, poems, etc., by many writers, and often photographs and drawings, frequently specializing in a particular subject or area, as hobbies, news, or sports.).freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "Magazine".freeze,
      subClassOf: ["bibo:Periodical".freeze, term(
          allValuesFrom: "bibo:Issue".freeze,
          onProperty: "dc:hasPart".freeze,
          type: "owl:Restriction".freeze
        ), term(
          minCardinality: "1".freeze,
          onProperty: "dc:hasPart".freeze,
          type: "owl:Restriction".freeze
        )],
      type: "owl:Class".freeze,
      "vs:term_status": "stable".freeze
    term :Manual,
      comment: %(A small reference book, especially one giving instructions.).freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "Manual".freeze,
      subClassOf: "bibo:Document".freeze,
      type: "owl:Class".freeze,
      "vs:term_status": "unstable".freeze
    term :Manuscript,
      comment: %(An unpublished Document, which may also be submitted to a publisher for publication.).freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "Manuscript".freeze,
      subClassOf: "bibo:Document".freeze,
      type: "owl:Class".freeze,
      "vs:term_status": "stable".freeze
    term :Map,
      comment: %(A graphical depiction of geographic features.).freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "Map".freeze,
      subClassOf: "bibo:Image".freeze,
      type: "owl:Class".freeze,
      "vs:term_status": "unstable".freeze
    term :MultiVolumeBook,
      comment: %(A loose, thematic, collection of Documents, often Books.).freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "Multivolume Book".freeze,
      subClassOf: ["bibo:Collection".freeze, term(
          allValuesFrom: "bibo:Book".freeze,
          onProperty: "dc:hasPart".freeze,
          type: "owl:Restriction".freeze
        )],
      type: "owl:Class".freeze,
      "vs:term_status": "stable".freeze
    term :Newspaper,
      comment: %(A periodical of documents, usually issued daily or weekly, containing current news, editorials, feature articles, and usually advertising.).freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "Newspaper".freeze,
      subClassOf: ["bibo:Periodical".freeze, term(
          allValuesFrom: "bibo:Issue".freeze,
          onProperty: "dc:hasPart".freeze,
          type: "owl:Restriction".freeze
        ), term(
          minCardinality: "1".freeze,
          onProperty: "dc:hasPart".freeze,
          type: "owl:Restriction".freeze
        )],
      type: "owl:Class".freeze,
      "vs:term_status": "stable".freeze
    term :Note,
      comment: %(Notes or annotations about a resource.).freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "Note".freeze,
      subClassOf: "bibo:Document".freeze,
      type: "owl:Class".freeze,
      "vs:term_status": "stable".freeze
    term :Patent,
      comment: %(A document describing the exclusive right granted by a government to an inventor to manufacture, use, or sell an invention for a certain number of years.).freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "Patent".freeze,
      subClassOf: "bibo:Document".freeze,
      type: "owl:Class".freeze,
      "vs:term_status": "stable".freeze
    term :Performance,
      comment: %(A public performance.).freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "Performance".freeze,
      subClassOf: "http://purl.org/NET/c4dm/event.owl#Event".freeze,
      type: "owl:Class".freeze,
      "vs:term_status": "unstable".freeze
    term :Periodical,
      comment: %(A group of related documents issued at regular intervals.).freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "Periodical".freeze,
      subClassOf: ["bibo:Collection".freeze, term(
          allValuesFrom: "bibo:Issue".freeze,
          onProperty: "dc:hasPart".freeze,
          type: "owl:Restriction".freeze
        ), term(
          minCardinality: "1".freeze,
          onProperty: "dc:hasPart".freeze,
          type: "owl:Restriction".freeze
        )],
      type: "owl:Class".freeze,
      "vs:term_status": "stable".freeze
    term :PersonalCommunication,
      comment: %(A communication between an agent and one or more specific recipients.).freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "Personal Communication".freeze,
      subClassOf: "http://purl.org/NET/c4dm/event.owl#Event".freeze,
      type: "owl:Class".freeze,
      "vs:term_status": "stable".freeze
    term :PersonalCommunicationDocument,
      comment: %(A personal communication manifested in some document.).freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "Personal Communication Document".freeze,
      subClassOf: "bibo:Document".freeze,
      type: "owl:Class".freeze,
      "vs:term_status": "stable".freeze
    term :Proceedings,
      comment: %(A compilation of documents published from an event, such as a conference.).freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "Proceedings".freeze,
      subClassOf: "bibo:Book".freeze,
      type: "owl:Class".freeze,
      "vs:term_status": "unstable".freeze
    term :Quote,
      comment: %(An excerpted collection of words.).freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "Quote".freeze,
      subClassOf: "bibo:Excerpt".freeze,
      type: "owl:Class".freeze,
      "vs:term_status": "stable".freeze
    term :ReferenceSource,
      comment: %(A document that presents authoritative reference information, such as a dictionary or encylopedia .).freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "Reference Source".freeze,
      subClassOf: "bibo:Document".freeze,
      type: "owl:Class".freeze,
      "vs:term_status": "unstable".freeze
    term :Report,
      comment: %(A document describing an account or statement describing in detail an event, situation, or the like, usually as the result of observation, inquiry, etc..).freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "Report".freeze,
      subClassOf: "bibo:Document".freeze,
      type: "owl:Class".freeze,
      "vs:term_status": "stable".freeze
    term :Series,
      comment: %(A loose, thematic, collection of Documents, often Books.).freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "Series".freeze,
      subClassOf: ["bibo:Collection".freeze, term(
          allValuesFrom: "bibo:Document".freeze,
          onProperty: "dc:hasPart".freeze,
          type: "owl:Restriction".freeze
        )],
      type: "owl:Class".freeze,
      "vs:term_status": "stable".freeze
    term :Slide,
      comment: %(A slide in a slideshow).freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "Slide".freeze,
      subClassOf: "bibo:DocumentPart".freeze,
      type: "owl:Class".freeze,
      "vs:term_status": "unstable".freeze
    term :Slideshow,
      comment: %(A presentation of a series of slides, usually presented in front of an audience with written text and images.).freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "Slideshow".freeze,
      subClassOf: ["bibo:Document".freeze, term(
          allValuesFrom: "bibo:Slide".freeze,
          onProperty: "dc:hasPart".freeze,
          type: "owl:Restriction".freeze
        )],
      type: "owl:Class".freeze,
      "vs:term_status": "stable".freeze
    term :Specification,
      comment: %(A document describing a specification.).freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "Specification".freeze,
      subClassOf: "bibo:Document".freeze,
      type: "owl:Class".freeze,
      "vs:term_status": "testing".freeze
    term :Standard,
      comment: %(A document describing a standard: a specification organized through a standards body.).freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "Standard".freeze,
      subClassOf: "bibo:Specification".freeze,
      type: "owl:Class".freeze,
      "vs:term_status": "stable".freeze
    term :Statute,
      comment: %(A bill enacted into law.).freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "Statute".freeze,
      subClassOf: "bibo:Legislation".freeze,
      type: "owl:Class".freeze,
      "vs:term_status": "stable".freeze
    term :Thesis,
      comment: %(A document created to summarize research findings associated with the completion of an academic degree.).freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "Thesis".freeze,
      subClassOf: "bibo:Document".freeze,
      type: "owl:Class".freeze,
      "vs:term_status": "stable".freeze
    term :ThesisDegree,
      comment: %(The academic degree of a Thesis).freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "Thesis degree".freeze,
      type: "owl:Class".freeze,
      "vs:term_status": "stable".freeze
    term :Webpage,
      comment: %(A web page is an online document available \(at least initially\) on the world wide web. A web page is written first and foremost to appear on the web, as distinct from other online resources such as books, manuscripts or audio documents which use the web primarily as a distribution mechanism alongside other more traditional methods such as print.).freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "Webpage".freeze,
      subClassOf: "bibo:Document".freeze,
      type: "owl:Class".freeze,
      "vs:term_status": "unstable".freeze
    term :Website,
      comment: %(A group of Webpages accessible on the Web.).freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "Website".freeze,
      subClassOf: ["bibo:Collection".freeze, term(
          allValuesFrom: "bibo:Webpage".freeze,
          onProperty: "dc:hasPart".freeze,
          type: "owl:Restriction".freeze
        ), term(
          minCardinality: "1".freeze,
          onProperty: "dc:hasPart".freeze,
          type: "owl:Restriction".freeze
        )],
      type: "owl:Class".freeze,
      "vs:term_status": "unstable".freeze
    term :Workshop,
      comment: %(A seminar, discussion group, or the like, that emphasizes zxchange of ideas and the demonstration and application of techniques, skills, etc.).freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "Workshop".freeze,
      subClassOf: "http://purl.org/NET/c4dm/event.owl#Event".freeze,
      type: "owl:Class".freeze,
      "vs:term_status": "stable".freeze

    # Property definitions
    property :abstract,
      comment: %(A summary of the resource.).freeze,
      domain: "rdfs:Resource".freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "abstract".freeze,
      range: "rdfs:Literal".freeze,
      type: "owl:DatatypeProperty".freeze,
      "vs:term_status": "stable".freeze
    property :affirmedBy,
      comment: %(A legal decision that affirms a ruling.).freeze,
      domain: "bibo:LegalDecision".freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      range: "bibo:LegalDecision".freeze,
      subPropertyOf: "bibo:subsequentLegalDecision".freeze,
      type: "owl:ObjectProperty".freeze
    property :annotates,
      comment: %(Critical or explanatory note for a Document.).freeze,
      domain: "bibo:Note".freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "annotates".freeze,
      range: "rdfs:Resource".freeze,
      subPropertyOf: "dc:relation".freeze,
      type: "owl:ObjectProperty".freeze,
      "vs:term_status": "stable".freeze
    property :argued,
      comment: %(The date on which a legal case is argued before a court. Date is of format xsd:date).freeze,
      domain: "bibo:LegalDocument".freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "date argued".freeze,
      range: "rdfs:Literal".freeze,
      type: "owl:DatatypeProperty".freeze,
      "vs:term_status": "unstable".freeze
    property :asin,
      domain: term(
          type: "owl:Class".freeze,
          unionOf: list("bibo:Collection".freeze, "bibo:Document".freeze)
        ),
      range: "rdfs:Literal".freeze,
      subPropertyOf: "bibo:identifier".freeze,
      type: "owl:DatatypeProperty".freeze
    property :authorList,
      comment: %(An ordered list of authors. Normally, this list is seen as a priority list that order authors by importance.).freeze,
      domain: "bibo:Document".freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "list of authors".freeze,
      range: term(
          type: "owl:Class".freeze,
          unionOf: list("rdf:List".freeze, "rdf:Seq".freeze)
        ),
      subPropertyOf: "bibo:contributorList".freeze,
      type: "owl:ObjectProperty".freeze,
      "vs:term_status": "stable".freeze
    property :chapter,
      comment: %(An chapter number).freeze,
      domain: "bibo:BookSection".freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "chapter".freeze,
      range: "rdfs:Literal".freeze,
      subPropertyOf: "bibo:locator".freeze,
      type: "owl:DatatypeProperty".freeze,
      "vs:term_status": "unstable".freeze
    property :citedBy,
      comment: %(Relates a document to another document that cites the
first document.).freeze,
      domain: "bibo:Document".freeze,
      inverseOf: "bibo:cites".freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "cited by".freeze,
      range: "bibo:Document".freeze,
      type: "owl:ObjectProperty".freeze,
      "vs:term_status": "unstable".freeze
    property :cites,
      comment: %(Relates a document to another document that is cited
by the first document as reference, comment, review, quotation or for
another purpose.).freeze,
      domain: "bibo:Document".freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "cites".freeze,
      range: "bibo:Document".freeze,
      subPropertyOf: "dc:references".freeze,
      type: "owl:ObjectProperty".freeze,
      "vs:term_status": "unstable".freeze
    property :coden,
      domain: term(
          type: "owl:Class".freeze,
          unionOf: list("bibo:Collection".freeze, "bibo:Document".freeze)
        ),
      range: "rdfs:Literal".freeze,
      subPropertyOf: "bibo:identifier".freeze,
      type: "owl:DatatypeProperty".freeze
    property :content,
      comment: %(This property is for a plain-text rendering of the content of a Document. While the plain-text content of an entire document could be described by this property.).freeze,
      domain: "bibo:Document".freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "content".freeze,
      "owl:deprecated": "true".freeze,
      range: "rdfs:Literal".freeze,
      "skos:historyNote": "bibo:content has been deprecated; we recommend to use \"rdf:value\" for this purpose. Here is the rational behind this choice: http://www.w3.org/TR/2004/REC-rdf-primer-20040210/#rdfvalue".freeze,
      type: "owl:DatatypeProperty".freeze,
      "vs:term_status": "unstable".freeze
    property :contributorList,
      comment: %(An ordered list of contributors. Normally, this list is seen as a priority list that order contributors by importance.).freeze,
      domain: "bibo:Document".freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "list of contributors".freeze,
      range: term(
          type: "owl:Class".freeze,
          unionOf: list("rdf:List".freeze, "rdf:Seq".freeze)
        ),
      type: "owl:ObjectProperty".freeze,
      "vs:term_status": "stable".freeze
    property :court,
      comment: %(A court associated with a legal document; for example, that which issues a decision.).freeze,
      domain: "bibo:LegalDocument".freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "court".freeze,
      range: "foaf:Organization".freeze,
      type: "owl:ObjectProperty".freeze,
      "vs:term_status": "unstable".freeze
    property :degree,
      comment: %(The thesis degree.).freeze,
      domain: "bibo:Thesis".freeze,
      editorialNote: %(We are not defining, using an enumeration, the range of the bibo:degree to the defined list of bibo:ThesisDegree. We won't do it because we want people to be able to define new degress if needed by some special usecases. Creating such an enumeration would restrict this to happen.).freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "degree".freeze,
      range: "bibo:ThesisDegree".freeze,
      type: "owl:ObjectProperty".freeze,
      "vs:term_status": "unstable".freeze
    property :director,
      comment: %(A Film director.).freeze,
      domain: "bibo:AudioVisualDocument".freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "director".freeze,
      range: "foaf:Agent".freeze,
      subPropertyOf: "dc:contributor".freeze,
      type: "owl:ObjectProperty".freeze,
      "vs:term_status": "stable".freeze
    property :distributor,
      comment: %(Distributor of a document or a collection of documents.).freeze,
      domain: term(
          type: "owl:Class".freeze,
          unionOf: list("bibo:Collection".freeze, "bibo:Document".freeze)
        ),
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "distributor".freeze,
      range: "foaf:Agent".freeze,
      type: "owl:ObjectProperty".freeze,
      "vs:term_status": "stable".freeze
    property :doi,
      domain: term(
          type: "owl:Class".freeze,
          unionOf: list("bibo:Collection".freeze, "bibo:Document".freeze)
        ),
      range: "rdfs:Literal".freeze,
      subPropertyOf: "bibo:identifier".freeze,
      type: "owl:DatatypeProperty".freeze
    property :eanucc13,
      domain: term(
          type: "owl:Class".freeze,
          unionOf: list("bibo:Collection".freeze, "bibo:Document".freeze)
        ),
      range: "rdfs:Literal".freeze,
      subPropertyOf: "bibo:identifier".freeze,
      type: "owl:DatatypeProperty".freeze
    property :edition,
      comment: %(The name defining a special edition of a document. Normally its a literal value composed of a version number and words.).freeze,
      domain: "bibo:Document".freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "edition".freeze,
      range: "rdfs:Literal".freeze,
      type: "owl:DatatypeProperty".freeze,
      "vs:term_status": "stable".freeze
    property :editor,
      comment: %(A person having managerial and sometimes policy-making responsibility for the editorial part of a publishing firm or of a newspaper, magazine, or other publication.).freeze,
      domain: term(
          type: "owl:Class".freeze,
          unionOf: list("bibo:Collection".freeze, "bibo:Document".freeze)
        ),
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "editor".freeze,
      range: "foaf:Agent".freeze,
      subPropertyOf: "dc:contributor".freeze,
      type: "owl:ObjectProperty".freeze,
      "vs:term_status": "stable".freeze
    property :editorList,
      comment: %(An ordered list of editors. Normally, this list is seen as a priority list that order editors by importance.).freeze,
      domain: "bibo:Document".freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "list of editors".freeze,
      range: term(
          type: "owl:Class".freeze,
          unionOf: list("rdf:List".freeze, "rdf:Seq".freeze)
        ),
      subPropertyOf: "bibo:contributorList".freeze,
      type: "owl:ObjectProperty".freeze,
      "vs:term_status": "stable".freeze
    property :eissn,
      domain: "bibo:Collection".freeze,
      range: "rdfs:Literal".freeze,
      subPropertyOf: "bibo:identifier".freeze,
      type: "owl:DatatypeProperty".freeze
    property :gtin14,
      domain: term(
          type: "owl:Class".freeze,
          unionOf: list("bibo:Collection".freeze, "bibo:Document".freeze)
        ),
      range: "rdfs:Literal".freeze,
      subPropertyOf: "bibo:identifier".freeze,
      type: "owl:DatatypeProperty".freeze
    property :handle,
      domain: term(
          type: "owl:Class".freeze,
          unionOf: list("bibo:Collection".freeze, "bibo:Document".freeze)
        ),
      range: "rdfs:Literal".freeze,
      subPropertyOf: "bibo:identifier".freeze,
      type: "owl:DatatypeProperty".freeze
    property :identifier,
      domain: term(
          type: "owl:Class".freeze,
          unionOf: list("bibo:Collection".freeze, "bibo:Document".freeze)
        ),
      range: "rdfs:Literal".freeze,
      type: "owl:DatatypeProperty".freeze
    property :interviewee,
      comment: %(An agent that is interviewed by another agent.).freeze,
      domain: "foaf:Agent".freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "interviewee".freeze,
      range: "foaf:Agent".freeze,
      subPropertyOf: "dc:contributor".freeze,
      type: "owl:ObjectProperty".freeze,
      "vs:term_status": "stable".freeze
    property :interviewer,
      comment: %(An agent that interview another agent.).freeze,
      domain: "foaf:Agent".freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "interviewer".freeze,
      range: "foaf:Agent".freeze,
      subPropertyOf: "dc:contributor".freeze,
      type: "owl:ObjectProperty".freeze,
      "vs:term_status": "stable".freeze
    property :isbn,
      subPropertyOf: "bibo:identifier".freeze,
      type: "owl:DatatypeProperty".freeze
    property :isbn10,
      domain: term(
          type: "owl:Class".freeze,
          unionOf: list("bibo:Collection".freeze, "bibo:Document".freeze)
        ),
      range: "rdfs:Literal".freeze,
      subPropertyOf: "bibo:isbn".freeze,
      type: "owl:DatatypeProperty".freeze
    property :isbn13,
      domain: term(
          type: "owl:Class".freeze,
          unionOf: list("bibo:Collection".freeze, "bibo:Document".freeze)
        ),
      range: "rdfs:Literal".freeze,
      subPropertyOf: "bibo:isbn".freeze,
      type: "owl:DatatypeProperty".freeze
    property :issn,
      domain: "bibo:Collection".freeze,
      range: "rdfs:Literal".freeze,
      subPropertyOf: "bibo:identifier".freeze,
      type: "owl:DatatypeProperty".freeze
    property :issue,
      comment: %(An issue number).freeze,
      domain: "bibo:Issue".freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "issue".freeze,
      range: "rdfs:Literal".freeze,
      subPropertyOf: "bibo:locator".freeze,
      type: "owl:DatatypeProperty".freeze,
      "vs:term_status": "stable".freeze
    property :issuer,
      comment: %(An entity responsible for issuing often informally published documents such as press releases, reports, etc.).freeze,
      domain: term(
          type: "owl:Class".freeze,
          unionOf: list("bibo:Collection".freeze, "bibo:Document".freeze)
        ),
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "issuer".freeze,
      range: "foaf:Agent".freeze,
      subPropertyOf: "dc:publisher".freeze,
      type: "owl:ObjectProperty".freeze,
      "vs:term_status": "unstable".freeze
    property :lccn,
      domain: term(
          type: "owl:Class".freeze,
          unionOf: list("bibo:Collection".freeze, "bibo:Document".freeze)
        ),
      range: "rdfs:Literal".freeze,
      subPropertyOf: "bibo:identifier".freeze,
      type: "owl:DatatypeProperty".freeze
    property :locator,
      comment: %(A description \(often numeric\) that locates an item within a containing document or collection.).freeze,
      domain: "bibo:Document".freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "locator".freeze,
      range: "rdfs:Literal".freeze,
      type: "owl:DatatypeProperty".freeze,
      "vs:term_status": "stable".freeze
    property :numPages,
      comment: %(The number of pages contained in a document).freeze,
      domain: "bibo:Document".freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "number of pages".freeze,
      range: "rdfs:Literal".freeze,
      type: "owl:DatatypeProperty".freeze,
      "vs:term_status": "stable".freeze
    property :numVolumes,
      comment: %(The number of volumes contained in a collection of documents \(usually a series, periodical, etc.\).).freeze,
      domain: "bibo:Collection".freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "number of volumes".freeze,
      range: "rdfs:Literal".freeze,
      type: "owl:DatatypeProperty".freeze,
      "vs:term_status": "stable".freeze
    property :number,
      comment: %(A generic item or document number. Not to be confused with issue number.).freeze,
      domain: "bibo:Document".freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "number".freeze,
      range: "rdfs:Literal".freeze,
      type: "owl:DatatypeProperty".freeze,
      "vs:term_status": "stable".freeze
    property :oclcnum,
      domain: term(
          type: "owl:Class".freeze,
          unionOf: list("bibo:Collection".freeze, "bibo:Document".freeze)
        ),
      range: "rdfs:Literal".freeze,
      subPropertyOf: "bibo:identifier".freeze,
      type: "owl:DatatypeProperty".freeze
    property :organizer,
      comment: %(The organizer of an event; includes conference organizers, but also government agencies or other bodies that are responsible for conducting hearings.).freeze,
      domain: "http://purl.org/NET/c4dm/event.owl#Event".freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "organizer".freeze,
      range: "foaf:Agent".freeze,
      type: "owl:ObjectProperty".freeze,
      "vs:term_status": "unstable".freeze
    property :owner,
      comment: %(Owner of a document or a collection of documents.).freeze,
      domain: term(
          type: "owl:Class".freeze,
          unionOf: list("bibo:Collection".freeze, "bibo:Document".freeze)
        ),
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "owner".freeze,
      range: "foaf:Agent".freeze,
      type: "owl:ObjectProperty".freeze,
      "vs:term_status": "unstable".freeze
    property :pageEnd,
      comment: %(Ending page number within a continuous page range.).freeze,
      domain: "bibo:Document".freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "page end".freeze,
      range: "rdfs:Literal".freeze,
      subPropertyOf: "bibo:locator".freeze,
      type: "owl:DatatypeProperty".freeze,
      "vs:term_status": "stable".freeze
    property :pageStart,
      comment: %(Starting page number within a continuous page range.).freeze,
      domain: "bibo:Document".freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "page start".freeze,
      range: "rdfs:Literal".freeze,
      subPropertyOf: "bibo:locator".freeze,
      type: "owl:DatatypeProperty".freeze,
      "vs:term_status": "stable".freeze
    property :pages,
      comment: %(A string of non-contiguous page spans that locate a Document within a Collection. Example: 23-25, 34, 54-56. For continuous page ranges, use the pageStart and pageEnd properties.).freeze,
      domain: "bibo:Document".freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "pages".freeze,
      range: "rdfs:Literal".freeze,
      subPropertyOf: "bibo:locator".freeze,
      type: "owl:DatatypeProperty".freeze,
      "vs:term_status": "stable".freeze
    property :performer,
      domain: "bibo:Performance".freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "performer".freeze,
      range: "foaf:Agent".freeze,
      subPropertyOf: "dc:contributor".freeze,
      type: "owl:ObjectProperty".freeze,
      "vs:term_status": "stable".freeze
    property :pmid,
      domain: term(
          type: "owl:Class".freeze,
          unionOf: list("bibo:Collection".freeze, "bibo:Document".freeze)
        ),
      range: "rdfs:Literal".freeze,
      subPropertyOf: "bibo:identifier".freeze,
      type: "owl:DatatypeProperty".freeze
    property :prefixName,
      comment: %(The prefix of a name).freeze,
      domain: "foaf:Agent".freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "prefix name".freeze,
      range: "rdfs:Literal".freeze,
      type: "owl:DatatypeProperty".freeze,
      "vs:term_status": "stable".freeze
    property :presentedAt,
      comment: %(Relates a document to an event; for example, a paper to a conference.).freeze,
      domain: "bibo:Document".freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "presented at".freeze,
      range: "bibo:Event".freeze,
      subPropertyOf: "http://purl.org/NET/c4dm/event.owl#produced_in".freeze,
      type: "owl:ObjectProperty".freeze,
      "vs:term_status": "unstable".freeze
    property :presents,
      comment: %(Relates an event to associated documents; for example, conference to a paper.).freeze,
      domain: "bibo:Event".freeze,
      inverseOf: "bibo:presentedAt".freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "presents".freeze,
      range: "bibo:Document".freeze,
      subPropertyOf: "http://purl.org/NET/c4dm/event.owl#product".freeze,
      type: "owl:ObjectProperty".freeze,
      "vs:term_status": "unstable".freeze
    property :producer,
      comment: %(Producer of a document or a collection of documents.).freeze,
      domain: term(
          type: "owl:Class".freeze,
          unionOf: list("bibo:Collection".freeze, "bibo:Document".freeze)
        ),
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "producer".freeze,
      range: "foaf:Agent".freeze,
      type: "owl:ObjectProperty".freeze,
      "vs:term_status": "stable".freeze
    property :recipient,
      comment: %(An agent that receives a communication document.).freeze,
      domain: "bibo:PersonalCommunicationDocument".freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "recipient".freeze,
      range: "foaf:Agent".freeze,
      type: "owl:ObjectProperty".freeze,
      "vs:term_status": "stable".freeze
    property :reproducedIn,
      comment: %(The resource in which another resource is reproduced.).freeze,
      domain: "bibo:Document".freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      range: "bibo:Document".freeze,
      subPropertyOf: "dc:isPartOf".freeze,
      type: "owl:ObjectProperty".freeze,
      "vs:term_status": "unstable".freeze
    property :reversedBy,
      comment: %(A legal decision that reverses a ruling.).freeze,
      domain: "bibo:LegalDecision".freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      range: "bibo:LegalDecision".freeze,
      subPropertyOf: "bibo:subsequentLegalDecision".freeze,
      type: "owl:ObjectProperty".freeze
    property :reviewOf,
      comment: %(Relates a review document to a reviewed thing \(resource, item, etc.\).).freeze,
      domain: "bibo:Document".freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "review of".freeze,
      range: "rdfs:Resource".freeze,
      subPropertyOf: "dc:relation".freeze,
      type: "owl:ObjectProperty".freeze,
      "vs:term_status": "stable".freeze
    property :section,
      comment: %(A section number).freeze,
      domain: "bibo:Document".freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "section".freeze,
      range: "rdfs:Literal".freeze,
      "skos:example": "Di Rado, Alicia. 1995. Trekking through college: Classes explore\nmodern society using the world of Star trek. Los Angeles Times, March\n15, sec. A, p. 3.".freeze,
      subPropertyOf: "bibo:locator".freeze,
      type: "owl:DatatypeProperty".freeze,
      "vs:term_status": "unstable".freeze
    property :shortDescription,
      domain: "bibo:Document".freeze,
      range: "rdfs:Literal".freeze,
      type: "owl:DatatypeProperty".freeze
    property :shortTitle,
      comment: %(The abbreviation of a title.).freeze,
      domain: "bibo:Document".freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "short title".freeze,
      range: "rdfs:Literal".freeze,
      type: "owl:DatatypeProperty".freeze,
      "vs:term_status": "stable".freeze
    property :sici,
      domain: term(
          type: "owl:Class".freeze,
          unionOf: list("bibo:Collection".freeze, "bibo:Document".freeze)
        ),
      range: "rdfs:Literal".freeze,
      subPropertyOf: "bibo:identifier".freeze,
      type: "owl:DatatypeProperty".freeze
    property :status,
      comment: %(The publication status of \(typically academic\) content.).freeze,
      domain: "bibo:Document".freeze,
      editorialNote: %(We are not defining, using an enumeration, the range of the bibo:status to the defined list of bibo:DocumentStatus. We won't do it because we want people to be able to define new status if needed by some special usecases. Creating such an enumeration would restrict this to happen.).freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "status".freeze,
      range: "bibo:DocumentStatus".freeze,
      type: "owl:ObjectProperty".freeze,
      "vs:term_status": "stable".freeze
    property :subsequentLegalDecision,
      comment: %(A legal decision on appeal that takes action on a case \(affirming it, reversing it, etc.\).).freeze,
      domain: "bibo:LegalDecision".freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      range: "bibo:LegalDecision".freeze,
      subPropertyOf: "dc:isReferencedBy".freeze,
      type: "owl:ObjectProperty".freeze
    property :suffixName,
      comment: %(The suffix of a name).freeze,
      domain: "foaf:Agent".freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "suffix name".freeze,
      range: "rdfs:Literal".freeze,
      type: "owl:DatatypeProperty".freeze,
      "vs:term_status": "stable".freeze
    property :transcriptOf,
      comment: %(Relates a document to some transcribed original.).freeze,
      domain: "bibo:Document".freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "transcript of".freeze,
      range: "rdfs:Resource".freeze,
      subPropertyOf: "dc:relation".freeze,
      type: "owl:ObjectProperty".freeze,
      "vs:term_status": "unstable".freeze
    property :translationOf,
      comment: %(Relates a translated document to the original document.).freeze,
      domain: "bibo:Document".freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "translation of".freeze,
      range: "bibo:Document".freeze,
      subPropertyOf: "dc:isVersionOf".freeze,
      type: "owl:ObjectProperty".freeze,
      "vs:term_status": "stable".freeze
    property :translator,
      comment: %(A person who translates written document from one language to another.).freeze,
      domain: term(
          type: "owl:Class".freeze,
          unionOf: list("bibo:Collection".freeze, "bibo:Document".freeze)
        ),
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "translator".freeze,
      range: "foaf:Agent".freeze,
      subPropertyOf: "dc:contributor".freeze,
      type: "owl:ObjectProperty".freeze,
      "vs:term_status": "stable".freeze
    property :upc,
      domain: term(
          type: "owl:Class".freeze,
          unionOf: list("bibo:Collection".freeze, "bibo:Document".freeze)
        ),
      range: "rdfs:Literal".freeze,
      subPropertyOf: "bibo:identifier".freeze,
      type: "owl:DatatypeProperty".freeze
    property :uri,
      comment: %(Universal Resource Identifier of a document).freeze,
      domain: term(
          type: "owl:Class".freeze,
          unionOf: list("bibo:Collection".freeze, "bibo:Document".freeze)
        ),
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "uri".freeze,
      range: "rdfs:Literal".freeze,
      subPropertyOf: "bibo:identifier".freeze,
      type: "owl:DatatypeProperty".freeze,
      "vs:term_status": "stable".freeze
    property :volume,
      comment: %(A volume number).freeze,
      domain: "bibo:Document".freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      label: "volume".freeze,
      range: "rdfs:Literal".freeze,
      subPropertyOf: "bibo:locator".freeze,
      type: "owl:DatatypeProperty".freeze,
      "vs:term_status": "stable".freeze

    # Extra definitions
    term :bdarcus,
      "foaf:name": "Bruce D'Arcus".freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      "rdfs:seeAlso": "http://purl.org/net/darcusb/info#me".freeze,
      type: ["foaf:Person".freeze, "owl:NamedIndividual".freeze, "owl:Thing".freeze]
    term :"degrees/ma",
      comment: %(masters degree in arts).freeze,
      label: "M.A.".freeze,
      type: ["bibo:ThesisDegree".freeze, "owl:NamedIndividual".freeze, "owl:Thing".freeze],
      "vs:term_status": "stable".freeze
    term :"degrees/ms",
      comment: %(masters degree in science).freeze,
      label: "M.S.".freeze,
      type: ["bibo:ThesisDegree".freeze, "owl:NamedIndividual".freeze, "owl:Thing".freeze],
      "vs:term_status": "stable".freeze
    term :"degrees/phd",
      comment: %(PhD degree).freeze,
      label: "PhD degree".freeze,
      type: ["bibo:ThesisDegree".freeze, "owl:NamedIndividual".freeze, "owl:Thing".freeze],
      "vs:term_status": "stable".freeze
    term :fgiasson,
      "foaf:name": "Frederick Giasson".freeze,
      isDefinedBy: "http://purl.org/ontology/bibo/".freeze,
      "rdfs:seeAlso": "http://fgiasson.com/me/".freeze,
      type: ["foaf:Person".freeze, "owl:NamedIndividual".freeze, "owl:Thing".freeze]
    term :"status/accepted",
      comment: %(Accepted for publication after peer reviewing.).freeze,
      label: "accepted".freeze,
      type: ["bibo:DocumentStatus".freeze, "owl:NamedIndividual".freeze, "owl:Thing".freeze],
      "vs:term_status": "stable".freeze
    term :"status/draft",
      comment: %(Document drafted).freeze,
      label: "draft".freeze,
      type: ["bibo:DocumentStatus".freeze, "owl:NamedIndividual".freeze, "owl:Thing".freeze],
      "vs:term_status": "stable".freeze
    term :"status/forthcoming",
      comment: %(Document to be published).freeze,
      label: "forthcoming".freeze,
      type: ["bibo:DocumentStatus".freeze, "owl:NamedIndividual".freeze, "owl:Thing".freeze],
      "vs:term_status": "stable".freeze
    term :"status/legal",
      comment: %(Legal document).freeze,
      label: "legal".freeze,
      type: ["bibo:DocumentStatus".freeze, "owl:NamedIndividual".freeze, "owl:Thing".freeze],
      "vs:term_status": "stable".freeze
    term :"status/nonPeerReviewed",
      comment: %(A document that is not peer reviewed).freeze,
      label: "non peer reviewed".freeze,
      type: ["bibo:DocumentStatus".freeze, "owl:NamedIndividual".freeze, "owl:Thing".freeze],
      "vs:term_status": "stable".freeze
    term :"status/peerReviewed",
      comment: %(The process by which articles are chosen to be included in a refereed journal. An editorial board consisting of experts in the same field as the author review the article and decide if it is authoritative enough for publication.).freeze,
      label: "peer reviewed".freeze,
      type: ["bibo:DocumentStatus".freeze, "owl:NamedIndividual".freeze, "owl:Thing".freeze],
      "vs:term_status": "stable".freeze
    term :"status/published",
      comment: %(Published document).freeze,
      label: "published".freeze,
      type: ["bibo:DocumentStatus".freeze, "owl:NamedIndividual".freeze, "owl:Thing".freeze],
      "vs:term_status": "stable".freeze
    term :"status/rejected",
      comment: %(Rejected for publication after peer reviewing.).freeze,
      label: "rejected".freeze,
      type: ["bibo:DocumentStatus".freeze, "owl:NamedIndividual".freeze, "owl:Thing".freeze],
      "vs:term_status": "stable".freeze
    term :"status/unpublished",
      comment: %(Unpublished document).freeze,
      label: "unpublished".freeze,
      type: ["bibo:DocumentStatus".freeze, "owl:NamedIndividual".freeze, "owl:Thing".freeze],
      "vs:term_status": "stable".freeze
  end
end
