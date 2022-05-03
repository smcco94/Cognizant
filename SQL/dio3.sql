--Consultas e Relacionamentos

-- Relacionando tabela videos_canais com videos, a coluna fk_canal = id_video
SELECT * FROM videos_canais JOIN videos ON videos_canais.fk_video = videos.id_video;

-- Apelidando as tabelas
SELECT * FROM videos_canais as vc JOIN videos as v ON vc.fk_video = v.id_video;

-- Relacionando 3 tabelas e selecionando colunas desejadas no select
SELECT v.nome_video,v.autor_video,c.nome_canal
FROM videos_canais as vc JOIN videos as v ON vc.fk_video = v.id_video
JOIN canais as c ON vc.fk_canal = c.id_canal;

-- Dica INNER JOIN = JOIN ; RETORNA SEMPRE VALORES PRESENTES NAS TABELAS (NAO RETORNA NULO)
-- 'LADO' OUTER JOIN, INDICA QUE A TABELA QUE O LADO SE REFERIR NÃO PRECISA TER O VALOR DA TABELA DE REFERÊNCIA
-- EXEMPLO
SELECT * FROM videos_canais as vc 
RIGHT OUTER JOIN videos as v ON vc.fk_video = v.id_video -- Indica a tabela a direita (videos) pode ter null em relação a tabela da esquerda (videos_canais)
RIGHT OUTER JOIN canais as c ON vc.fk_canal = c.id_canal;

-- EXEMPLO COM FILTRO
SELECT * FROM videos_canais as vc 
RIGHT OUTER JOIN videos as v ON vc.fk_video = v.id_video
RIGHT OUTER JOIN canais as c ON vc.fk_canal = c.id_canal
WHERE c.nome_canal = "PHP"

-- Unindo Consultas Diferentes
SELECT * FROM videos_canais as vc RIGHT OUTER JOIN videos as v ON vc.fk_video = v.id_video
UNION
SELECT * FROM videos_canais as vc RIGHT OUTER JOIN canais as c ON vc.fk_canal = c.id_canal
