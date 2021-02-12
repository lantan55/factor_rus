<section class="works">
  <div class="container">
    <h2 class="works__title">Наши работы</h2>
    <div class="works__carousel owl-carousel">
        {set $rows = json_decode(7 | resource : 'works_list', true)}
        {foreach $rows as $row}
          <div class="item"><img class="item__img" src="{$row.img}" alt="{$row.title}"></div>
        {/foreach}
    </div>
  </div>
</section>