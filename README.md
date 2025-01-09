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
    
### Encountered Issues and Improvements
1. Problème avec .append dans Pandas
Contexte : Le code original utilisait la méthode .append de Pandas pour ajouter des données à un DataFrame.
Problème : À partir de Pandas v2.0, la méthode .append a été dépréciée et supprimée, ce qui a conduit à des erreurs lors de l'exécution du code sur des versions récentes de Pandas.
Solution : Nous avons remplacé les appels à .append par la méthode .concat, qui est la méthode recommandée par la documentation officielle de Pandas. Cela a permis d'assurer la compatibilité avec les versions actuelles et futures de Pandas.

### Is the Original Study Reproducible?

## Comparaison des Résultats pour Text-Davinci-003 : Analyse Originale vs Reproduite

![Résultats pour Text-Davinci-003](./davinci.png)

| **Métrique**                     | **Étude Originale** | **Résultats Reproduits** | **Commentaire**                                                                 |
|----------------------------------|---------------------|--------------------------|---------------------------------------------------------------------------------|
| **Nombre total de parties jouées** | 73                  | 73                       | Le nombre total de parties jouées correspond parfaitement entre l'étude originale et les résultats reproduits. |
| **Parties avec des coups illégaux** | 72                  | 72                       | Résultats identiques : presque toutes les parties contiennent des coups illégaux. |
| **Parties contre un moteur aléatoire** | 21                  | 21                       | Correspondance parfaite entre les deux études.                                  |
| **Parties sans coups illégaux**   | 1                   | 1                        | Les deux études confirment une seule partie sans coups illégaux, une défaite contre Stockfish. |
| **Partie la plus longue**         | 20 coups            | 20 coups                 | Correspondance parfaite pour la durée de la partie la plus longue.              |
| **Partie la plus courte**         | 5 coups             | 5 coups                  | Correspondance exacte pour la partie la plus courte.                            |
| **Durée moyenne des parties**     | 12 coups            | 12 coups                 | Les résultats reproduits sont cohérents avec l'étude originale.                 |
| **Durée médiane des parties**     | 12 coups            | 12 coups                 | La durée médiane des parties est identique dans les deux études.                |

![Résultats pour GPT-3.5-Turbo-Instruct](./turbo-instruct.png)

## Comparaison des Résultats pour GPT-3.5-Turbo-Instruct : Analyse Originale vs Reproduite

| **Métrique**                            | **Étude Originale** | **Résultats Reproduits** | **Commentaire**                                                                 |
|-----------------------------------------|---------------------|--------------------------|---------------------------------------------------------------------------------|
| **Total de parties jouées contre Stockfish (SF)** | 439                 | 439                      | Les résultats reproduits correspondent parfaitement au nombre total de parties jouées contre SF. |
| **Parties légales contre SF**           | 369                 | 369                      | Les deux études s'accordent sur le nombre de parties légales contre SF.        |
| **Taux de parties illégales**           | 16%                 | 16%                      | Résultats identiques : 16 % des parties contiennent des coups illégaux.        |
| **Elo moyen (parties légales)**         | 1743                | 1743                     | Correspondance parfaite pour l'Elo basé uniquement sur les parties légales.    |
| **Elo moyen (toutes les parties)**      | 1696                | 1696                     | Les résultats reproduits pour l'Elo, incluant toutes les parties, correspondent parfaitement. |

![Résultats pour GPT-4](./gpt4.png)

## Comparaison des Résultats pour GPT-4 : Analyse Originale vs Reproduite

| **Métrique**                            | **Étude Originale** | **Résultats Reproduits** | **Commentaire**                                                                 |
|-----------------------------------------|---------------------|--------------------------|---------------------------------------------------------------------------------|
| **Total de parties jouées contre Stockfish (SF)** | 94                  | 94                       | Les résultats reproduits correspondent parfaitement au nombre total de parties jouées contre SF. |
| **Parties légales contre SF**           | 64                  | 64                       | Les deux études s'accordent sur le nombre de parties légales contre SF.        |
| **Taux de parties illégales contre SF** | 32%                 | 32%                      | Les taux sont identiques, confirmant la cohérence entre l'étude originale et les résultats reproduits. |
| **Elo moyen (parties légales)**         | 1371                | 1371                     | Correspondance parfaite pour l'Elo basé uniquement sur les parties légales.    |
| **Elo moyen (toutes les parties)**      | 1305                | 1305                     | Les résultats reproduits pour l'Elo, incluant toutes les parties, correspondent parfaitement. |

