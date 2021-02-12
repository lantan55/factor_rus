<section class="reviews">
    <div class="container">
        <h2 class="reviews__title">Отзывы о нас</h2>
        <div class="reviews__wrap">
            <div class="reviews__carousel owl-carousel">
                {set $rows = json_decode(1 | resource : 'reviews_list', true)}
                {foreach $rows as $row}
                    <div class="item"> 
                        <div class="item__img">
                            <img src="{$row.img}">
                        </div>
                        <h4 class="item__title">{$row.name}</h4>
                        <h6 class="item__subtitle">{$row.position}</h6>
                        <p class="item__text">{$row.review}</p>
                    </div>
                {/foreach}
            </div>
        </div>
    </div>
</section>