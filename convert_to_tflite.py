import tensorflow as tf

saved_model_dir = "bvm_model"

# Convert the model
converter = tf.lite.TFLiteConverter.from_saved_model(saved_model_dir)

# quantize the model to float16 on export (up to 50% size reduction)
converter.optimizations = [tf.lite.Optimize.DEFAULT]
converter.target_spec.supported_types = [tf.float16]
tflite_model = converter.convert()

# Save the model
with open("bvm_model.tflite", "wb") as f:
    f.write(tflite_model)
