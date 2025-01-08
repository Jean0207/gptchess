# Project Title

## Introduction

Recent claims have suggested that large language models (LLMs), such as GPT variants, might excel at chess—even surpassing a majority of human players or consistently producing legal moves. This study systematically investigates these assertions by pitting different GPT models against established chess engines under various experimental conditions. The core challenge lies in ensuring robust reproducibility—carefully controlling prompts, game parameters, and model variants—to accurately assess both the legal move generation capabilities and the approximate Elo ratings of these systems. In the process, it provides evidence that certain chat-oriented fine-tuning strategies may actually reduce performance on a well-defined, rules-based task like chess
## Reproducibility

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
