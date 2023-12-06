# Spectral Vision Transformer
Originally written by Anthony LaBarca, modified for lenses by Delaney Cummins
## How to use
Take the output of the preprocessing notebook and pass through `SplitDataset.ipynb`. Once the data has been split, run `Training.ipynb` to train the ViT.
Once the network has been trained, run `Testing.ipynb` to generate ROC & precision curves and confusion matrices. 

To use the script `train-vit.sh` to run the ViT as a non-interactive job on NERSC, convert the training notebook to a `.py` file and run that. 
