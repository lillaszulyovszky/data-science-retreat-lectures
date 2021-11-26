from matplotlib import interactive
import matplotlib.pyplot as plt
import numpy as np
from plot_utils import create_plot, plotter
from RL_library import return_pointwise_A
from RL_library import Bellmann_iteration
from RL_library import Q_estimate
from RL_library import simulate

# In this code the optimal policy is found for:
# for an agent finding the path to its destination.

# Dynamic programming is used find the optimal values and policy with the notations in chapter 4 of THE book.
# The book: Reinforcement learning (introduction) by Sutton & Batto, second edition.

# the program is structured as:
# 1. initialization
# 2. policy evaluation, just for fun of it!
# 3. policy iteration
# 4. printing and saving

# 1. Initialization
# 1.1 inputs and the random seed
np.random.seed(0)

# grid size along each direction
n = 10

# 1.2 policy $\pi$
# setting policy to a random policy
pi = np.random.random_integers(low=0, high=4, size=(n, n))
print(pi)
np.savetxt('original_pi.dat', pi)

# 1.3 values, v
# setting all to zero
v = np.zeros(shape=(n, n))

# 1.4 reward
# all points except (n-1, n-1) have negative reawrds
# the obstacles get larger negative rewards

# 1.5 discount
# should be set to a value smaller than 1
gamma = 0.99

# 1.6 setting up the plot
ax = create_plot(n)
plt.ion()
interactive(True)
plt.cla()
ax.axis('off')

# 2. policy evaluation #
# Eq. (4.5) of the book.

# this part is only executed if you want to find out what are values of the random initial policies
niteration = 10

for iteration in range(0, niteration):
    v = Bellmann_iteration(pi, v, gamma)
    plotter(ax, v)


#### 3. policy iteration ####

# 3.1 number of iterations for the policy improvement
# this can be replaced by a measure of convergence
nr_iterations = 100

# 3.2 initializing values
# values are set to zero.
v = np.zeros(shape=(n, n))

# 3.3 the main iterative loop
# Eq. (4.7) of the book:
# each step is the Bellman operation for policy evaluation
# followed by a policy improvement
step = 0

while step < nr_iterations:
    new_pi = np.zeros(shape=(n, n))
    # policy evaluation
    v = Bellmann_iteration(pi, v, gamma)
    # policy improvement
    for i in range(0, n):
        for j in range(0, n):
            Q_max = -1000
            A = return_pointwise_A(i, j)
            nr_actions = np.size(A, 0)
            # iterate over all candidate to find the largest Q
            for action_id in range(0, nr_actions):
                Q = Q_estimate(i, j, action_id, gamma, v)
                if Q >= Q_max:
                    Q_max = Q
                    new_pi[i, j] = action_id
    pi = new_pi + 0.0
    plotter(ax, v)
    step += 1

    if (step % 100 == 1):
        print("#iteration: " + str(step - 1))


simulate(4, 5, pi)
simulate(4, 5, pi, color='gray', nr_actions=5, randomize=1)

#### 4. printing and saving ####

plt.imshow(v)
plt.show()
np.savetxt('optimal_pi.dat', pi)
