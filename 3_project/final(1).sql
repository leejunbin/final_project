
/* Drop Triggers */

DROP TRIGGER TRI_administrator_anum;
DROP TRIGGER TRI_amenities_amenities_num;
DROP TRIGGER TRI_Booking_TABLE_booking_num;
DROP TRIGGER TRI_b_event_bnum;
DROP TRIGGER TRI_coupon_coupon_num;
DROP TRIGGER TRI_eventimages_eimgnum;
DROP TRIGGER TRI_event_enum;
DROP TRIGGER TRI_event_event_num;
DROP TRIGGER TRI_faqcategory_fcnum;
DROP TRIGGER TRI_faq_fnum;
DROP TRIGGER TRI_grade_gnum;
DROP TRIGGER TRI_houseintro_house_intro_num;
DROP TRIGGER TRI_house_house_num;
DROP TRIGGER TRI_house_img_house_img_num;
DROP TRIGGER TRI_notice_nnum;
DROP TRIGGER TRI_payment_pay_num;
DROP TRIGGER TRI_paytable_pay_num;
DROP TRIGGER TRI_qnaboard_qna_num;
DROP TRIGGER TRI_qna_category_qna_category_num;
DROP TRIGGER TRI_reiew_img_review_img_num;
DROP TRIGGER TRI_review_review_num;
DROP TRIGGER TRI_rooms_room_num;
DROP TRIGGER TRI_stay_snum;
DROP TRIGGER TRI_wishlist_wish_num;



/* Drop Tables */

DROP TABLE administrator CASCADE CONSTRAINTS;
DROP TABLE houseintro CASCADE CONSTRAINTS;
DROP TABLE amenities CASCADE CONSTRAINTS;
DROP TABLE payment CASCADE CONSTRAINTS;
DROP TABLE Booking_TABLE CASCADE CONSTRAINTS;
DROP TABLE house_img CASCADE CONSTRAINTS;
DROP TABLE reiew_img CASCADE CONSTRAINTS;
DROP TABLE review CASCADE CONSTRAINTS;
DROP TABLE rooms_img CASCADE CONSTRAINTS;
DROP TABLE rooms CASCADE CONSTRAINTS;
DROP TABLE wishlist CASCADE CONSTRAINTS;
DROP TABLE house CASCADE CONSTRAINTS;
DROP TABLE b_event CASCADE CONSTRAINTS;
DROP TABLE coupon CASCADE CONSTRAINTS;
DROP TABLE eventimages CASCADE CONSTRAINTS;
DROP TABLE event CASCADE CONSTRAINTS;
DROP TABLE faq CASCADE CONSTRAINTS;
DROP TABLE faqcategory CASCADE CONSTRAINTS;
DROP TABLE qnaboard CASCADE CONSTRAINTS;
DROP TABLE members CASCADE CONSTRAINTS;
DROP TABLE grade CASCADE CONSTRAINTS;
DROP TABLE notice CASCADE CONSTRAINTS;
DROP TABLE qna_category CASCADE CONSTRAINTS;
DROP TABLE stay CASCADE CONSTRAINTS;



/* Drop Sequences */

DROP SEQUENCE SEQ_administrator_anum;
DROP SEQUENCE SEQ_amenities_amenities_num;
DROP SEQUENCE SEQ_Booking_TABLE_booking_num;
DROP SEQUENCE SEQ_b_event_bnum;
DROP SEQUENCE SEQ_coupon_coupon_num;
DROP SEQUENCE SEQ_eventimages_eimgnum;
DROP SEQUENCE SEQ_event_enum;
DROP SEQUENCE SEQ_event_event_num;
DROP SEQUENCE SEQ_faqcategory_fcnum;
DROP SEQUENCE SEQ_faq_fnum;
DROP SEQUENCE SEQ_grade_gnum;
DROP SEQUENCE SEQ_houseintro_house_intro_num;
DROP SEQUENCE SEQ_house_house_num;
DROP SEQUENCE SEQ_house_img_house_img_num;
DROP SEQUENCE SEQ_notice_nnum;
DROP SEQUENCE SEQ_payment_pay_num;
DROP SEQUENCE SEQ_paytable_pay_num;
DROP SEQUENCE SEQ_qnaboard_qna_num;
DROP SEQUENCE SEQ_qna_category_qna_category_num;
DROP SEQUENCE SEQ_reiew_img_review_img_num;
DROP SEQUENCE SEQ_review_review_num;
DROP SEQUENCE SEQ_rooms_room_num;
DROP SEQUENCE SEQ_stay_snum;
DROP SEQUENCE SEQ_wishlist_wish_num;




