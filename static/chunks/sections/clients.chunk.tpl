<section class="clients">
  <div class="container">
    <div class="clients__wrap">
      <h2 class="clients__title">НАШИ КЛИЕНТЫ</h2>
      <div class="clients__carousel owl-carousel">
        {set $rows = json_decode(1 | resource : 'clients_list', true)}
        {foreach $rows as $row}
          <div class="item"><img class="item__img" src="{$row.img}" alt="{$row.alt}"></div>
        {/foreach}
      </div>
    </div>
  </div>
</section>