import datetime
import subprocess
import time
from mcrcon import MCRcon
import threading

print("hello world")
def run_forge():
    # Forgeの実行
    print("forge Start")
    forge_command = [
        "java",
        "@user_jvm_args.txt",  # JVM引数
        "@libraries/net/minecraftforge/forge/1.21.3-53.0.21/win_args.txt",  # プログラム引数
    ]
    result = subprocess.Popen(
            forge_command,
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
            text=True
        )
    for i in result.stdout:
        print(i,end="")

def run_rcon():
    with MCRcon("localhost", "PASS") as mcr:
        while True:
            dt_now = datetime.datetime.now()
            resp = mcr.command("/say "+ "hello")
            if dt_now.minute==0 and dt_now.second==0:
                resp = mcr.command("/say "+ str(dt_now.hour)+":00")




thread_1 = threading.Thread(target=run_forge)
thread_2 = threading.Thread(target=run_rcon)
thread_1.start()
time.sleep(23)
print("RCON Start")
thread_2.start()