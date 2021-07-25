----xml universal query-----

---xmlattributes
SELECT xmlelement("question",
              	  xmlattributes(k.description as "desc",k.int_question_id as "id")) as QUESTION
  FROM au_md_gen_question k
 WHERE k.active_flag = 'Y'
   AND k.int_question_id = 5;

---xml element
SELECT xmlelement("question",
                  xmlelement("desc", k.description),
                  xmlelement("q_id", k.int_question_id)) as QUESTION
  FROM au_md_gen_question k
 WHERE k.active_flag = 'Y'
   AND k.int_question_id = 5;

---Both xmlelement and attributes   
SELECT xmlelement("question",
              	  xmlattributes(k.description as "desc",k.int_question_id as "id"),
                  xmlelement("desc", k.description),
                  xmlelement("q_id", k.int_question_id)) as QUESTION
  FROM au_md_gen_question k
 WHERE k.active_flag = 'Y'
   AND k.int_question_id = 5;
   
   
---xmlagg
 SELECT XMLAGG(xmlelement("question",
                   xmlforest(k.description as "desc",
                             k.int_question_id as "id"))) as QUESTION
   FROM au_md_gen_question k
  WHERE k.active_flag = 'Y'
    AND k.int_question_id = 5;

---XMLROOT
    SELECT xmlroot(xmlelement("Questions", XMLAGG(xmlelement("question",
                   xmlforest(k.description as "desc",
                             k.int_question_id as "id"))))) as QUESTION
   FROM au_md_gen_question k
  WHERE k.active_flag = 'Y'
    AND k.int_question_id = 5;
    
---XMLCDATA

    SELECT xmlroot(xmlelement("Questions", XMLAGG(xmlelement("question",
                   xmlforest(k.description as "desc",
                             xmlcdata(k.int_question_id) as "id"))))) as QUESTION
   FROM au_md_gen_question k
  WHERE k.active_flag = 'Y'
    AND k.int_question_id = 5;    

   
   
   
