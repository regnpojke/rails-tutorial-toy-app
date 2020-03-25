<template>
  <div class="contents">
    <h1>Contents</h1>
    <aside>
      <ul v-for="tab in tabContents" :key="tab.code">
        <li>{{ tab.name }}</li>
      </ul>
    </aside>
  </div>
</template>
<script lang="ts">
import { Vue, Component } from "vue-property-decorator";
@Component
export default class Contents extends Vue {
  tabContents: Tab[] = [
    { code: "recreation", name: "レクリエーション" },
    { code: "dance", name: "ダンス" },
    { code: "quiz", name: "クイズ" },
    { code: "game", name: "ゲーム" }
  ];
  activeTab: string | null = "recreation";

  mounted() {
    console.log("mounted");
  }
}

interface Tab {
  code: string;
  name: string;
}
</script>