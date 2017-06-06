SELECT nota as avaliação, comentario as opinião, id_supe, id_prod, id_pess
	FROM avalia;

SELECT id_list, id_prod, quantidade, quantidade*2
	FROM public.contem;

SELECT id_prod, id_tmed, id_marc, nome, tamanho FROM public.produto where id_marc=9 or id_marc=4

SELECT id_prod, id_tmed, id_marc, nome, tamanho FROM public.produto where id_tmed=2 and id_marc=3

SELECT id_prod, id_tmed, id_marc, nome as produto, tamanho FROM public.produto where id_tmed=2 and id_marc=3