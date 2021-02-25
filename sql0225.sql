-- 데이터 형식
use sqldb;
select avg(amount) as '총 구매 평균'
from buytbl; -- 2.7273

-- 데이터 형식 변환 함수(1)
select cast(avg(amount) as signed integer) as '총 구매 평균'
from buytbl;

-- 데이터 형식 변환 함수(2)
select convert(avg(amount), signed integer) as '총 구매 평균'
from buytbl;

-- 날짜 형태
select cast('20210225' as date);
select cast('2021/02/25' as date);
select cast('2021%02%25' as date);
select cast('2021@02@25' as date);


-- 암시적인 형 변환
select '100' + '200'; -- 숫자로 인식하여 변환(문자열x)
-- 문자열 이어주기
select concat('100', '200'); 
select concat(100, 200); 

-- 비교 연산자
select 1>0; 
select 1>'2mega'; -- 정수인 2로 변환되어 비교alter 1>2
select 0='mega2'; -- 문자는 0으로 변환

-- IF(수식, 참, 거짓)
select if(100>200, '참', '거짓');

-- ifnull(수식1, 수식2)
select ifnull(null, '널');
select ifnull(100, '널');

-- 수식이 같으면 null 반환, 다르면 수식 1반환
select nullif(100, 100);
select nullif(100, 200);

-- case ~ when ~ else ~ end
select case 3
	when 1 then '일'
    when 2 then '이'
    when 10 then '십'
    else '없음'
    end as 'case 연습';

-- 아스키코드 , char(숫자)
select ascii('A'), char(65);

-- bit_lenght(문자열), char_lenght(문자열), lenght(문자열)
select bit_length('abc'), char_length('abc'), length('abc');
select bit_length('가나다'), char_length('가나다'), length('가나다');
-- 주의: MySQL은 기본적으로 UTF-8 코드를 사용하기 때문에 영문은 3byte, 한글은 9byte를 반환한다.

-- concat(문자열1, 문자열2...), concat_ws(구분자, 문자열1, 문자열2);
select concat_ws('/', '2021', '02', '25');

-- format(숫자, 소수점 자릿수)
select format(25.52413, 3);

-- insert(기존 문자열, 기준 문자열 위치, 길이, 삽입한 문자열)
select insert('abcdefg', 2, 3, 'hij');

-- left(문자열, 길이), right(문자열, 길이)
select left('abcdefg', 3);
select right('abcdefg', 3);

-- 문자열 upper, lower
select upper('asdf');
select lower('ASDF');

-- 문자열 채우기
select lpad('MySQL', 10, '#');
select rpad('MySQL', 10, '#');

-- 문자열 왼쪽/오른쪽 공백을 제거, 가운데 공백은 제거 불가
select ltrim('        MySQl');
select rtrim('MySQL         ');
select trim('    MySQL     ');

--  문자열 반복
select repeat('*', 5);

-- 문자열 바꾸기 replace(문자열, 원래 문자열, 바꿀 문자열)
select replace('Hello MySQL World', 'MySQL', 'Oracle');

-- 문자열 순서를 거꾸로 reverse
select reverse('MySQL');

-- 공백 처리 space (길이)
select concat('Mysql', space(10), 'Oracle');

-- 문자열 잘라내기 substring(문자열, 시작위치, 길이) 1부터 시작
select substring('MySQL', 2, 2);











