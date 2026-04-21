

## Part 1: Project Plan

### Goal
To analyse the distribution of tattoo counts across pirate age groups using the `pirates` dataset in R, producing a scatter plot visualisation and an exported summary statistics file.

---

### Needs

**Nouns**
- R and RStudio
- `ggplot2`, `dplyr`, `yarrr` packages
- `pirates` dataset
- Age range categories (0-20, 21-30, 31-40, 41-50, 51-60, 61+)
- Scatter plot visualisation
- Summary statistics table
- CSV export file

**Verbs**
- Load
- Mutate
- Group
- Visualise
- Summarise
- Export

---

### Steps for Implementation
1. Load required libraries: `ggplot2`, `dplyr`, `yarrr`
2. Apply `mutate()` and `cut()` to group the continuous age variable into discrete age ranges
3. Build a scatter plot using `geom_jitter()` with a mean summary line overlay
4. Label axes and add a caption describing the mean line
5. Create a separate script to calculate mean, median, standard deviation, min, max, and count by age range
6. Export summary statistics to `pirate_tattoo_stats.csv` using `write.csv()`
7. Review code for clarity and add inline comments where necessary

---

## Part 2: Repo Setup and Maintenance Plan

### Goal
To set up and maintain a version-controlled GitHub repository that demonstrates a professional Git workflow, including branching, issue tracking, pull requests, and documented merging history throughout the lifecycle of the project.

---

### Needs

**Nouns**
- GitHub repository (`pirate-analysis-r`)
- `main` branch
- `dev` branch
- Feature branches (`feature/scatter-plot-viz`, `feature/export-stats`, `feature/code-cleanup`)
- GitHub Issues
- Pull requests
- Commit messages
- `README.md`
- `PLAN.md`

**Verbs**
- Initialise
- Branch
- Commit
- Push
- Review
- Merge
- Close
- Delete
- Maintain

---

### Steps for Implementation
1. Initialise the repository locally and push to GitHub with an initial commit containing `pirate-analysis.R`, `README.md`, and `PLAN.md`
2. Create a `dev` branch from `main` to serve as the integration branch for all feature work
3. Open GitHub Issues to track each planned change before beginning development
4. Create a dedicated feature branch from `dev` for each issue
5. Commit changes on the relevant feature branch with descriptive messages referencing the issue number (e.g. `Fixes #1`)
6. Push each feature branch to GitHub and open a pull request targeting `dev`
7. Review and merge each pull request into `dev`
8. Once all features are merged and tested on `dev`, open a final pull request to merge `dev` into `main`
9. Delete feature branches after merging to keep the repository clean
10. Keep `README.md` updated to reflect the current state of the project and repo structure
