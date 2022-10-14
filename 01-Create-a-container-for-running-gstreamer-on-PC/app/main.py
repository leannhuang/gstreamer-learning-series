import cv2
gstreamer_str = "sudo gst-launch-1.0 videotestsrc ! videoconvert ! autovideosink"
cap = cv2.VideoCapture(gstreamer_str, cv2.CAP_GSTREAMER)
while(cap.isOpened()):
    ret, frame = cap.read()
    if ret:
        cv2.imshow("Input via Gstreamer", frame)
        if cv2.waitKey(25) & 0xFF == ord('q'):
            break
        else:
            break
cap.release()
cv2.destroyAllWindows()