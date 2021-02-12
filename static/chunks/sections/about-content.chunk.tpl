<section class="about-content">
  {set $rows = json_decode(2 | resource : 'about_list', true)}
  {foreach $rows as $row}
    <div class="about-list {if $row.MIGX_id % 2 === 0} about-list--dark{/if}">
      <div class="container">
        <div class="row">
          <div class="col-md-6 {if $row.MIGX_id % 2 === 0} order-md-2{/if}">
            <div class="about-list__content">
              <h2>{$row.title}</h2>
              <p>{$row.text}</p>
            </div>
          </div>
          <div class="col-md-6 {if $row.MIGX_id % 2 === 0} order-md-1{/if}">
            <div class="about-list__img"><img src="{$row.img}" alt=""></div>
          </div>
        </div>
      </div>
    </div>
  {/foreach}

</section>