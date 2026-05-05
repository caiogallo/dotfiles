#/usr/bin/env bash
# https://github.com/werman/noise-suppression-for-voice

sudo pacman -S --noconfirm --needed noise-suppression-for-voice
libpath=$(find / -name 'librnnoise_ladspa.so' 2>/dev/null)

if [ -z "$libpath" ]; then
	echo ERROR: librnnoise_ladspa.so not found
	exit 1
else 
	echo lib path $libpath
fi

mkdir -p ~/.config/pipewire/pipewire.conf.d
config_file=$(cat <<FILE
context.modules = [
{   name = libpipewire-module-filter-chain
    args = {
        node.description =  "Noise Canceling source"
        media.name =  "Noise Canceling source"
        filter.graph = {
            nodes = [
                {
                    type = ladspa
                    name = rnnoise
                    plugin = $libpath
                    label = noise_suppressor_mono
                    control = {
                        "VAD Threshold (%)" = 50.0
                        "VAD Grace Period (ms)" = 200
                        "Retroactive VAD Grace (ms)" = 0
                    }
                }
            ]
        }
        capture.props = {
            node.name =  "capture.rnnoise_source"
            node.passive = true
            audio.rate = 48000
        }
        playback.props = {
            node.name =  "rnnoise_source"
            media.class = Audio/Source
            audio.rate = 48000
        }
    }
}
]
FILE
)

if [ -f "~/.config/pipewire/pipewire.conf.d/99-input-denoising.conf" ]; then
	echo ERROR: file ~/.config/pipewire/pipewire.conf.d/99-input-denoising.conf already exist
	exit 2
else
	echo "$config_file" > ~/.config/pipewire/pipewire.conf.d/99-input-denoising.conf
fi

