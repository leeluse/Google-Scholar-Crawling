from scholarly import scholarly
import pymysql



def crawlingfunction():
    # MySQL Connection 연결
    conn = pymysql.connect(host='localhost', user='leesuyeon', password='tndus0385',
                           db='crawling', charset='utf8')  # 한글처리 (charset = 'utf8')
    # 커서 생성
    cursor = conn.cursor()

    authors = ['S6PYdVAAAAAJ', 'JVk6_AkAAAAJ']

    for author in authors:
        search_query = scholarly.search_author_id(author)
        author = scholarly.fill(search_query)

        publication = ([pub['bib']['title'] for pub in author['publications']])
        pub_count = len(publication)

        for i in range(pub_count):
            try:
                pub = scholarly.fill(author['publications'][i])
                pub_title = pub['bib']['title']
                pub_year = pub['bib']['pub_year']
                pub_author = pub['bib']['author']
                cursor.execute(
                    f"INSERT IGNORE INTO scholar_list (Year, Title, Author) VALUES(\"{pub_year}\",\"{pub_title}\",\"{pub_author}\")")
                print(pub_title)

            except KeyError:
                pub_title = pub['bib']['title']
                pub_year = ''
                pub_author = pub['bib']['author']
                cursor.execute(
                    f"INSERT IGNORE INTO scholar_list (Year, Title, Author) VALUES(\"{pub_year}\",\"{pub_title}\",\"{pub_author}\")")

    sql = "INSERT IGNORE INTO relation_list (PersonID, PaperID) SELECT %s, ID FROM scholar_list WHERE scholar_list.Author REGEXP (%s)"
    val = [(1, 'Dongmahn Seo|서동만|Dong-Mahn Seo|DM Suh|DM Seo|D Seo|DMS|Dong Mahn Seo|Dong-Man Seo'),
           (2, 'Soobin Jeon|전수빈|Soo-Bin Jeon|S Jeon|SB Jeon|SMJ'),
           (3, '박준홍|Junhong Park|Jun-hong Park'),
           (4, '김수종|Soojong Kim'),
           (5, '전민건|Mingun Jeon'),
           (6, '김유리'),
           (7, '김유진'),
           (8, '조혜원'),
           (9, '김수정'),
           (10, '이예지'),
           (11, '권혁규'),
           (12, '박성주'),
           (13, '김보경'),
           (14, '신지수'),
           (15, '송희재'),
           (16, '김동현'),
           (17, '노동원'),
           (18, '이동욱'),
           (19, '유진희'),
           (20, '김재훈'),
           (21, '정영주'),
           (22, '이성원'),
           (23, '김석진'),
           (24, '정연욱'),
           (25, '한윤성'),
           (26, '안광은'),
           (27, '이민영'),
           (28, '한정')]

    # 관계형 테이블 데이터 입력
    cursor.executemany(sql, val)

    # MySQL DB 저장
    conn.commit()

    # 연결 종료
    conn.close()

