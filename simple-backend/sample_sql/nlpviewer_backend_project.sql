BEGIN TRANSACTION;
INSERT INTO "nlpviewer_backend_project" ("id","name","ontology","user_id","config", "project_type") VALUES (5,'project-1-example','{

  "name": "base_ontology",

  "definitions": [

    {

      "entry_name": "ft.onto.base_ontology.Token",

      "parent_entry": "forte.data.ontology.top.Annotation",

      "description": "A span based annotation :class:`Token`, used to represent a token or a word.",

      "attributes": [

        {

          "name": "pos",

          "type": "str"

        },

        {

          "name": "ud_xpos",

          "type": "str",

          "description": "Language specific pos tag. Used in CoNLL-U Format. Refer to https://universaldependencies.org/format.html"

        },

        {

          "name": "lemma",

          "type": "str",

          "description": "Lemma or stem of word form."

        },

        {

          "name": "chunk",

          "type": "str"

        },

        {

          "name": "ner",

          "type": "str"

        },

        {

          "name": "sense",

          "type": "str"

        },

        {

          "name": "is_root",

          "type": "bool"

        },

        {

          "name": "ud_features",

          "type": "Dict",

          "key_type": "str",

          "value_type": "str"

        },

        {

          "name": "ud_misc",

          "type": "Dict",

          "key_type": "str",

          "value_type": "str"

        }

      ]

    },

    {

      "entry_name": "ft.onto.base_ontology.Document",

      "parent_entry": "forte.data.ontology.top.Annotation",

      "description": "A span based annotation `Document`, normally used to represent a document."

    },

    {

      "entry_name": "ft.onto.base_ontology.Sentence",

      "parent_entry": "forte.data.ontology.top.Annotation",

      "description": "A span based annotation `Sentence`, normally used to represent a sentence.",

      "attributes": [

        {

          "name": "speaker",

          "type": "str"

        },

        {

          "name": "part_id",

          "type": "int"

        },

        {

          "name": "sentiment",

          "type": "Dict",

          "key_type": "str",

          "value_type": "float"

        }

      ]

    },

    {

      "entry_name": "ft.onto.base_ontology.Phrase",

      "parent_entry": "forte.data.ontology.top.Annotation",

      "description": "A span based annotation `Phrase`.",

      "attributes": [

        {

          "name": "phrase_type",

          "type": "str"

        }

      ]

    },

    {

      "entry_name": "ft.onto.base_ontology.Utterance",

      "parent_entry": "forte.data.ontology.top.Annotation",

      "description": "A span based annotation `Utterance`, normally used to represent an utterance in dialogue."

    },

    {

      "entry_name": "ft.onto.base_ontology.PredicateArgument",

      "parent_entry": "forte.data.ontology.top.Annotation",

      "description": "A span based annotation `PredicateArgument`, normally used to represent an argument of a predicate, can be linked to the predicate via the predicate link.",

      "attributes": [

        {

          "name": "ner_type",

          "type": "str"

        },

        {

          "name": "predicate_lemma",

          "type": "str"

        },

        {

          "name": "is_verb",

          "type": "bool"

        }

      ]

    },

    {

      "entry_name": "ft.onto.base_ontology.EntityMention",

      "parent_entry": "forte.data.ontology.top.Annotation",

      "description": "A span based annotation `EntityMention`, normally used to represent an Entity Mention in a piece of text.",

      "attributes": [

        {

          "name": "ner_type",

          "type": "str"

        }

      ]

    },

    {

      "entry_name": "ft.onto.base_ontology.EventMention",

      "parent_entry": "forte.data.ontology.top.Annotation",

      "description": "A span based annotation `EventMention`, used to refer to a mention of an event.",

      "attributes": [

        {

          "name": "event_type",

          "type": "str"

        }

      ]

    },

    {

      "entry_name": "ft.onto.base_ontology.PredicateMention",

      "parent_entry": "forte.data.ontology.top.Annotation",

      "description": "A span based annotation `PredicateMention`, normally used to represent a predicate (normally verbs) in a piece of text.",

      "attributes": [

        {

          "name": "predicate_lemma",

          "type": "str"

        },

        {

          "name": "framenet_id",

          "type": "str"

        },

        {

          "name": "is_verb",

          "type": "bool"

        }

      ]

    },

    {

      "entry_name": "ft.onto.base_ontology.PredicateLink",

      "parent_entry": "forte.data.ontology.top.Link",

      "description": "A `Link` type entry which represent a semantic role link between a predicate and its argument.",

      "attributes": [

        {

          "name": "arg_type",

          "type": "str",

          "description": "The predicate link type."

        }

      ],

      "parent_type": "ft.onto.base_ontology.PredicateMention",

      "child_type": "ft.onto.base_ontology.PredicateArgument"

    },

    {

      "entry_name": "ft.onto.base_ontology.Dependency",

      "parent_entry": "forte.data.ontology.top.Link",

      "description": "A `Link` type entry which represent a syntactic dependency.",

      "attributes": [

        {

          "name": "dep_label",

          "type": "str",

          "description": "The dependency label."

        },

        {

          "name": "rel_type",

          "type": "str"

        }

      ],

      "parent_type": "ft.onto.base_ontology.Token",

      "child_type": "ft.onto.base_ontology.Token"

    },

    {

      "entry_name": "ft.onto.base_ontology.EnhancedDependency",

      "parent_entry": "forte.data.ontology.top.Link",

      "description": "A `Link` type entry which represent a enhanced dependency: \n https://universaldependencies.org/u/overview/enhanced-syntax.html",

      "attributes": [

        {

          "name": "dep_label",

          "type": "str",

          "description": "The enhanced dependency label in Universal Dependency."

        }

      ],

      "parent_type": "ft.onto.base_ontology.Token",

      "child_type": "ft.onto.base_ontology.Token"

    },

    {

      "entry_name": "ft.onto.base_ontology.RelationLink",

      "parent_entry": "forte.data.ontology.top.Link",

      "description": "A `Link` type entry which represent a relation between two entity mentions",

      "attributes": [

        {

          "name": "rel_type",

          "type": "str",

          "description": "The type of the relation."

        }

      ],

      "parent_type": "ft.onto.base_ontology.EntityMention",

      "child_type": "ft.onto.base_ontology.EntityMention"

    },

    {

      "entry_name": "ft.onto.base_ontology.CrossDocEntityRelation",

      "parent_entry": "forte.data.ontology.top.MultiPackLink",

      "description": "A `Link` type entry which represent a relation between two entity mentions across the packs.",

      "attributes": [

        {

          "name": "rel_type",

          "type": "str",

          "description": "The type of the relation."

        }

      ],

      "parent_type": "ft.onto.base_ontology.EntityMention",

      "child_type": "ft.onto.base_ontology.EntityMention"

    },

    {

      "entry_name": "ft.onto.base_ontology.CoreferenceGroup",

      "parent_entry": "forte.data.ontology.top.Group",

      "description": "A group type entry that take `EntityMention`, as members, used to represent coreferent group of entities.",

      "member_type": "ft.onto.base_ontology.EntityMention"

    },

    {

      "entry_name": "ft.onto.base_ontology.EventRelation",

      "parent_entry": "forte.data.ontology.top.Link",

      "description": "A `Link` type entry which represent a relation between two event mentions.",

      "attributes": [

        {

          "name": "rel_type",

          "type": "str",

          "description": "The type of the relation."

        }

      ],

      "parent_type": "ft.onto.base_ontology.EventMention",

      "child_type": "ft.onto.base_ontology.EventMention"

    },

    {

      "entry_name": "ft.onto.base_ontology.CrossDocEventRelation",

      "parent_entry": "forte.data.ontology.top.MultiPackLink",

      "description": "A `Link` type entry which represent a relation between two event mentions across the packs.",

      "attributes": [

        {

          "name": "rel_type",

          "type": "str",

          "description": "The type of the relation."

        }

      ],

      "parent_type": "ft.onto.base_ontology.EventMention",

      "child_type": "ft.onto.base_ontology.EventMention"

    }

  ]

}',3,'', 'single_pack'),
 (7,'project-2-example','{

  "name": "all_ontology",

  "definitions": [

    {

      "entry_name": "ft.onto.base_ontology.Token",

      "parent_entry": "forte.data.ontology.top.Annotation",

      "description": "A span based annotation :class:`Token`, used to represent a token or a word.",

      "attributes": [

        {

          "name": "pos",

          "type": "str"

        },

        {

          "name": "ud_xpos",

          "type": "str",

          "description": "Language specific pos tag. Used in CoNLL-U Format. Refer to https://universaldependencies.org/format.html"

        },

        {

          "name": "lemma",

          "type": "str",

          "description": "Lemma or stem of word form."

        },

        {

          "name": "chunk",

          "type": "str"

        },

        {

          "name": "ner",

          "type": "str"

        },

        {

          "name": "sense",

          "type": "str"

        },

        {

          "name": "is_root",

          "type": "bool"

        },

        {

          "name": "ud_features",

          "type": "Dict",

          "key_type": "str",

          "value_type": "str"

        },

        {

          "name": "ud_misc",

          "type": "Dict",

          "key_type": "str",

          "value_type": "str"

        }

      ]

    },

    {

      "entry_name": "ft.onto.base_ontology.Document",

      "parent_entry": "forte.data.ontology.top.Annotation",

      "description": "A span based annotation `Document`, normally used to represent a document."

    },

    {

      "entry_name": "ft.onto.base_ontology.Sentence",

      "parent_entry": "forte.data.ontology.top.Annotation",

      "description": "A span based annotation `Sentence`, normally used to represent a sentence.",

      "attributes": [

        {

          "name": "speaker",

          "type": "str"

        },

        {

          "name": "part_id",

          "type": "int"

        },

        {

          "name": "sentiment",

          "type": "Dict",

          "key_type": "str",

          "value_type": "float"

        }

      ]

    },

    {

      "entry_name": "ft.onto.base_ontology.Phrase",

      "parent_entry": "forte.data.ontology.top.Annotation",

      "description": "A span based annotation `Phrase`.",

      "attributes": [

        {

          "name": "phrase_type",

          "type": "str"

        }

      ]

    },

    {

      "entry_name": "ft.onto.base_ontology.Utterance",

      "parent_entry": "forte.data.ontology.top.Annotation",

      "description": "A span based annotation `Utterance`, normally used to represent an utterance in dialogue."

    },

    {

      "entry_name": "ft.onto.base_ontology.PredicateArgument",

      "parent_entry": "forte.data.ontology.top.Annotation",

      "description": "A span based annotation `PredicateArgument`, normally used to represent an argument of a predicate, can be linked to the predicate via the predicate link.",

      "attributes": [

        {

          "name": "ner_type",

          "type": "str"

        },

        {

          "name": "predicate_lemma",

          "type": "str"

        },

        {

          "name": "is_verb",

          "type": "bool"

        }

      ]

    },

    {

      "entry_name": "ft.onto.base_ontology.EntityMention",

      "parent_entry": "forte.data.ontology.top.Annotation",

      "description": "A span based annotation `EntityMention`, normally used to represent an Entity Mention in a piece of text.",

      "attributes": [

        {

          "name": "ner_type",

          "type": "str"

        }

      ]

    },

    {

      "entry_name": "ft.onto.base_ontology.EventMention",

      "parent_entry": "forte.data.ontology.top.Annotation",

      "description": "A span based annotation `EventMention`, used to refer to a mention of an event.",

      "attributes": [

        {

          "name": "event_type",

          "type": "str"

        }

      ]

    },

    {

      "entry_name": "ft.onto.base_ontology.PredicateMention",

      "parent_entry": "forte.data.ontology.top.Annotation",

      "description": "A span based annotation `PredicateMention`, normally used to represent a predicate (normally verbs) in a piece of text.",

      "attributes": [

        {

          "name": "predicate_lemma",

          "type": "str"

        },

        {

          "name": "framenet_id",

          "type": "str"

        },

        {

          "name": "is_verb",

          "type": "bool"

        }

      ]

    },

    {

      "entry_name": "ft.onto.base_ontology.PredicateLink",

      "parent_entry": "forte.data.ontology.top.Link",

      "description": "A `Link` type entry which represent a semantic role link between a predicate and its argument.",

      "attributes": [

        {

          "name": "arg_type",

          "type": "str",

          "description": "The predicate link type."

        }

      ],

      "parent_type": "ft.onto.base_ontology.PredicateMention",

      "child_type": "ft.onto.base_ontology.PredicateArgument"

    },

    {

      "entry_name": "ft.onto.base_ontology.Dependency",

      "parent_entry": "forte.data.ontology.top.Link",

      "description": "A `Link` type entry which represent a syntactic dependency.",

      "attributes": [

        {

          "name": "dep_label",

          "type": "str",

          "description": "The dependency label."

        },

        {

          "name": "rel_type",

          "type": "str"

        }

      ],

      "parent_type": "ft.onto.base_ontology.Token",

      "child_type": "ft.onto.base_ontology.Token"

    },

    {

      "entry_name": "ft.onto.base_ontology.EnhancedDependency",

      "parent_entry": "forte.data.ontology.top.Link",

      "description": "A `Link` type entry which represent a enhanced dependency: \n https://universaldependencies.org/u/overview/enhanced-syntax.html",

      "attributes": [

        {

          "name": "dep_label",

          "type": "str",

          "description": "The enhanced dependency label in Universal Dependency."

        }

      ],

      "parent_type": "ft.onto.base_ontology.Token",

      "child_type": "ft.onto.base_ontology.Token"

    },

    {

      "entry_name": "ft.onto.base_ontology.RelationLink",

      "parent_entry": "forte.data.ontology.top.Link",

      "description": "A `Link` type entry which represent a relation between two entity mentions",

      "attributes": [

        {

          "name": "rel_type",

          "type": "str",

          "description": "The type of the relation."

        }

      ],

      "parent_type": "ft.onto.base_ontology.EntityMention",

      "child_type": "ft.onto.base_ontology.EntityMention"

    },

    {

      "entry_name": "ft.onto.base_ontology.CrossDocEntityRelation",

      "parent_entry": "forte.data.ontology.top.MultiPackLink",

      "description": "A `Link` type entry which represent a relation between two entity mentions across the packs.",

      "attributes": [

        {

          "name": "rel_type",

          "type": "str",

          "description": "The type of the relation."

        }

      ],

      "parent_type": "ft.onto.base_ontology.EntityMention",

      "child_type": "ft.onto.base_ontology.EntityMention"

    },

    {

      "entry_name": "ft.onto.base_ontology.CoreferenceGroup",

      "parent_entry": "forte.data.ontology.top.Group",

      "description": "A group type entry that take `EntityMention`, as members, used to represent coreferent group of entities.",

      "member_type": "ft.onto.base_ontology.EntityMention"

    },

    {

      "entry_name": "ft.onto.base_ontology.EventRelation",

      "parent_entry": "forte.data.ontology.top.Link",

      "description": "A `Link` type entry which represent a relation between two event mentions.",

      "attributes": [

        {

          "name": "rel_type",

          "type": "str",

          "description": "The type of the relation."

        }

      ],

      "parent_type": "ft.onto.base_ontology.EventMention",

      "child_type": "ft.onto.base_ontology.EventMention"

    },

    {

      "entry_name": "ft.onto.base_ontology.CrossDocEventRelation",

      "parent_entry": "forte.data.ontology.top.MultiPackLink",

      "description": "A `Link` type entry which represent a relation between two event mentions across the packs.",

      "attributes": [

        {

          "name": "rel_type",

          "type": "str",

          "description": "The type of the relation."

        }

      ],

      "parent_type": "ft.onto.base_ontology.EventMention",

      "child_type": "ft.onto.base_ontology.EventMention"

    },

    {

      "entry_name": "edu.cmu.EventMention",

      "parent_entry": "ft.onto.base_ontology.EventMention",

      "description": "A span based annotation `EventMention`, used to refer to a mention of an event.",

      "attributes": [

        {

          "name": "is_valid",

          "type": "bool"

        }

      ]

    },

    {

      "entry_name": "edu.cmu.CrossEventRelation",

      "parent_entry": "ft.onto.base_ontology.CrossDocEventRelation",

      "description": "Represent relation cross documents.",

      "attributes": [

        {

          "name": "evidence",

          "type": "str"

        }

      ],

      "parent_type": "edu.cmu.EventMention",

      "child_type": "edu.cmu.EventMention"

    }

  ]

}',4,'', 'single_pack'),
 (9,'Eliza','{
  "name": "base_ontology",
  "definitions": [
    {
      "entry_name": "ft.onto.base_ontology.Token",
      "parent_entry": "forte.data.ontology.top.Annotation",
      "description": "A span based annotation :class:`Token`, used to represent a token or a word.",
      "attributes": [
        {
          "name": "pos",
          "type": "str"
        },
        {
          "name": "ud_xpos",
          "type": "str",
          "description": "Language specific pos tag. Used in CoNLL-U Format. Refer to https://universaldependencies.org/format.html"
        },
        {
          "name": "lemma",
          "type": "str",
          "description": "Lemma or stem of word form."
        },
        {
          "name": "chunk",
          "type": "str"
        },
        {
          "name": "ner",
          "type": "str"
        },
        {
          "name": "sense",
          "type": "str"
        },
        {
          "name": "is_root",
          "type": "bool"
        },
        {
          "name": "ud_features",
          "type": "Dict",
          "key_type": "str",
          "value_type": "str"
        },
        {
          "name": "ud_misc",
          "type": "Dict",
          "key_type": "str",
          "value_type": "str"
        }
      ]
    },
    {
      "entry_name": "ft.onto.base_ontology.Subword",
      "parent_entry": "forte.data.ontology.top.Annotation",
      "description": "Used to represent subword tokenization results."
    },
    {
      "entry_name": "ft.onto.base_ontology.Document",
      "parent_entry": "forte.data.ontology.top.Annotation",
      "description": "A span based annotation `Document`, normally used to represent a document.",
      "attributes": [
        {
          "name": "document_class",
          "type": "List",
          "item_type": "str",
          "description": "A list of class names that the document belongs to."
        },
        {
          "name": "sentiment",
          "type": "Dict",
          "key_type": "str",
          "value_type": "float"
        }
      ]
    },
    {
      "entry_name": "ft.onto.base_ontology.Sentence",
      "parent_entry": "forte.data.ontology.top.Annotation",
      "description": "A span based annotation `Sentence`, normally used to represent a sentence.",
      "attributes": [
        {
          "name": "speaker",
          "type": "str"
        },
        {
          "name": "part_id",
          "type": "int"
        },
        {
          "name": "sentiment",
          "type": "Dict",
          "key_type": "str",
          "value_type": "float"
        }
      ]
    },
    {
      "entry_name": "ft.onto.base_ontology.Phrase",
      "parent_entry": "forte.data.ontology.top.Annotation",
      "description": "A span based annotation `Phrase`.",
      "attributes": [
        {
          "name": "phrase_type",
          "type": "str"
        },
        {
          "name": "headword",
          "type": "ft.onto.base_ontology.Token"
        }
      ]
    },
    {
      "entry_name": "ft.onto.base_ontology.UtteranceContext",
      "parent_entry": "forte.data.ontology.top.Annotation",
      "description": "`UtteranceContext` represents the context part in dialogue."
    },
    {
      "entry_name": "ft.onto.base_ontology.Utterance",
      "parent_entry": "forte.data.ontology.top.Annotation",
      "description": "A span based annotation `Utterance`, normally used to represent an utterance in dialogue.",
      "attributes" : [
        {
          "name": "speaker",
          "type": "str"
        }
      ]
    },
    {
      "entry_name": "ft.onto.base_ontology.PredicateArgument",
      "parent_entry": "forte.data.ontology.top.Annotation",
      "description": "A span based annotation `PredicateArgument`, normally used to represent an argument of a predicate, can be linked to the predicate via the predicate link.",
      "attributes": [
        {
          "name": "ner_type",
          "type": "str"
        },
        {
          "name": "predicate_lemma",
          "type": "str"
        },
        {
          "name": "is_verb",
          "type": "bool"
        }
      ]
    },
    {
      "entry_name": "ft.onto.base_ontology.EntityMention",
      "parent_entry": "forte.data.ontology.top.Annotation",
      "description": "A span based annotation `EntityMention`, normally used to represent an Entity Mention in a piece of text.",
      "attributes": [
        {
          "name": "ner_type",
          "type": "str"
        }
      ]
    },
    {
      "entry_name": "ft.onto.base_ontology.EventMention",
      "parent_entry": "forte.data.ontology.top.Annotation",
      "description": "A span based annotation `EventMention`, used to refer to a mention of an event.",
      "attributes": [
        {
          "name": "event_type",
          "type": "str"
        }
      ]
    },
    {
      "entry_name": "ft.onto.base_ontology.PredicateMention",
      "parent_entry": "ft.onto.base_ontology.Phrase",
      "description": "A span based annotation `PredicateMention`, normally used to represent a predicate (normally verbs) in a piece of text.",
      "attributes": [
        {
          "name": "predicate_lemma",
          "type": "str"
        },
        {
          "name": "framenet_id",
          "type": "str"
        },
        {
          "name": "is_verb",
          "type": "bool"
        }
      ]
    },
    {
      "entry_name": "ft.onto.base_ontology.PredicateLink",
      "parent_entry": "forte.data.ontology.top.Link",
      "description": "A `Link` type entry which represent a semantic role link between a predicate and its argument.",
      "attributes": [
        {
          "name": "arg_type",
          "type": "str",
          "description": "The predicate link type."
        }
      ],
      "parent_type": "ft.onto.base_ontology.PredicateMention",
      "child_type": "ft.onto.base_ontology.PredicateArgument"
    },
    {
      "entry_name": "ft.onto.base_ontology.Dependency",
      "parent_entry": "forte.data.ontology.top.Link",
      "description": "A `Link` type entry which represent a syntactic dependency.",
      "attributes": [
        {
          "name": "dep_label",
          "type": "str",
          "description": "The dependency label."
        },
        {
          "name": "rel_type",
          "type": "str"
        }
      ],
      "parent_type": "ft.onto.base_ontology.Token",
      "child_type": "ft.onto.base_ontology.Token"
    },
    {
      "entry_name": "ft.onto.base_ontology.EnhancedDependency",
      "parent_entry": "forte.data.ontology.top.Link",
      "description": "A `Link` type entry which represent a enhanced dependency: \n https://universaldependencies.org/u/overview/enhanced-syntax.html",
      "attributes": [
        {
          "name": "dep_label",
          "type": "str",
          "description": "The enhanced dependency label in Universal Dependency."
        }
      ],
      "parent_type": "ft.onto.base_ontology.Token",
      "child_type": "ft.onto.base_ontology.Token"
    },
    {
      "entry_name": "ft.onto.base_ontology.RelationLink",
      "parent_entry": "forte.data.ontology.top.Link",
      "description": "A `Link` type entry which represent a relation between two entity mentions",
      "attributes": [
        {
          "name": "rel_type",
          "type": "str",
          "description": "The type of the relation."
        }
      ],
      "parent_type": "ft.onto.base_ontology.EntityMention",
      "child_type": "ft.onto.base_ontology.EntityMention"
    },
    {
      "entry_name": "ft.onto.base_ontology.CrossDocEntityRelation",
      "parent_entry": "forte.data.ontology.top.MultiPackLink",
      "description": "A `Link` type entry which represent a relation between two entity mentions across the packs.",
      "attributes": [
        {
          "name": "rel_type",
          "type": "str",
          "description": "The type of the relation."
        }
      ],
      "parent_type": "ft.onto.base_ontology.EntityMention",
      "child_type": "ft.onto.base_ontology.EntityMention"
    },
    {
      "entry_name": "ft.onto.base_ontology.CoreferenceGroup",
      "parent_entry": "forte.data.ontology.top.Group",
      "description": "A group type entry that take `EntityMention`, as members, used to represent coreferent group of entities.",
      "member_type": "ft.onto.base_ontology.EntityMention"
    },
    {
      "entry_name": "ft.onto.base_ontology.EventRelation",
      "parent_entry": "forte.data.ontology.top.Link",
      "description": "A `Link` type entry which represent a relation between two event mentions.",
      "attributes": [
        {
          "name": "rel_type",
          "type": "str",
          "description": "The type of the relation."
        }
      ],
      "parent_type": "ft.onto.base_ontology.EventMention",
      "child_type": "ft.onto.base_ontology.EventMention"
    },
    {
      "entry_name": "ft.onto.base_ontology.CrossDocEventRelation",
      "parent_entry": "forte.data.ontology.top.MultiPackLink",
      "description": "A `Link` type entry which represent a relation between two event mentions across the packs.",
      "attributes": [
        {
          "name": "rel_type",
          "type": "str",
          "description": "The type of the relation."
        }
      ],
      "parent_type": "ft.onto.base_ontology.EventMention",
      "child_type": "ft.onto.base_ontology.EventMention"
    },
    {
     "entry_name": "ft.onto.base_ontology.ConstituentNode",
     "parent_entry": "forte.data.ontology.top.Annotation",
     "description": "A span based annotation `ConstituentNode` to represent constituents in constituency parsing. This can also sentiment values annotated on the nodes.",
     "attributes": [
       {
         "name": "label",
         "type": "str"
       },
       {
         "name": "sentiment",
         "type": "Dict",
         "key_type": "str",
         "value_type": "float"
       },
       {
         "name": "is_root",
         "type": "bool"
       },
       {
         "name": "is_leaf",
         "type": "bool"
       },
       {
         "name": "parent_node",
         "type": "ft.onto.base_ontology.ConstituentNode"
       },
       {
         "name": "children_nodes",
         "type": "List",
         "item_type": "ft.onto.base_ontology.ConstituentNode"
       }
     ]
    },
    {
      "entry_name": "ft.onto.base_ontology.Title",
      "parent_entry": "forte.data.ontology.top.Annotation",
      "description": "A span based annotation `Title`, normally used to represent a title."
    }
  ]
}
',2,'{"legendConfigs":{"ft.onto.base_ontology.Token":{"is_selected":false,"is_shown":true,"attributes":{"pos":false,"ud_xpos":false,"lemma":false,"chunk":false,"ner":false,"sense":false}},"ft.onto.base_ontology.Subword":{"is_selected":false,"is_shown":true},"ft.onto.base_ontology.Document":{"is_selected":false,"is_shown":true,"attributes":{}},"ft.onto.base_ontology.Sentence":{"is_selected":false,"is_shown":true,"attributes":{"speaker":false}},"ft.onto.base_ontology.Phrase":{"is_selected":false,"is_shown":true,"attributes":{"phrase_type":false}},"ft.onto.base_ontology.UtteranceContext":{"is_selected":false,"is_shown":true},"ft.onto.base_ontology.Utterance":{"is_selected":false,"is_shown":true,"attributes":{"speaker":false}},"ft.onto.base_ontology.PredicateArgument":{"is_selected":false,"is_shown":true,"attributes":{"ner_type":false,"predicate_lemma":false}},"ft.onto.base_ontology.EntityMention":{"is_selected":false,"is_shown":true,"attributes":{"ner_type":false}},"ft.onto.base_ontology.EventMention":{"is_selected":false,"is_shown":true,"attributes":{"event_type":false}},"ft.onto.base_ontology.PredicateMention":{"is_selected":false,"is_shown":true,"attributes":{"predicate_lemma":false,"framenet_id":false}},"ft.onto.base_ontology.PredicateLink":{"is_selected":false,"is_shown":true,"attributes":{"arg_type":false}},"ft.onto.base_ontology.Dependency":{"is_selected":false,"is_shown":true,"attributes":{"dep_label":false,"rel_type":false}},"ft.onto.base_ontology.EnhancedDependency":{"is_selected":false,"is_shown":true,"attributes":{"dep_label":false}},"ft.onto.base_ontology.RelationLink":{"is_selected":false,"is_shown":true,"attributes":{"rel_type":false}},"ft.onto.base_ontology.CrossDocEntityRelation":{"is_selected":false,"is_shown":true,"attributes":{"rel_type":false}},"ft.onto.base_ontology.CoreferenceGroup":{"is_selected":false,"is_shown":true},"ft.onto.base_ontology.EventRelation":{"is_selected":false,"is_shown":true,"attributes":{"rel_type":false}},"ft.onto.base_ontology.CrossDocEventRelation":{"is_selected":false,"is_shown":true,"attributes":{"rel_type":false}},"ft.onto.base_ontology.ConstituentNode":{"is_selected":false,"is_shown":true,"attributes":{"label":false}},"ft.onto.base_ontology.Title":{"is_selected":false,"is_shown":true}},"scopeConfigs":{"ft.onto.base_ontology.Token":false,"ft.onto.base_ontology.Subword":false,"ft.onto.base_ontology.Document":false,"ft.onto.base_ontology.Sentence":false,"ft.onto.base_ontology.Phrase":false,"ft.onto.base_ontology.UtteranceContext":false,"ft.onto.base_ontology.Utterance":false,"ft.onto.base_ontology.PredicateArgument":false,"ft.onto.base_ontology.EntityMention":false,"ft.onto.base_ontology.EventMention":false,"ft.onto.base_ontology.PredicateMention":false,"ft.onto.base_ontology.ConstituentNode":false,"ft.onto.base_ontology.Title":false},"layoutConfigs":{"center-middle":"DialogueBox","left":"disable","right":"disable","center-bottom":"disable"}}', 'single_pack');
COMMIT;
