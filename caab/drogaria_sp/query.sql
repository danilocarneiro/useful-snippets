SELECT p.a_cpf "matricula", p.a_nome "nome", IIF (p.validade >= CURRENT_TIMESTAMP,'I','B') "status"
FROM paciente p
WHERE p.parente < 30
AND p.a_cpf IS NOT NULL
ORDER BY p.a_nome
