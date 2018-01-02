model = Sequential()
    model.add(Convolution2D(4, 3, 3, dim_ordering='th', input_shape=(3, 80, 80))) #use input_shape=(3, 64, 64)
    model.add(BatchNormalization())
    model.add(Activation('relu'))
    model.add(MaxPooling2D(pool_size=(2, 2), strides=(2, 2), dim_ordering='th'))
    model.add(Convolution2D(8, 3, 3, dim_ordering='th'))
    model.add(BatchNormalization())
    model.add(Activation('relu'))
    model.add(MaxPooling2D(pool_size=(2, 2), strides=(2, 2), dim_ordering='th'))

    model.add(Convolution2D(16, 3, 3, dim_ordering='th'))
    model.add(BatchNormalization())
    model.add(Activation('relu'))
    model.add(MaxPooling2D(pool_size=(2, 2), strides=(2, 2), dim_ordering='th'))

    model.add(Convolution2D(32, 3, 3, dim_ordering='th'))
    model.add(BatchNormalization())
    model.add(Activation('relu'))
    model.add(MaxPooling2D(pool_size=(2, 2), strides=(2, 2), dim_ordering='th'))

    model.add(Dropout(0.2))
    
    model.add(Flatten())
    model.add(Dense(32))#, activation='relu'))
    model.add(BatchNormalization())
    model.add(Activation('relu'))
    model.add(Dropout(0.1))

    model.add(Dense(24))
    model.add(BatchNormalization())
    model.add(Activation('relu'))
    model.add(Dropout(0.1))


    model.add(Dense(16))#, activation='relu'))
    model.add(BatchNormalization())
    model.add(Activation('relu'))

    model.add(Dense(16))#, activation='relu'))
    model.add(BatchNormalization())
    model.add(Activation('relu'))

    model.add(Dropout(0.1))
    model.add(Dense(3, activation='softmax'))

    model.compile(optimizer=opt_, loss='sparse_categorical_crossentropy', metrics=['accuracy']) 
    return model