/* Create Tables */

-- 관리자정보 테이블
CREATE TABLE administrator
(
	-- 관리자식별키
	anum number(10) NOT NULL,
	-- 관리자아이디
	aid varchar2(30) NOT NULL UNIQUE,
	-- 관리자비밀번호
	apwd varchar2(30) NOT NULL,
	PRIMARY KEY (anum)
);


-- 편의시설목록
CREATE TABLE amenities
(
	-- 편의시설식별키
	amenities_num number(10) NOT NULL,
	-- 편의시설명
	amenities_name varchar2(100) NOT NULL UNIQUE,
	-- 편의시설소개
	amenities_content varchar2(2000) NOT NULL,
	-- 원본파일명
	orgfilename varchar2(300) NOT NULL,
	-- 저장파일명
	savefilename varchar2(300) NOT NULL,
	PRIMARY KEY (amenities_num)
);


-- 예약테이블
CREATE TABLE Booking_TABLE
(
	-- 예약번호
	booking_num number(5) NOT NULL,
	-- 방식별번호
	room_num number(10) NOT NULL,
	-- 회원아이디
	mid varchar2(15) NOT NULL,
	-- 결제금액
	pay_money number(10) NOT NULL,
	-- 예약신청날짜
	books_date date NOT NULL,
	-- 숙박시작일
	start_date date NOT NULL,
	-- 숙박종료일
	end_date date NOT NULL,
	-- 예약상태
	book_status varchar2(100) NOT NULL,
	PRIMARY KEY (booking_num)
);


-- 종목(종류)
CREATE TABLE b_event
(
	-- 종목식별키
	bnum number(10) NOT NULL,
	-- 업태식별키
	snum number(10) NOT NULL,
	-- 종목명
	btype varchar2(50) NOT NULL UNIQUE,
	PRIMARY KEY (bnum)
);


-- 쿠폰
CREATE TABLE coupon
(
	-- 쿠폰번호
	coupon_num number(10) NOT NULL,
	-- 회원아이디
	mid varchar2(15) NOT NULL,
	-- 쿠폰명
	coupon_name varchar2(100) NOT NULL,
	-- 쿠폰유형
	coupon_type varchar2(100) NOT NULL,
	-- 쿠폰사용여부
	coupon_status varchar2(100) NOT NULL,
	-- 발행일
	making_date date NOT NULL,
	PRIMARY KEY (coupon_num)
);


-- 이벤트 테이블
CREATE TABLE event
(
	-- 이벤트식별키
	event_num number(10) NOT NULL,
	-- 이벤트제목
	etitle varchar2(100) NOT NULL,
	-- 이벤트등록일
	eregdate date NOT NULL,
	-- 이벤트조회수
	ehit number(10) NOT NULL,
	-- 이벤트 시작일
	estartdate date NOT NULL,
	-- 이벤트종료일
	eenddate date NOT NULL,
	PRIMARY KEY (event_num)
);


-- 이벤트 이미지 테이블
CREATE TABLE eventimages
(
	-- 이미지식별키
	eimgnum number(10) NOT NULL,
	-- 원본파일명
	orgfilename varchar2(300) NOT NULL,
	-- 저장파일명
	savefilename varchar2(300) NOT NULL,
	-- 이벤트식별키
	event_num number(10) NOT NULL,
	PRIMARY KEY (eimgnum)
);


-- 자주묻는질문 테이블
CREATE TABLE faq
(
	-- 문의번호
	fnum number(10) NOT NULL,
	-- 자주묻는질문
	ftitle varchar2(100) NOT NULL,
	-- 답변
	fcontent varchar2(2000) NOT NULL,
	-- 카테고리식별키
	fcnum number(10) NOT NULL,
	PRIMARY KEY (fnum)
);


