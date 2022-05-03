--Consultas e Relacionamentos

-- Relacionando tabela videos_canais com videos, a coluna fk_canal = id_video
SELECT * FROM videos_canais JOIN videos ON videos_canais.fk_canal = videos.id_video;