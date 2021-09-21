CREATE VIEW `cancoes_premium` AS
  SELECT 
    s.name_song AS `nome`, COUNT(*) AS `reproducoes`
  FROM SpotifyClone.songs AS s
  
  INNER JOIN SpotifyClone.reproduction_history AS rh
    ON rh.song_id = s.song_id
    
  INNER JOIN SpotifyClone.user AS us 
    ON us.user_id = rh.user_id
    
  INNER JOIN SpotifyClone.plans AS plan 
    ON us.plan_id = plan.plan_id
    
WHERE plan IN ('familiar', 'universitário') 
  GROUP BY `nome`
  ORDER BY `nome`;
