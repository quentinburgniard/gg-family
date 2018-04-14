<template>
  <li class="collection-item stage-list-item ui-sortable-handle">
    <div class="row">
        <div class="input-field col s6">
          <label for="workflow_workflow_stages_attributes_"{{ index }}"_name">Name</label>
          <input value="" name="workflow[workflow_stages_attributes][{ index }][name]" id="workflow_workflow_stages_attributes_{ index }_name" type="text">
        </div>
        <div class="input-field col s6">
          <label for="workflow_workflow_stages_attributes_{ index }_description">Description</label>
          <textarea class="materialize-textarea" name="workflow[workflow_stages_attributes][{ index }][description]" id="workflow_workflow_stages_attributes_{ index }_description"></textarea>
        </div>
        <input class="workflow_workflow_stages_attributes_position" value="0" name="workflow[workflow_stages_attributes][{ index }][position]" id="workflow_workflow_stages_attributes_{ index }_position" type="hidden">
      </div>
  </li>
</template>

<script>
export default {
  data: function () {
    return {
      index: 1,
      message: "Hello Vue!"
    }
  }
}
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>
