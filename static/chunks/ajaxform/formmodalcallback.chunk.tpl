<form action="" method="post" class="ajax_form af_example">
  <div class="row">
    <div class="col-md-12">
      <h4>Укажите контактные данные</h4>
      <div class="row">
        <div class="col-md-12">
          <input class="input-field" type="text" value="[[+fi.company]]" name="company" id="callback_company" placeholder="Название компании">
          <span class="error_company">[[+fi.error.company]]</span>
        </div>
        <div class="col-md-12">
          <input class="input-field" type="text" value="[[+fi.name]]" name="name" id="callback_name" placeholder="Ваше имя">
          <span class="error_name">[[+fi.error.name]]</span>
        </div>
        <div class="col-md-12">
          <input class="input-field" type="text" value="[[+fi.phone]]" name="phone" id="callback_phone" placeholder="Ваш телефон">
          <span class="error_phone">[[+fi.error.phone]]</span>
        </div>
        <div class="col-md-12">
          <textarea class="input-field input-field--area"   value="[[+fi.text]]" name="text" name="text" id="callback_text" placeholder="Дополнительная информация"></textarea>
        </div>
        <div class="col-md-12">
          <p class="form__notice">Нажимая на кнопку, вы даете согласие на обработку персональных данных </p>
          <button class="c-btn form__btn" role="submit">Отправить</button>
        </div>
      </div>
    </div>
  </div>
</form>