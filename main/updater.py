from apscheduler.schedulers.background import BackgroundScheduler
from .jobs import crawlingfunction

def start():
    scheduler = BackgroundScheduler()
    scheduler.add_job(crawlingfunction, 'interval', hours=23)
    scheduler.start()