-- 질문카테고리
CREATE TABLE faqcategory
(
	-- 카테고리식별키
	fcnum number(10) NOT NULL,
	-- 카테고리명
	fctype varchar2(30) NOT NULL UNIQUE,
	PRIMARY KEY (fcnum)
);


-- 회원등급테이블
CREATE TABLE grade
(
	-- 등급식별키
	gnum number(10) NOT NULL,
	-- 등급명
	gname varchar2(30) NOT NULL UNIQUE,
	PRIMARY KEY (gnum)
);


-- 업소테이블
CREATE TABLE house
(
	-- 업체식별키
	house_num number(10) NOT NULL,
	-- 종목식별키
	bnum number(10) NOT NULL,
	-- 업소소개
	intro varchar2(2000) NOT NULL,
	-- 입실시간
	checkintime date NOT NULL,
	-- 퇴실시간
	checkouttime date NOT NULL,
	-- 업체명
	conpany varchar2(300) NOT NULL,
	-- 사업자등록번호
	license varchar2(100) NOT NULL,
	-- 대표자명
	ceo varchar2(30) NOT NULL,
	-- 본점소재지
	orgaddr varchar2(300) NOT NULL,
	-- 사업장소재지
	workplace varchar2(300) NOT NULL,
	-- 사업장전화번호
	com_tel varchar2(100) NOT NULL,
	-- 승인여부
	approval varchar2(100) NOT NULL,
	PRIMARY KEY (house_num)
);


-- 업소편의시설
CREATE TABLE houseintro
(
	-- 업소편의시설식별키
	house_intro_num number(10) NOT NULL,
	-- 업체식별키
	house_num number(10) NOT NULL,
	-- 편의시설식별키
	amenities_num number(10) NOT NULL,
	PRIMARY KEY (house_intro_num)
);


-- 업소이미지
CREATE TABLE house_img
(
	-- 기본식별키
	house_img_num number(4) NOT NULL,
	-- 업체식별키
	house_num number(10) NOT NULL,
	-- 업소이미지원본명
	house_org_name varchar2(100) NOT NULL,
	-- 업소이미지저장명
	house_save_name varchar2(100) NOT NULL,
	PRIMARY KEY (house_img_num)
);


-- 회원테이블
CREATE TABLE members
(
	-- 회원아이디
	mid varchar2(15) NOT NULL,
	-- 등급식별키
	gnum number(10) NOT NULL,
	-- 비밀번호
	mpwd varchar2(15) NOT NULL,
	-- 이름
	mname varchar2(15) NOT NULL,
	-- 전화번호
	mphone varchar2(20) NOT NULL,
	-- 이메일
	memail varchar2(30) NOT NULL,
	-- 가입일
	mregdate date NOT NULL,
	-- 포인트
	mpoint number(4,0) NOT NULL,
	PRIMARY KEY (mid)
);


-- 공지사항 테이블
CREATE TABLE notice
(
	-- 공지사항번호
	nnum number(10) NOT NULL,
	-- 공지글제목
	ntitle varchar2(100) NOT NULL,
	-- 공지내용
	ncontent varchar2(2000) NOT NULL,
	-- 공지날짜
	nregdate date NOT NULL,
	PRIMARY KEY (nnum)
);


-- 결제테이블
CREATE TABLE payment
(
	-- 결제번호
	pay_num number(5) NOT NULL,
	-- 예약번호
	booking_num number(5) NOT NULL,
	-- 쿠폰번호
	coupon_num number(10),
	-- 최종결제금액
	pay number(10) NOT NULL,
	-- 결제날짜
	pay_day date NOT NULL,
	-- 결제수단
	payment_type varchar2(100) NOT NULL,
	PRIMARY KEY (pay_num)
);


-- Q&A게시판
CREATE TABLE qnaboard
(
	-- 문의번호
	qna_num number(10) NOT NULL,
	-- 회원아이디
	mid varchar2(15) NOT NULL,
	-- qna카테고리식별키
	qna_category_num number(10) NOT NULL,
	-- 문의제목
	qna_title varchar2(300) NOT NULL,
	-- 문의내용
	qna_content varchar2(2000) NOT NULL,
	-- 답변
	anwser varchar2(2000),
	-- 문의작성일
	qna_date date NOT NULL,
	-- 답변작성일
	anwser_date date,
	PRIMARY KEY (qna_num)
);


