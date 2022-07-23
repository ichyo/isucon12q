DELETE FROM tenant WHERE id > 100;
DELETE FROM visit_history WHERE created_at >= '1654041600';
DELETE FROM id_generator;
ALTER TABLE id_generator AUTO_INCREMENT=2678400000;

DELETE FROM player_score WHERE created_at > '1654041599';
DELETE FROM player WHERE created_at > '1654041548';
DELETE FROM competition WHERE created_at > '1654039720';

-- CREATE INDEX idx11 ON player_score (tenant_id, competition_id, player_id, row_num);
-- CREATE INDEX idx12 ON player_score (tenant_id, competition_id, row_num);
-- CREATE INDEX idx2 ON competition (tenant_id, created_at);
-- CREATE INDEX idx3 ON player (tenant_id, created_at);