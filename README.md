
# Illegal Fishing Detection - PDDL Scenarios

This repository contains **PDDL domain and problem files** for modeling illegal fishing detection scenarios for AI planning and goal recognition. The files are organized based on two research papers, each contributing different sets of scenarios.

# Repository Structure
**Scenarios**
- **`first-paper-scenarios/`**: Contains 11 problem files used in [Towards Explainable Goal Recognition Using Weight of Evidence (WoE): A Human-Centered Approach].  
- **`second-paper-scenarios/`**: Contains 8 problem files used in [Hypothesis-Driven Explainable Goal Recognition].  
- **`domain.pddl`**: Defines the predicates, actions, and constraints for illegal fishing detection. 

# Usage
1. Install a PDDL planner (e.g., Fast Downward, Metric-FF, ....).  
2. Run the goal recognition model, which will use the PDDL planner to process the given domain and scenarios.  
3. The model output is the likelihood of different illegal fishing activities based on observed actions.  
4. Analyze the output to assess and interpret potential illegal activities. 

# Citations
If you use this repository, please cite the relevant papers:

- First Paper:
  Alshehri, A., Abdulrahman, A., Alamri, H., Miller, T., & Vered, M. (2024). Towards Explainable Goal Recognition Using Weight of Evidence (WoE): A Human-Centered Approach. arXiv preprint arXiv:2409.11675.
- Second Paper:
  


