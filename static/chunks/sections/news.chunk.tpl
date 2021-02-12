<section class="news">
    <div class="container">
        <div class="news__wrap">
            <h2 class="news__title">Последние новости</h2>
            <div class="news__list">
                <div class="row">
                    {'!pdoPage' | snippet : [
                        'element' => 'getTickets',
                        'parents' => '5',
                        'limit' => 4,
                        'tpl' => 'main_news_row',
                        'includeTVs' => 'page_img',
                        'tvPrefix' => '',
                    ]}
                </div>
            </div>
        </div>
    </div>
</section>