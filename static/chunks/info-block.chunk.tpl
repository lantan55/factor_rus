<section class="info-block">
    <div class="container">
        {set $rows = json_decode(1 | resource : 'info_blocks', true)}
        {foreach $rows as $row}
            <div class="row justify-content-center info-block__wrap" style="background-image: url('{$row.bg}')">
                <div class="col-md-10 {if $row.MIGX_id % 2 === 0} d-flex justify-content-end{/if}">
                    <div class="info-block__desc">
                        <h2 class="info-block__title">{$row.title}</h2>
                        <h4 class="info-block__subtitle">{$row.subtitle}</h4>
                    </div>
                </div>
            </div>        
        {/foreach}
    </div>
</section>