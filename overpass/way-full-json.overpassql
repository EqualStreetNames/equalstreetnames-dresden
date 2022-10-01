[out:json][timeout:300];
( area["admin_level"="6"]["wikidata"="Q1731"]; )->.a;
( area["admin_level"="11"]["wikidata"="Q61608436"]; )->.b;
(
    (way["highway"]["name"]["highway"!="bus_stop"]["highway"!="elevator"]["highway"!="platform"]["highway"!="service"](area.a);
    way["place"="square"]["name"](area.a);)->.fullArea;
    
    (way["highway"="track"][name](area.b);
    way["highway"="path"][name](area.b);
    way["place"="square"]["name"](area.b);)->.heide;

    (.fullArea; - .heide;)->.output;
);

(.output;.output >;)->.output;
.output out qt;