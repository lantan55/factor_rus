<form action="" method="post" class="ajax_form af_example">
  <div class="row">
    <div class="col-12 col-md-6">
      <h4>КОНТАКТЫ:</h4>
      <div class="row">
        <div class="col-md-12">
          <input class="input-field" type="text" value="[[+fi.company]]" name="company" id="calc_company" placeholder="Название компании">
          <span class="error_company">[[+fi.error.company]]</span>
        </div>
        <div class="col-md-12">
          <input class="input-field" type="text" value="[[+fi.name]]" name="name" id="calc_name" placeholder="Ваше имя">
          <span class="error_name">[[+fi.error.name]]</span>
        </div>
        <div class="col-md-12">
          <input class="input-field" type="text" value="[[+fi.phone]]" name="phone" id="calc_phone" placeholder="Ваш телефон">
          <span class="error_phone">[[+fi.error.phone]]</span>
        </div>
        <div class="col-md-12">
          <input class="input-field" type="text" value="[[+fi.email]]" name="email" id="calc_email" placeholder="Ваш email">
          <span class="error_email">[[+fi.error.email]]</span>
        </div>
      </div>
    </div>
    <div class="col-12 col-md-6">
      <h4>ДЕТАЛИ ЗАКАЗА:</h4>
      <div class="row">
        <div class="col-md-12">
          <input class="input-field" type="date" value="[[+fi.date]]" name="date" id="calc_date" placeholder="Срок изготовления">
          <span class="error_date">[[+fi.error.date]]</span>
        </div>
        <div class="col-md-12">
          <textarea class="input-field input-field--area"  value="[[+fi.text]]" name="text" id="calc_text" placeholder="Прочая информация о заказе"></textarea>
        </div>
      </div>
    </div>
  </div>
  <div class="row">
    <div class="col-12 col-md-6">
      <button class="c-btn form__btn" role="submit">Отправить</button>
        [[+fi.success:is=`1`:then=`
      <div class="alert alert-success">[[+fi.successMessage]]</div>
      `]]
      [[+fi.validation_error:is=`1`:then=`
      <div class="alert alert-danger">[[+fi.validation_error_message]]</div>
      `]]
    </div>
    <div class="col-12 col-md-6">
      <p class="form__notice">Нажимая на кнопку, вы даете согласие на обработку персональных данных </p>
    </div>
  </div>
  
</form>