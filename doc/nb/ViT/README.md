# Spectral Vision Transformer
Originally written by Anthony LaBarca, modified for lenses by Delaney Cummins
## How to use
Take the output of the preprocessing notebook and pass through `SplitDataset.ipynb`. Once the data has been split, run `Training.ipynb` to train the ViT.
Once the network has been trained, run `Testing.ipynb` to generate ROC & precision curves and confusion matrices. 

To use the script `train-vit.sh` to run the ViT as a non-interactive job on NERSC, convert the training notebook to a `.py` file and run that. 

## Transformer Resources
- [An explanation of the ViT](https://machinelearningmastery.com/the-vision-transformer-model/) and [an explanation of attention in transformers](https://machinelearningmastery.com/the-vision-transformer-model/). The blog that these articles come from is also just generally a good place to look for explanations of machine learning concepts, and sometimes info on implementation as well.
- [Attention is all you need](https://arxiv.org/abs/1706.03762) and [An image is worth 16x16 words](https://arxiv.org/abs/2010.11929). If you want to really get into the weeds, these are the papers that introduced the transformer and the vision transformer, respectively.
- [Visualization of attention in RNN encoder-decoders](https://jalammar.github.io/visualizing-neural-machine-translation-mechanics-of-seq2seq-models-with-attention/). This isn't really about transformers, but I found it helpful for understanding where the idea of attention comes from and how it improved on existing models. 
