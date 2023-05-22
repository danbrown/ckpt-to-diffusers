# CKPT to Diffusers Conversion

This script is used to convert a checkpoint model to a Diffusers model.


Start by cloning the repo and installing the requirements
```bash
git clone https://github.com/danbrown/ckpt-to-diffusers.git 
cd ckpt-to-diffusers
```
`chmod +x ./install.sh`

You should have the checkpoint downloaded in a ckpt or safetensors, check the format the original file is using, in my case is a safetensors file.
`wget -O NAMEHERE.safetensors https://civitai.com/api/download/models/29792`


### ⚠️ ATTENTION: both scripts are for diffusion checkpoint models, not LoRAs.

**v1 is only compatible with .ckpt format**

**v2 is compatible with both .ckpt and .safetensors formats, it's the recommended one**


## v1
For v1, run the `./v1/app.y` script with the checkpoint path and the dump path.
```bash
python app.py --checkpoint_path="./NAMEHERE.ckpt" --scheduler_type="lms" --dump_path="./out"
```


## v2
For v2, run the `./v2/convert_diffusers20_original_sd.py` script with the checkpoint path, the dump path and the reference model.

Check this file if you need more information: [convert_diffusers20_original_sd.md](https://github.com/danbrown/ckpt-to-diffusers/blob/main/v2/convert_diffusers20_original_sd.md)


```bash
python ./v2/convert_diffusers20_original_sd.py ./NAMEHERE.safetensors ./out --v1 --reference_model runwayml/stable-diffusion-v1-5
```

-------------------
Thanks for Kohya and the following links for helping me all this together <3:
- [Self-Development JP Safetensors article](https://self-development.info/【stable-diffusion】safetensorsをdiffusersで読み込む/)

- [This Kohya notes](https://note.com/kohya_ss/n/n374f316fe4ad)

- [Kohya-ss SD Scripts](https://github.com/kohya-ss/sd-scripts) 

- [bmaltais Kohya_ss UI](https://github.com/bmaltais/kohya_ss/tree/master/tools)

- [Diffusers Library](https://github.com/huggingface/diffusers/tree/main/scripts)


If you have any questions, feel free to open an issue here. Thanks!