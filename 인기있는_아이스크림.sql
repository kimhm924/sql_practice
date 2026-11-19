-- 문제: 인기있는 아이스크림
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/133024
-- 분류: SELECT / 레벨 1
-- 푼 날: 2026-11-04
-- 결과: 혼자 해결
--
-- 무엇을 구하나: 아이스크림 맛(FLAVOR)을 총주문량 많은 순으로, 같으면 출하 번호 작은 순으로
--
-- 배운 점
--   - ORDER BY 기준이 여러 개면 쉼표로 잇고, 앞에 쓴 기준이 먼저 적용됨
--   - 기준마다 DESC/ASC를 따로 붙임. ASC는 기본값이라 생략 가능

SELECT FLAVOR
FROM FIRST_HALF
ORDER BY TOTAL_ORDER DESC, SHIPMENT_ID;
