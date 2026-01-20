## **Statistical, Linear Algebra and Other ML Concepts**

## Statistics
- Probability distributions  
- Conditional probability  
- Expectation (Expected value)  
- Entropy  
- Cross-entropy loss  
- KL-divergence  
- Sampling & negative sampling  

## Linear Algebra
- Basis and change of basis  
- Vector spaces and subspaces  
- Orthogonality  
- Matrix rank  
- Inverse & pseudo-inverse  
- Diagonalization  
- Singular Value Decomposition (SVD)  

## Optimization & Calculus (Light Awareness)
- Gradients  
- Partial derivatives  
- Chain rule  
- Gradient descent  

## Sequence & Modeling
- Time steps & sequence length  
- Masking  
- Positional encoding  

## Numerical & Practical
- Normalization & standardization  
- Numerical stability  
- Floating-point precision  

--------------------------

--------------------------


## Orders of statistics 

Orders of statistics are unlimited in theory, but typically only up to fourth order are used in practice.

First Order Statistics → Mean, median, mode, minimum, maximum, percentiles
Describe the central or average value of data

Second Order Statistics → Variance, standard deviation, range, IQR, covariance, correlation, covariance matrix, eigenvalues, eigenvectors
Describe spread, relationships, and main directions of variance in data

Third Order Statistics → Skewness, third central moment
Describe data asymmetry (left or right tilt)

Fourth Order Statistics → Kurtosis, excess kurtosis, fourth central moment
Describe tail heaviness and extreme values


## **Linear Algebra → Vector Operations → Bilinear Products**

**Dot Product (Inner Product)**

Combines two vectors → single number (scalar), Measures how similar or aligned two vectors are:-

a · b = |a||b|cos(θ)

Used for similarity, projection, angle, and work in physics. 

(measuring similarity between two text documents in search engines; result is a single number, range = −|a||b| to +|a||b|; limitation: loses detailed feature-level information.). 

i. BERT4Rec → Uses dot product inside self-attention (query · key)

ii. SASRec / SAS4Rec → Uses dot product in self-attention for sequence modeling

Example 1:-

Dot Product (2×1 · 2×1)

Let a = [1, 2]  
Let b = [3, 4]

Dot product:
a · b = (1 × 3) + (2 × 4)
      = 3 + 8
      = 11   (scalar)


**Outer Product**

Combines two vectors → matrix. Shows all pairwise interactions between elements

a ⊗ b = a bᵀ

Used in covariance matrices, PCA, machine learning. 

(Outer Product → building a covariance matrix from data in finance or ML; result is a matrix with no fixed range; limitation: creates large matrices and is computationally expensive.)

iii. xLSTM → Uses outer product–style interactions to capture higher-order feature relationships.

Some advanced memory and interaction modules inside xLSTM rely on matrix-form interactions, not just scalars.

Example 2:-

Outer Product (2×1 ⊗ 1×2)

a ⊗ b = a bᵀ

a = [1
     2]

bᵀ = [3  4]

Outer product:
[1] [3  4] = [1×3  1×4] = [3  4]
[2]         [2×3  2×4]   [6  8]


## Linear Algebra → Matrix Theory / Linear Transformations

Eigenvector:- Special direction that remains unchanged in direction when a linear transformation is applied. Represents a fundamental pattern or axis along which the system behaves consistently.

Eigenvalue:- Scalar that measures how strongly a transformation acts along its corresponding eigenvector. Iindicates the magnitude of scaling or importance of that direction.

## **Other ML Concepts/Workouts:-**

<img width="1027" height="596" alt="image" src="https://github.com/user-attachments/assets/cad271d6-6e35-42bd-8873-16cd6dc03e79" />


<img width="1387" height="522" alt="image" src="https://github.com/user-attachments/assets/7e305364-6c4e-4ed6-b51c-32398f066c28" />


<img width="1217" height="843" alt="image" src="https://github.com/user-attachments/assets/d4515888-21fa-4cb3-82fa-b3a947fe2805" />

The example workout that we performed is for single layer perceptron. 

If we added even one hidden layer:
            The model becomes a multi-layer perceptron (MLP), Can solve XOR, Requires backpropagation, Loses the Perceptron Convergence Theorem guarantee


# Backpropagation Algorithm (Detailed)

1. Network Notation

a[0] = x   (input vector)

For l = 1, 2, ..., L:

z[l] = W[l] · a[l-1] + b[l]
a[l] = σ(z[l])

Where:
W[l] : weight matrix at layer l
b[l] : bias vector at layer l
z[l] : pre-activation vector
a[l] : activation / output vector
σ(·) : activation function

--------------------------------------------------

2. Loss Function

Let:
ŷ = a[L]   (network output)
y = true target

Mean Squared Error (MSE):
L = 1/2 · || ŷ − y ||²

Cross-Entropy Loss:
L = − Σ y · log(ŷ)

--------------------------------------------------

3. Objective of Backpropagation

Compute gradients of the loss with respect to all parameters:

∂L / ∂W[l]
∂L / ∂b[l]

--------------------------------------------------

4. Error Term (Delta)

Define the error signal at layer l:

δ[l] = ∂L / ∂z[l]

--------------------------------------------------

5. Backpropagation at the Output Layer

General form:

δ[L] = (∂L / ∂a[L]) ⊙ σ'(z[L])

Special cases:

MSE + Linear activation:
δ[L] = a[L] − y

Softmax + Cross-Entropy:
δ[L] = ŷ − y

--------------------------------------------------

6. Backpropagation for Hidden Layers

For l = L−1, L−2, ..., 1:

δ[l] = (W[l+1])ᵀ · δ[l+1] ⊙ σ'(z[l])

--------------------------------------------------

7. Gradients of Parameters

Weight gradient:
∂L / ∂W[l] = δ[l] · a[l-1]ᵀ

Bias gradient:
∂L / ∂b[l] = δ[l]

--------------------------------------------------

8. Parameter Update (Gradient Descent)

Using learning rate η:

W[l] = W[l] − η · ∂L / ∂W[l]
b[l] = b[l] − η · ∂L / ∂b[l]

--------------------------------------------------

9. Complete Algorithm Summary

Forward pass:
z[l] = W[l] · a[l-1] + b[l]
a[l] = σ(z[l])

Backward pass:
δ[L] = (∂L / ∂a[L]) ⊙ σ'(z[L])
δ[l] = (W[l+1])ᵀ · δ[l+1] ⊙ σ'(z[l])

Gradients:
∂L / ∂W[l] = δ[l] · a[l-1]ᵀ
∂L / ∂b[l] = δ[l]

--------------------------------------------------

Notes:
- ⊙ denotes element-wise multiplication
- All vectors are assumed to be column vectors
- All equations are fully vectorized