-- Q&A카테고리
CREATE TABLE qna_category
(
	-- qna카테고리식별키
	qna_category_num number(10) NOT NULL,
	-- qna카테고리명
	qna_category_name varchar2(100) NOT NULL UNIQUE,
	PRIMARY KEY (qna_category_num)
);


-- 리뷰이미지
CREATE TABLE reiew_img
(
	-- 리뷰이미지식별번호
	review_img_num number(10) NOT NULL,
	-- 후기식별키
	review_num number(10) NOT NULL,
	-- 리뷰이미지원본명
	review_org_name varchar2(300) NOT NULL,
	-- 리뷰이미지저장명
	review_save_name varchar2(300) NOT NULL,
	PRIMARY KEY (review_img_num)
);


-- 후기게시판
CREATE TABLE review
(
	-- 후기식별키
	review_num number(10) NOT NULL,
	-- 방식별번호
	room_num number(10) NOT NULL,
	-- 회원아이디
	mid varchar2(15) NOT NULL,
	-- 리뷰제목
	review_title varchar2(300) NOT NULL,
	-- 리뷰내용
	review_content varchar2(2000) NOT NULL,
	-- 후기작성일
	review_date date NOT NULL,
	-- 친절도
	kindness number(10) NOT NULL,
	-- 청결도
	clean number(10) NOT NULL,
	-- 편의성
	convenience number(10) NOT NULL,
	PRIMARY KEY (review_num)
);


-- 객실정보
CREATE TABLE rooms
(
	-- 방식별번호
	room_num number(10) NOT NULL,
	-- 업체식별키
	house_num number(10) NOT NULL,
	-- 객실명
	roomname varchar2(100) NOT NULL,
	-- 객실가격
	room_prise number(10) NOT NULL,
	-- 객실정보
	room_info varchar2(2000) NOT NULL,
	-- 룸체크인
	room_check number(3),
	-- 최대인원
	max_Personnel number(10) NOT NULL,
	PRIMARY KEY (room_num)
);


-- 객실이미지
CREATE TABLE rooms_img
(
	-- 객실이미지식별키
	rooms_img_num number(10) NOT NULL,
	-- 방식별번호
	room_num number(10) NOT NULL,
	-- 객실이미지원본명
	room_org_name varchar2(100) NOT NULL,
	-- 객실이미지저장명
	room_save_name varchar2(100) NOT NULL,
	PRIMARY KEY (rooms_img_num)
);


-- 업태
CREATE TABLE stay
(
	-- 업태식별키
	snum number(10) NOT NULL,
	-- 업태명
	sname varchar2(50) NOT NULL UNIQUE,
	PRIMARY KEY (snum)
);


-- 찜목록
CREATE TABLE wishlist
(
	-- 찜목록식별키
	wish_num number(10) NOT NULL,
	-- 회원아이디
	mid varchar2(15) NOT NULL,
	-- 업체식별키
	house_num number(10) NOT NULL,
	PRIMARY KEY (wish_num)
);



/* Create Foreign Keys */

ALTER TABLE houseintro
	ADD FOREIGN KEY (amenities_num)
	REFERENCES amenities (amenities_num)
;


ALTER TABLE payment
	ADD FOREIGN KEY (booking_num)
	REFERENCES Booking_TABLE (booking_num)
;


ALTER TABLE house
	ADD FOREIGN KEY (bnum)
	REFERENCES b_event (bnum)
;


ALTER TABLE payment
	ADD FOREIGN KEY (coupon_num)
	REFERENCES coupon (coupon_num)
;


ALTER TABLE eventimages
	ADD FOREIGN KEY (event_num)
	REFERENCES event (event_num)
;


ALTER TABLE faq
	ADD FOREIGN KEY (fcnum)
	REFERENCES faqcategory (fcnum)
;


ALTER TABLE members
	ADD FOREIGN KEY (gnum)
	REFERENCES grade (gnum)
