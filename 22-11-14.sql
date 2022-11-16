-- 1-10��. SQL : Structured Query Language (����ȭ�� ���Ǿ�) ����
-- 2��. SQL

-- �������
-- ���� �ּ�
/*
    1��. oracle ��ġ
    2��. sql �ǽ�
    3��. ....
    -- ������ �ּ�
*/
-- ����� ������ �����ݷ�(;)�� �ۼ��Ѵ�.
-- �Ϲ������� ��,�ҹ��ڴ� ���������ʴ´�.

-- ȸ�������� �����ϴ� ���̺��� �����
-- ���̵� : ����Ű-������ �ĺ��ϱ� ���� ���Ƿ� ���� Ű
-- �̸�
-- ����
-- ��ȭ��ȣ
-- �ּ�
-- �̸���

CREATE TABLE userTBL(
    id NUMBER,
    name VARCHAR2(20),
    age NUMBER,
    phone CHAR(13),
    addr VARCHAR2(50),
    email VARCHAR2(30),
    reg_date DATE
);

INSERT INTO userTBL (id, name, age, phone, addr, email, reg_date)
VALUES (1, 'ȫ�浿', 20, '010-1234-5678', 'gwangju, nam-gu', 'hong@naver.com', SYSDATE);
INSERT INTO userTBL (id, name, age, phone, addr, email, reg_date)
VALUES (2, '��浿', 21, '010-1234-5679', 'gwangju, seo-gu', 'hong@naver.com', SYSDATE);
INSERT INTO userTBL (id, name, age, phone, addr, email, reg_date)
VALUES (3, '�ֱ浿', 22, '010-1234-5680', 'gwangju, seo-gu', 'hong@naver.com', SYSDATE);
INSERT INTO userTBL (id, name, age, phone, addr, email, reg_date)
VALUES (4, '�ڱ浿', 23, '010-1234-5681', 'gwangju, seo-gu', 'hong@naver.com', SYSDATE);
INSERT INTO userTBL (id, name, age, phone, addr, email, reg_date)
VALUES (5, '�̱浿', 24, '010-1234-5682', 'gwangju, seo-gu', 'hong@naver.com', SYSDATE);
INSERT INTO userTBL (id, name, age, phone, addr, email, reg_date)
VALUES (6, '�ѱ浿', 24, '010-1234-5683', 'gwangju, seo-gu', 'hong@naver.com', SYSDATE);
INSERT INTO userTBL (id, name, age, phone, addr, email, reg_date)
VALUES (7, '���浿', 25, '010-1234-5684', 'gwangju, seo-gu', 'hong@naver.com', SYSDATE);


SELECT*FROM userTBL;

desc itemTBL;

INSERT INTO itemTBL (id, buyer, title, qty, price, selldate)
VALUES (001, 1, 'ī�޶�', 1, 100000, SYSDATE);

commit;
