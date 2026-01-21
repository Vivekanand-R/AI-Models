## **Statistical and Linear Algebra Concepts**

## Statistics Concepts
- Probability distributions  
- Conditional probability  
- Expectation (Expected value)  
- Entropy  
- Cross-entropy loss  
- KL-divergence  
- Sampling & negative sampling  

## Linear Algebra Concepts
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

## Sequence & Modeling Concepts
- Time steps & sequence length  
- Masking  
- Positional encoding  

## Numerical & Practical Concepts
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


