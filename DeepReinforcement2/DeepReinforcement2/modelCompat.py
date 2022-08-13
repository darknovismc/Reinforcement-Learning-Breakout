import tensorflow.compat.v1 as tf
tf.disable_v2_behavior()
x = tf.placeholder(tf.float32, shape=[None,5], name='input')
y = tf.placeholder(tf.float32, shape=[None,3], name='target')

kint = tf.initializers.he_uniform(seed=None)
h1 =  tf.nn.relu(tf.layers.dense(x, 32,kernel_initializer=kint),name='hidden')
h2 =  tf.nn.relu(tf.layers.dense(h1, 16,kernel_initializer=kint),name='hidden2')
y_ = tf.identity(tf.layers.dense(h2, 3,kernel_initializer=kint),name='output')
loss = tf.reduce_mean(tf.square(y_ - y), name='loss')
optimizer = tf.train.AdamOptimizer(learning_rate=0.001)

train_op = optimizer.minimize(loss, name='train')
init = tf.global_variables_initializer()
saver_def = tf.train.Saver().as_saver_def()
path=tf.get_default_graph().as_graph_def().SerializeToString()
with open('graph.pb', 'wb') as f: f.write(path)
