# Message that contains per bounding box, mask information
# Class type
uint16 class_id
# Top left point column number for the bounding box
uint16 x1 
# Top left point row number for the bounding box
uint16 y1
# Bottom right point column number for the bounding box
uint16 x2
# Bottom right point row number for the bounding box
uint16 y2
# Confidence score for the bounding box
float32 score
# mask vectorized per row from a 28*28 2d array
float32[] mask