DELETE FROM tenant WHERE id > 100;
DELETE FROM visit_history WHERE created_at >= '1654041600';
DELETE FROM id_generator;
ALTER TABLE id_generator AUTO_INCREMENT=2678400000;

CREATE INDEX IF NOT EXISTS idx11 ON player_score (tenant_id, competition_id, player_id, row_num);
CREATE INDEX IF NOT EXISTS idx12 ON player_score (tenant_id, competition_id, row_num);
CREATE INDEX IF NOT EXISTS idx2 ON competition (tenant_id, created_at);
CREATE INDEX IF NOT EXISTS idx3 ON player (tenant_id, created_at);