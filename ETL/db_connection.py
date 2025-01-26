from sqlalchemy import create_engine


engine = create_engine('mysql+pymysql://root:123456ja@localhost/netflix_db')