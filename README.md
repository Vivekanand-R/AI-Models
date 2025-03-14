**List of Time Series Models:**
				
![image](https://github.com/user-attachments/assets/ab1386a7-c571-43ab-aa98-3ed0905c4d73)

Simple problems (linear or seasonal trends): ARIMA, SARIMA, Holt-Winters.

Multivariate or external variables: VAR, SARIMAX, or LSTM with exogenous inputs.

Complex patterns or long sequences: LSTM, GRU, Transformers.

Uncertainty handling: Gaussian Processes, Kalman Filters.

Hybrid models: ARIMA + Neural Networks or DeepAR for advanced forecasting.

--------------

A collection of foundational model working showcasing basic functionality and core concepts in AI.

*Computer Vision:

1. Basic Object detection using Yolo5, Deep Lab Segmentation and Segformer model
   
3. Vision Transformers Foundational Model


**Latest Computer Vision Models:**

CNNs: Foundational for image tasks, excels in classification and object detection. (Developed by Yann LeCun and others, 1980s-1990s)

ViT: Uses transformer architecture for images, capturing long-range dependencies effectively. (Google Research, 2020)

YOLO: Real-time object detection, predicts bounding boxes from full images instantly. (Joseph Redmon et al., 2016)

ResNet: Deep networks with residual learning, solving degradation issues in training. (Microsoft Research, 2015)

Mask R-CNN: Adds segmentation masks to object detection for detailed object delineation. (Facebook AI Research, 2017)

DINOv2: Self-supervised transformer, learns from unlabeled data for versatile applications. (Meta AI, 2023)

SAM: Flexible segmentation model, handles diverse segmentation tasks with various prompts. (Meta AI, 2023)

Florence: Foundation model integrating visual-language data, versatile across multiple tasks. (Microsoft, 2021)

CLIP: Learns image-text relationships, enabling zero-shot classification through descriptions. (OpenAI, 2021)

DETR: Simplifies detection pipeline using transformers, making object detection more efficient. (Facebook AI Research, 2020)


Activation Functions:

Sigmoid: Range [0, 1], used in binary classification.

Tanh: Range [-1, 1], zero-centered.

ReLU: Range [0, ∞), popular for hidden layers.

Leaky ReLU: Range (-∞, ∞), small gradient for negatives.

Softmax: Range [0, 1] for multi-class probabilities.

----------------------------------------


**Activation Function:** Adds non-linearity to neurons, allowing the model to learn complex patterns in data.

**Epoch:** A full cycle through the entire training dataset during the training of a neural network.

**Neuron:** A single unit in a neural network layer that processes input and applies activation.

**Hidden Layer:** Layers between input and output that capture intermediate features and patterns in the data.

**Loss Function:** Measures model prediction error; optimization aims to minimize this value for better accuracy.

**Gradient:** Derivative of the loss with respect to weights, guiding weight adjustments during optimization.

**Backpropagation:** Algorithm for computing gradients, enabling efficient weight updates in neural network training.

**Learning Rate:** A factor that scales the weight updates, controlling training speed and stability.

**Overfitting:** When a model learns training data too well, causing poor performance on unseen data.

**Validation Data:** Separate data used to evaluate model performance during training, helping prevent overfitting.

**Flattening:** Reshapes multi-dimensional data (e.g., images) into a 1D vector, making it suitable for dense layers.

**Dense Layer:** Fully connected layer in a neural network where each neuron connects to every neuron in the previous layer.

**Softmax:** Activation function in output layer for multi-class classification, turning logits into probabilities.

**ReLU (Rectified Linear Unit):** Activation that outputs the input if positive, otherwise zero; combats vanishing gradients.

**Batch Size:** Number of samples processed before model updates weights, balancing speed and memory usage.

--------------------------------------------

**Case Study 1: Stock Data Analysis**   

Numerous large-scale projects and prominent financial institutions focus
 on predicting financial markets using advanced Artificial Intelligence (AI) and
 Machine Learning (ML) approach, leading to publicly available stock indices data
 sets. In this report, we will model, integrate the financial market movements using
 probabilistic graphical model approach and will incorporate economic indicators
 using external factors.
 
 This probabilistic approach incorporating a wide range of external factors that
 influence market behavior, such as macroeconomic trends, economic indicators,
 geopolitical events, technical indicators, regional and sector-specific develop
ments.
 
![Major_Indices_CP](https://github.com/user-attachments/assets/1dfb68c2-cf5e-481a-85f6-8d7b3b6ae279)


**Data Sources and Collection: ** 
Data used in this project were collected mainly from yahoo finance and government open source platforms. 

Major 7 indices  were considered in this study in three different regions such  as US, Europe and Asia. We use python API which will pull  historical data from yahoo finance (Indices data) and world  bank (wbdata for economic indicators) and store it in google  cloud for model development.

 Some of major indices were considers such as:
 
 • SP 500 (Standard and Poor’s 500)– USA: 500  of the largest publicly traded companies in the United States.
 
 • DowJones Industrial Average (DJIA)– USA: Includes 30  major, large-cap companies.
 
 • NASDAQComposite– USA: 3,000  companies listed on the NASDAQ Stock Market.
 
 • FTSE 100 (Financial Times Stock Exchange 100 Index) UK:  100 largest companies listed on the London Stock Exchange.
 
 • Nikkei 225– Japan: 225 blue-chip companies listed on the Tokyo Stock Exchange.
 
 • DAX(Deutscher Aktienindex)– Germany: It tracks 40 of the largest and most liquid companies on the Frankfurt Stock  Exchange.
 
 • Sensex (Sensitive Index)– India: Sensex tracks 30 well established and financially sound companies listed on the  Bombay Stock Exchange.


** Model Approach:**
1. Data Collection, (Yahoo finance for exploratory purpose)
2. Data Preprocessing,
   
![image](https://github.com/user-attachments/assets/573457e7-2bda-4b40-9079-4e68b7cbb4ca)

3. Feature Engineering, (Functions to create 15 different technical indicators to evaluate the stocks)
4. Model Selection (Time series models like ARIMA, RNN and LSTM will be leveraged)
5. Evaluation Metrics (Mean Square Error (MSE), Mean Absolute Error (MAE))
7. Results Interpretation And Visualization
8. Optionally, business analytics to understand different varities of sectors and revenue models.

![image](https://github.com/user-attachments/assets/c51eb893-0558-47f0-b4a7-98261db5507e)

For basic conceptual example, please refer below RSI dashboard: 

Stock Forecast Analysis: https://public.tableau.com/app/profile/vivekanand4623/vizzes

**Case Study 2: Weather Data Analysis:**

City List: Created a list of 20 major cities with their latitude and longitude coordinates.

Loop through Cities: The For loop goes through each city and calls get_weather_open_meteo, passing the latitude, longitude, and city name. 

Prediction: Time series foundational models would be utilized.

** Model Approach:**
1. Data Collection, (Major Weather Platforms API's),
        Example APIs for real-time environmental data:
	A. OpenWeatherMap (Temperature, humidity, wind, air quality) → https://openweathermap.org/api
	B. AirVisual API (CO2, PM2.5, Air Quality Index) → https://www.iqair.com/
	C. SmartThings API (IoT device integration) → https://smartthings.developer.samsung.com/


2. Data Preprocessing
   
   A. Missing Data Handling: We can start with simple averaging, forward fill (windows lead), backward fill (windows lag), mean/average, If the goal is to improve the existing model (utilizing inferential statistics includes Probability, Uncertainty, Correlations etc.,), for alternative or for more missing data advanced models (Transformers, LSTM, GANs and xLSTM) for highly non linear data.
   
   B. Normalization and standardizations.(Min-Max Scalling, z-Scoring etc.,)

![image](https://github.com/user-attachments/assets/269f508b-9207-42a1-80eb-fc5e7b1deb26)

   
4. Feature Engineering, (Functions to create/select different variables like Temperature, Humidity, CO2, PM2.5, VOCs, Noise, wind speed, carbon emissions, Oxygen, Light Levels, Air flow, thermal, vibrations and lot more.,)
5. Model Selection (Time series models like ARIMA, RNN and LSTM can be leveraged),
6. Evaluation Metrics (Mean Square Error, etc),
7. Results Interpretation, and
8. Optionally, flat maps will be implemented for better visualization.





 