![Résultats pour GPT-3.5-Turbo](./turbo.png)

## Comparaison des Résultats pour GPT-3.5-Turbo : Analyse Originale vs Reproduite

| **Métrique**                            | **Étude Originale** | **Résultats Reproduits** | **Commentaire**                                                                 |
|-----------------------------------------|---------------------|--------------------------|---------------------------------------------------------------------------------|
| **Total de parties jouées contre Stockfish (SF)** | 30                  | 30                       | Les résultats reproduits correspondent parfaitement au nombre total de parties jouées contre SF. |
| **Parties légales contre SF**           | 2                   | 2                        | Les deux études confirment que seulement 2 parties légales ont été jouées contre SF. |
| **Taux de parties illégales contre SF** | 93%                 | 93%                      | Les taux sont identiques, confirmant que GPT-3.5-Turbo a des difficultés à respecter les règles d’échecs. |
| **Score (parties légales)**             | 0%                  | 0%                       | Résultats identiques : GPT-3.5-Turbo n’a remporté aucune des deux parties légales contre SF. |



## Replicability

### Variability Factors
## Variability Factors

| **Variability Factor**   | **Possible Values**                           | **Relevance**                                                                           |
|---------------------------|-----------------------------------------------|-----------------------------------------------------------------------------------------|
| **Model Version**         | GPT-3.5, GPT-4                               | Affects model behavior and output quality                                              |
| **Temperature**           | 0, 0.8, 1.0                                  | Controls diversity and determinism of responses                                        |
| **Prompt Formulation**    | Standard PGN, Chat-oriented, Altered Prompts | Directly influences the ability to generate legal moves                                |
| **Adversary (Chess Engine)** | Stockfish (Skill Level 1-20), Random Engine | Impacts difficulty and variability of the game                                         |
| **Position Initialization** | Standard Openings, Random n=10 Moves         | Tests robustness to unusual board positions                                            |
| **Random Seed**           | [0, 42, 123]                                 | Impacts consistency of random processes                                                |
| **Hardware**              | CPU, GPU                                     | May affect computation time and reproducibility                                        |
| **Evaluation Metrics**    | Legal Moves %, Elo Rating                    | Ensures comparability and relevance of results                                         |
| **Dataset Size**          | 100 games, 500 games                         | Larger datasets increase robustness of conclusions                                     |
| **API vs Local Execution**| API, Local Execution                         | API settings may differ from local model behavior                                      |


- **Constraints Across Factors**:  

## Contraintes et Interdépendances

| **Contrainte**                      | **Facteurs Impactés**                             | **Explication**                                                                                                                                      |
|-------------------------------------|--------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Compatibilité du modèle**         | Modèle (GPT-3.5, GPT-4), Température             | Certaines versions de modèles (comme GPT-4) sont plus sensibles aux variations de température, influençant la sortie.                                |
| **Pertinence des prompts**          | Prompt, Modèle                                   | La formulation des prompts doit être adaptée à chaque modèle. Par exemple, les prompts PGN standard conviennent mieux à GPT-3.5-turbo-instruct.      |
| **Adversaire et niveau de compétence** | Adversaire, Température                         | L'adversaire choisi (Stockfish vs moteur aléatoire) peut interagir différemment avec des réponses plus ou moins déterministes (contrôlées par la température). |
| **Position initiale aléatoire**     | Initialisation des positions, Adversaire         | Les positions aléatoires (n=10 premiers coups) peuvent perturber davantage les moteurs faibles qu’un adversaire comme Stockfish.                     |
| **Limites matérielles**             | Matériel, Modèle                                 | L'utilisation de modèles plus complexes (comme GPT-4) ou de paramètres exigeants (profondeur de Stockfish) dépend des capacités matérielles.         |
| **Graines aléatoires**              | Graines aléatoires, Initialisation des positions | Une graine différente modifiera l’ordre des parties ou des positions initiales, rendant les comparaisons non reproductibles.                        |
| **Influence des adversaires**       | Adversaire, Longueur des parties                 | Les moteurs d’échecs puissants tendent à prolonger les parties, ce qui peut tester la capacité du modèle à rester précis sur de longues séquences.    |
| **Métriques cohérentes**            | Métriques d’évaluation, Modèle, Adversaire       | Le calcul du pourcentage de coups légaux ou du Elo doit être appliqué de manière cohérente pour tous les modèles et adversaires.                     |


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
