<section class="news-list">
    <div class="container">
        {'!pdoPage' | snippet : [
            'element' => 'getTickets',
            'limit' => 10,
            'includeTVs' => 'page_img',
            'tvPrefix' => ''
        ]}
    </div>
</section>