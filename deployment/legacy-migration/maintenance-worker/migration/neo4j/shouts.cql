CALL apoc.load.json('file:/tmp/mongo-export/shouts.json') YIELD value as shout
MATCH (u:User {id: shout.userId}), (p:Post {id: shout.foreignId})
MERGE (u)-[:SHOUTED]->(p)
;
