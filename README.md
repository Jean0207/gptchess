# Project Title

## Introduction

Des affirmations récentes suggèrent que les grands modèles de langage (LLMs), tels que les variantes de GPT, pourraient exceller aux échecs, surpassant même une majorité de joueurs humains ou produisant systématiquement des coups légaux. Cette étude examine systématiquement ces affirmations en confrontant différents modèles GPT à des moteurs d’échecs établis, et ce, dans diverses conditions expérimentales. Le principal défi réside dans la garantie d’une reproductibilité robuste, en contrôlant rigoureusement les prompts, les paramètres des parties et les variantes des modèles, afin d’évaluer avec précision à la fois les capacités de génération de coups légaux et les classements Elo approximatifs de ces systèmes. Au cours de ce processus, l’étude montre que certaines stratégies de fine-tuning orientées vers les interactions en langage naturel peuvent en réalité réduire les performances sur une tâche bien définie et régie par des règles, comme les échecs.

   ### How to Reproduce the Results
   1. **Requirements**  
   Dependencies and Versions
   Base Image:
   Utilisation de Docker pour standardiser l'environnement.
   System Requirements
   Docker :
   Version minimale : 20.10.x.
   Configuration système recommandée :
   Minimum 4 Go de RAM pour l'exécution des conteneurs.
   Minimum 10 Go d'espace disque disponible pour les images Docker.
   Système d'exploitation :
   Windows 11


2. **Setting Up the Environment**  
cloner le dépot :
```bash
git clone https://github.com/Jean0207/gptchess/blob/main/README.md
 ```
Puis une fois dans le dossier gptchess taper les commandes :
```bash
docker build -t reproducible-project .
docker run -it reproducible-project
```

3. **Reproducing Results**  
   Ouvrir un navigateur
   Se rendre à l’URL : http://localhost:9999/notebooks/analysis.ipynb
   Selectionner “run” puis “run all cells”


4. **Automation (Bonus)**  
   - Explain the included GitHub Action that produces or analyzes data automatically.  
    
### Encountered Issues and Improvements
1. Problème avec .append dans Pandas
Contexte : Le code original utilisait la méthode .append de Pandas pour ajouter des données à un DataFrame.
Problème : À partir de Pandas v2.0, la méthode .append a été dépréciée et supprimée, ce qui a conduit à des erreurs lors de l'exécution du code sur des versions récentes de Pandas.
Solution : Nous avons remplacé les appels à .append par la méthode .concat, qui est la méthode recommandée par la documentation officielle de Pandas. Cela a permis d'assurer la compatibilité avec les versions actuelles et futures de Pandas.

### Is the Original Study Reproducible?
- Summarize the success or failure of reproducing the study.
- Include supporting evidence, such as comparison tables, plots, or metrics.

## Replicability

### Variability Factors
- **List of Factors**: Identify all potential sources of variability (e.g., dataset splits, random seeds, hardware).  
  Example table:
  | Variability Factor | Possible Values     | Relevance                                   |
  |--------------------|---------------------|--------------------------------------------|
  | Random Seed        | [0, 42, 123]       | Impacts consistency of random processes    |
  | Hardware           | CPU, GPU (NVIDIA)  | May affect computation time and results    |
  | Dataset Version    | v1.0, v1.1         | Ensures comparability across experiments   |

- **Constraints Across Factors**:  
  - Document any constraints or interdependencies among variability factors.  
    For example:
    - Random Seed must align with dataset splits for consistent results.
    - Hardware constraints may limit the choice of GPU-based factors.

- **Exploring Variability Factors via CLI (Bonus)**  
   - Provide instructions to use the command-line interface (CLI) to explore variability factors and their combinations:  
     ```bash
     python explore_variability.py --random-seed 42 --hardware GPU --dataset-version v1.1
     ```
   - Describe the functionality and parameters of the CLI:
     - `--random-seed`: Specify the random seed to use.
     - `--hardware`: Choose between CPU or GPU.
     - `--dataset-version`: Select the dataset version.


### Replication Execution
1. **Instructions**  
   - Provide detailed steps or commands for running the replication(s):  
     ```bash
     bash scripts/replicate_experiment.sh
     ```

2. **Presentation and Analysis of Results**  
   - Include results in text, tables, or figures.
   - Analyze and compare with the original study's findings.

### Does It Confirm the Original Study?
- Summarize the extent to which the replication supports the original study’s conclusions.
- Highlight similarities and differences, if any.

## Conclusion
- Recap findings from the reproducibility and replicability sections.
- Discuss limitations of your
