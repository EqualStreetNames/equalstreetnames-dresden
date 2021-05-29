[out:json][timeout:300];
( area["admin_level"="6"]["wikidata"="Q1731"]; )->.a;
( area["admin_level"="11"]["wikidata"="Q61608436"]; )->.b;
(
    (relation["type"="associatedStreet"](area.a);
    relation["type"="street"](area.a);
    relation["type"="multipolygon"]["place"]["name"](area.a);
    relation["type"="multipolygon"]["highway"]["name"](area.a);)->.fullArea;

    (relation["type"="associatedStreet"](area.b);
    relation["type"="associatedStreet"]["highway"="path"](area.b);
    relation["type"="multipolygon"]["highway"="track"](area.b);)->.heide;

    (.fullArea; - .heide;)->.output;
);

(.output;.output >;)->.output;
.output out qt;