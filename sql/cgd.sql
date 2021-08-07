#Solutions for SQL Queries

#Find CDM & vocabulary version from the database
select cdm_version, vocabulary_version from dbo.cdm_source;

#2
select c.concept_id from dbo.concept c,dbo.vocabulary v where standard_concept = 'C' and c.vocabulary_id=v.vocabulary_id;

#3
select * from dbo.concept c, dbo.domain d where c.concept_code = '105694' and d.domain_id = 'Drug';
select * from dbo.vocabulary v,dbo.concept c  where v.vocabulary_id = 'RxNorm' and c.concept_id = '44819104';
 
#4
select from dbo.concept_relationship cr, dbo.relationship r
where cr.concept_id_1 = '1301125' and r.relationship_id = cr.relationship_id;

#6
select  COUNT(CASE WHEN gender_concept_id='8507' THEN 1  END) As Male,
COUNT(CASE WHEN gender_concept_id='8532' THEN 1  END) As Female
from dbo.person;
