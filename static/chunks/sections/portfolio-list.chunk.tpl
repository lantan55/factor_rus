<section class="portfolio-list"> 
    <div class="container">
        <div class="row">
            {set $rows = json_decode(7 | resource : 'works_list', true)}
            {foreach $rows as $row}
                <div class="col-md-4">
                    <a class="card" href="{$row.img}" data-width="2048" data-height="1365" data-fancybox="images" data-caption="{$row.title}">
                        <div class="card__img">
                            <img src="{$row.img}" alt="{$row.title}">
                        </div>
                        <div class="card__title">
                            <h4>{$row.title}</h4>
                        </div>
                    </a>
                </div>
            {/foreach}
        </div>
    </div>
</section>