;


ALTER TABLE houseintro
	ADD FOREIGN KEY (house_num)
	REFERENCES house (house_num)
;


ALTER TABLE house_img
	ADD FOREIGN KEY (house_num)
	REFERENCES house (house_num)
;


ALTER TABLE rooms
	ADD FOREIGN KEY (house_num)
	REFERENCES house (house_num)
;


ALTER TABLE wishlist
	ADD FOREIGN KEY (house_num)
	REFERENCES house (house_num)
;


ALTER TABLE Booking_TABLE
	ADD FOREIGN KEY (mid)
	REFERENCES members (mid)
;


ALTER TABLE coupon
	ADD FOREIGN KEY (mid)
	REFERENCES members (mid)
;


ALTER TABLE qnaboard
	ADD FOREIGN KEY (mid)
	REFERENCES members (mid)
;


ALTER TABLE review
	ADD FOREIGN KEY (mid)
	REFERENCES members (mid)
;


ALTER TABLE wishlist
	ADD FOREIGN KEY (mid)
	REFERENCES members (mid)
;


ALTER TABLE qnaboard
	ADD FOREIGN KEY (qna_category_num)
	REFERENCES qna_category (qna_category_num)
;


ALTER TABLE reiew_img
	ADD FOREIGN KEY (review_num)
	REFERENCES review (review_num)
;


ALTER TABLE Booking_TABLE
	ADD FOREIGN KEY (room_num)
	REFERENCES rooms (room_num)
;


ALTER TABLE review
	ADD FOREIGN KEY (room_num)
	REFERENCES rooms (room_num)
;


ALTER TABLE rooms_img
	ADD FOREIGN KEY (room_num)
	REFERENCES rooms (room_num)
;


ALTER TABLE b_event
	ADD FOREIGN KEY (snum)
	REFERENCES stay (snum)
;



/* Comments */

