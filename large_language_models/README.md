**List of LLMs Summary Evaluation Methods :-**

<img width="1508" height="346" alt="image" src="https://github.com/user-attachments/assets/3dae0071-8d59-42f6-8159-531478fb8294" />


**Mover Score :-**

Measure minimum "cost" to move word embeddings from candidate to reference using Earth Mover’s Distance (Optimal Transport).

MoverScore computes distances between every candidate and reference token embedding.
The distance usually uses Euclidean norm between embeddings.
Smaller distances indicate stronger semantic similarity.


**BERT Score :-** 

Measure semantic similarity between candidate summary and reference using contextual embeddings (e.g., BERT).


