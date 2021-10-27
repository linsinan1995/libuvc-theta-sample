from lib.pytheta import launch
import threading

if __name__ == '__main__':
    ap = "ap"
    pipeline = f"appsrc name={ap} caps=\"video/x-h264, framerate=(fraction)30000/1001, stream-format=(string)byte-stream, profile=(string)constrained-baseline\" ! queue ! decodebin ! videoconvert ! autovideosink"
    serial_number = b"20102567"
    x = threading.Thread(target=launch, args=(pipeline.encode(encoding='UTF-8'), ap.encode(encoding='UTF-8'), serial_number))
    x.start()