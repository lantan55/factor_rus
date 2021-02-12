<section class="production-list">
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-md-10">
        <h2>Наша продукция</h2>
      </div>
    </div>
    <div class="row">
      {'pdoResources' | snippet : [
        'parents' => 3,
        'includeTVs' => 'page_img',
        'prepareTV' => 1,
        'limit' => 0,
        'tvPrefix' => '',
        'tpl' => 'production-list_row'
      ]}
    </div>
    <div class="row justify-content-center mt-4">
      <div class="col-md-4 d-flex justify-content-center">
        <button class="c-btn production-list__btn" role="button">Показать все</button>
      </div>
    </div>
  </div>
</section>