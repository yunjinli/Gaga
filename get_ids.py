# import the required library
import cv2
import sys

path = sys.argv[1]
# define a function to display the coordinates of
# prompts = ""
# of the points clicked on the image
def click_event(event, x, y, flags, params):
   if event == cv2.EVENT_LBUTTONDOWN:
    #   print(f'({x},{y})')
      # point_str = f'"({x}, {y})"'
      # print(point_str)
    #   prompts += point_str + " "
      
      # put coordinates as text on the image
      # cv2.putText(img, f'({x},{y})',(x,y),
      # cv2.FONT_HERSHEY_SIMPLEX, 1, (0, 0, 255), 2)
      print(img[y, x, 0])
      # draw point on the image
      # cv2.circle(img, (x,y), 3, (0,255,255), -1)
      cv2.circle(img_rgb, (x,y), 3, (0,255,255), -1)
 
# read the input image
img = cv2.imread(path)
img_rgb = cv2.imread(path.replace('sam_mask', 'rgb/2x'))

# create a window
cv2.namedWindow('Point Coordinates')

# bind the callback function to window
cv2.setMouseCallback('Point Coordinates', click_event)

# display the image
while True:
  #  cv2.imshow('Point Coordinates',img)
   cv2.imshow('Point Coordinates',img_rgb)
   k = cv2.waitKey(1) & 0xFF
   if k == 27:
      break
cv2.destroyAllWindows()
print(prompts)