COMMENT ON TABLE administrator IS '관리자정보 테이블';
COMMENT ON COLUMN administrator.anum IS '관리자식별키';
COMMENT ON COLUMN administrator.aid IS '관리자아이디';
COMMENT ON COLUMN administrator.apwd IS '관리자비밀번호';
COMMENT ON TABLE amenities IS '편의시설목록';
COMMENT ON COLUMN amenities.amenities_num IS '편의시설식별키';
COMMENT ON COLUMN amenities.amenities_name IS '편의시설명';
COMMENT ON COLUMN amenities.amenities_content IS '편의시설소개';
COMMENT ON COLUMN amenities.orgfilename IS '원본파일명';
COMMENT ON COLUMN amenities.savefilename IS '저장파일명';
COMMENT ON TABLE Booking_TABLE IS '예약테이블';
COMMENT ON COLUMN Booking_TABLE.booking_num IS '예약번호';
COMMENT ON COLUMN Booking_TABLE.room_num IS '방식별번호';
COMMENT ON COLUMN Booking_TABLE.mid IS '회원아이디';
COMMENT ON COLUMN Booking_TABLE.pay_money IS '결제금액';
COMMENT ON COLUMN Booking_TABLE.books_date IS '예약신청날짜';
COMMENT ON COLUMN Booking_TABLE.start_date IS '숙박시작일';
COMMENT ON COLUMN Booking_TABLE.end_date IS '숙박종료일';
COMMENT ON COLUMN Booking_TABLE.book_status IS '예약상태';
COMMENT ON TABLE b_event IS '종목(종류)';
COMMENT ON COLUMN b_event.bnum IS '종목식별키';
COMMENT ON COLUMN b_event.snum IS '업태식별키';
COMMENT ON COLUMN b_event.btype IS '종목명';
COMMENT ON TABLE coupon IS '쿠폰';
COMMENT ON COLUMN coupon.coupon_num IS '쿠폰번호';
COMMENT ON COLUMN coupon.mid IS '회원아이디';
COMMENT ON COLUMN coupon.coupon_name IS '쿠폰명';
COMMENT ON COLUMN coupon.coupon_type IS '쿠폰유형';
COMMENT ON COLUMN coupon.coupon_status IS '쿠폰사용여부';
COMMENT ON COLUMN coupon.making_date IS '발행일';
COMMENT ON TABLE event IS '이벤트 테이블';
COMMENT ON COLUMN event.event_num IS '이벤트식별키';
COMMENT ON COLUMN event.etitle IS '이벤트제목';
COMMENT ON COLUMN event.eregdate IS '이벤트등록일';
COMMENT ON COLUMN event.ehit IS '이벤트조회수';
COMMENT ON COLUMN event.estartdate IS '이벤트 시작일';
COMMENT ON COLUMN event.eenddate IS '이벤트종료일';
COMMENT ON TABLE eventimages IS '이벤트 이미지 테이블';
COMMENT ON COLUMN eventimages.eimgnum IS '이미지식별키';
COMMENT ON COLUMN eventimages.orgfilename IS '원본파일명';
COMMENT ON COLUMN eventimages.savefilename IS '저장파일명';
COMMENT ON COLUMN eventimages.event_num IS '이벤트식별키';
COMMENT ON TABLE faq IS '자주묻는질문 테이블';
COMMENT ON COLUMN faq.fnum IS '문의번호';
COMMENT ON COLUMN faq.ftitle IS '자주묻는질문';
COMMENT ON COLUMN faq.fcontent IS '답변';
COMMENT ON COLUMN faq.fcnum IS '카테고리식별키';
COMMENT ON TABLE faqcategory IS '질문카테고리';
COMMENT ON COLUMN faqcategory.fcnum IS '카테고리식별키';
COMMENT ON COLUMN faqcategory.fctype IS '카테고리명';
COMMENT ON TABLE grade IS '회원등급테이블';
COMMENT ON COLUMN grade.gnum IS '등급식별키';
COMMENT ON COLUMN grade.gname IS '등급명';
COMMENT ON TABLE house IS '업소테이블';
COMMENT ON COLUMN house.house_num IS '업체식별키';
COMMENT ON COLUMN house.bnum IS '종목식별키';
COMMENT ON COLUMN house.intro IS '업소소개';
COMMENT ON COLUMN house.checkintime IS '입실시간';
COMMENT ON COLUMN house.checkouttime IS '퇴실시간';
COMMENT ON COLUMN house.conpany IS '업체명';
COMMENT ON COLUMN house.license IS '사업자등록번호';
COMMENT ON COLUMN house.ceo IS '대표자명';
COMMENT ON COLUMN house.orgaddr IS '본점소재지';
COMMENT ON COLUMN house.workplace IS '사업장소재지';
COMMENT ON COLUMN house.com_tel IS '사업장전화번호';
COMMENT ON COLUMN house.approval IS '승인여부';
COMMENT ON TABLE houseintro IS '업소편의시설';
COMMENT ON COLUMN houseintro.house_intro_num IS '업소편의시설식별키';
COMMENT ON COLUMN houseintro.house_num IS '업체식별키';
COMMENT ON COLUMN houseintro.amenities_num IS '편의시설식별키';
COMMENT ON TABLE house_img IS '업소이미지';
COMMENT ON COLUMN house_img.house_img_num IS '기본식별키';
COMMENT ON COLUMN house_img.house_num IS '업체식별키';
COMMENT ON COLUMN house_img.house_org_name IS '업소이미지원본명';
COMMENT ON COLUMN house_img.house_save_name IS '업소이미지저장명';
COMMENT ON TABLE members IS '회원테이블';
COMMENT ON COLUMN members.mid IS '회원아이디';
COMMENT ON COLUMN members.gnum IS '등급식별키';
COMMENT ON COLUMN members.mpwd IS '비밀번호';
COMMENT ON COLUMN members.mname IS '이름';
COMMENT ON COLUMN members.mphone IS '전화번호';
COMMENT ON COLUMN members.memail IS '이메일';
COMMENT ON COLUMN members.maddr IS '주소';
COMMENT ON COLUMN members.mregdate IS '가입일';
COMMENT ON COLUMN members.mpoint IS '포인트';
COMMENT ON TABLE notice IS '공지사항 테이블';
COMMENT ON COLUMN notice.nnum IS '공지사항번호';
COMMENT ON COLUMN notice.ntitle IS '공지글제목';
COMMENT ON COLUMN notice.ncontent IS '공지내용';
COMMENT ON COLUMN notice.nregdate IS '공지날짜';
COMMENT ON TABLE payment IS '결제테이블';
COMMENT ON COLUMN payment.pay_num IS '결제번호';
COMMENT ON COLUMN payment.booking_num IS '예약번호';
COMMENT ON COLUMN payment.coupon_num IS '쿠폰번호';
COMMENT ON COLUMN payment.pay IS '최종결제금액';
COMMENT ON COLUMN payment.pay_day IS '결제날짜';
COMMENT ON COLUMN payment.payment_type IS '결제수단';
COMMENT ON TABLE qnaboard IS 'Q&A게시판';
COMMENT ON COLUMN qnaboard.qna_num IS '문의번호';
COMMENT ON COLUMN qnaboard.mid IS '회원아이디';
COMMENT ON COLUMN qnaboard.qna_category_num IS 'qna카테고리식별키';
COMMENT ON COLUMN qnaboard.qna_title IS '문의제목';
COMMENT ON COLUMN qnaboard.qna_content IS '문의내용';
COMMENT ON COLUMN qnaboard.anwser IS '답변';
COMMENT ON COLUMN qnaboard.qna_date IS '문의작성일';
COMMENT ON COLUMN qnaboard.anwser_date IS '답변작성일';
COMMENT ON TABLE qna_category IS 'Q&A카테고리';
COMMENT ON COLUMN qna_category.qna_category_num IS 'qna카테고리식별키';
COMMENT ON COLUMN qna_category.qna_category_name IS 'qna카테고리명';
COMMENT ON TABLE reiew_img IS '리뷰이미지';
COMMENT ON COLUMN reiew_img.review_img_num IS '리뷰이미지식별번호';
COMMENT ON COLUMN reiew_img.review_num IS '후기식별키';
COMMENT ON COLUMN reiew_img.review_org_name IS '리뷰이미지원본명';
COMMENT ON COLUMN reiew_img.review_save_name IS '리뷰이미지저장명';
COMMENT ON TABLE review IS '후기게시판';
COMMENT ON COLUMN review.review_num IS '후기식별키';
COMMENT ON COLUMN review.room_num IS '방식별번호';
COMMENT ON COLUMN review.mid IS '회원아이디';
COMMENT ON COLUMN review.review_title IS '리뷰제목';
COMMENT ON COLUMN review.review_content IS '리뷰내용';
COMMENT ON COLUMN review.review_date IS '후기작성일';
COMMENT ON COLUMN review.kindness IS '친절도';
COMMENT ON COLUMN review.clean IS '청결도';
COMMENT ON COLUMN review.convenience IS '편의성';
COMMENT ON TABLE rooms IS '객실정보';
COMMENT ON COLUMN rooms.room_num IS '방식별번호';
COMMENT ON COLUMN rooms.house_num IS '업체식별키';
COMMENT ON COLUMN rooms.roomname IS '객실명';
COMMENT ON COLUMN rooms.room_prise IS '객실가격';
COMMENT ON COLUMN rooms.room_info IS '객실정보';
COMMENT ON COLUMN rooms.room_check IS '룸체크인';
COMMENT ON COLUMN rooms.max_Personnel IS '최대인원';
COMMENT ON TABLE rooms_img IS '객실이미지';
COMMENT ON COLUMN rooms_img.rooms_img_num IS '객실이미지식별키';
COMMENT ON COLUMN rooms_img.room_num IS '방식별번호';
COMMENT ON COLUMN rooms_img.room_org_name IS '객실이미지원본명';
COMMENT ON COLUMN rooms_img.room_save_name IS '객실이미지저장명';
COMMENT ON TABLE stay IS '업태';
COMMENT ON COLUMN stay.snum IS '업태식별키';
COMMENT ON COLUMN stay.sname IS '업태명';
COMMENT ON TABLE wishlist IS '찜목록';
COMMENT ON COLUMN wishlist.wish_num IS '찜목록식별키';
COMMENT ON COLUMN wishlist.mid IS '회원아이디';
COMMENT ON COLUMN wishlist.house_num IS '업체식별키';



