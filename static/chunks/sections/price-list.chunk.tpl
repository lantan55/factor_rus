<section class="price-list">
  <div class="container">
    {set $rows = json_decode($_modx->resource.id | resource : 'price-list', true)}
    {if $rows}<h2>Каталог</h2>{/if}
    {foreach $rows as $row}
      <div class="row item">
        <div class="col-md-5 item__img order-md-1"><img src="{$row.img}" alt=""></div>
        <div class="col-md-7 item__content order-md-2">
          <h4 class="item__title">{$row.title}</h4>
          <p class="item__text">{$row.desc}</p>
          <span class="item__price">{$row.price}</span>
          <div class="item__btn">
            <a class="c-btn openModalCalc" href="#">Заказать</a>
          </div>
        </div>
      </div>
    {/foreach}
  </div>
</section>