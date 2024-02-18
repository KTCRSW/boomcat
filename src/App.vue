<template>
  <div>
    <center>
      <img src="./assets/cat.png" alt="cat">
    </center>
  </div>
</template>

<script>
export default {
  mounted() {
    this.playAudio();
  },
  methods: {
    playAudio() {
      const audio = new Audio(require('@/assets/boom.mp3')); 
      audio.addEventListener('canplaythrough', () => {
        audio.play().catch(error => {
          console.error('Error playing audio:', error);
        });
      });
    }
  }
}
</script>
