<div class="wrapper">
  <div class="row">
    <%= div_for item do %>
    <div class="item_name">
      <%= link_to "", [item.list, item], method: :delete, remote: true, class: 'glyphicon glyphicon-ok-circle' %> <%= item.name %><br />
    </div>
  <div class="item_days">
    <%= item.days_left %>
    </div>
    <% end %>
</div>
