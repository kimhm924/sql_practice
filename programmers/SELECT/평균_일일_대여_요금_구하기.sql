-- 문제: 평균 일일 대여 요금 구하기
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/151136
-- 분류: SELECT / 레벨 1
-- 푼 날: 2026-10-25
-- 결과: 힌트 보고 해결
--
-- 무엇을 구하나: SUV 자동차의 하루 대여 요금 평균 (소수 첫째 자리에서 반올림, 컬럼명 AVERAGE_FEE)
--
-- 틀린 과정
--   1) ROUND를 빼먹어서 오답
--   2) ROUND(값, 1)로 냈다가 또 오답
--      "소수 첫째 자리에서 반올림"은 정수로 만들라는 뜻이라 ROUND(값, 0)
--
-- 배운 점
--   - "~에서 반올림"이면 0, "~까지 출력"이면 1. 예시 답의 자릿수로 확인하기
--   - WHERE로 이미 한 그룹만 남으면 GROUP BY는 필요 없음

SELECT ROUND(AVG(DAILY_FEE), 0) AS AVERAGE_FEE
FROM CAR_RENTAL_COMPANY_CAR
WHERE CAR_TYPE = 'SUV';
