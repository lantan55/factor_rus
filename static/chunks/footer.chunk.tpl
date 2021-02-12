<footer class="footer">
  <div class="container">
    <div class="row">
      <div class="col-12 col-md-3">
        <div class="footer__info contacts">
          <div class="contacts__logo">
            <img src="assets/img/logo-inverted.png">
          </div>
          <div class="contacts__info">
            <a class="contact" href="{'global_phone1' | config}">
              <span class="contact__icon contact__icon--phone1"></span>
              <span class="contact__title">{'global_phone1' | config}</span>
            </a>
            <a class="contact" href="tel:{'global_phone2' | config}">
              <span class="contact__icon contact__icon--phone2"></span>
              <span class="contact__title">{'global_phone2' | config}</span>
            </a>
            <a class="contact" href="mailto:{'global_emai' | config}">
              <span class="contact__icon contact__icon--email"></span>
              <span class="contact__title">{'global_email' | config}</span>
            </a>
          </div>
          <div class="contacts__button">
            <a class="c-btn openModalCalc" href="#" data-width="248" data-height="365">
              Отправить заявку
            </a>
          </div>
        </div>
      </div>
      <div class="col-12 col-md-9">
        <div class="row footer__menu">
          <div class="col-md-4">
            <div class="footer__list">
              <h4>Продукция</h4>
              {'!pdoMenu' | snippet : [
                'parents' => 3,
              ]}
            </div>
          </div>
          <div class="col-md-4">
            <div class="footer__list">
              <h4>Услуги</h4>
              {'!pdoMenu' | snippet : [
                'parents' => 4,
              ]}
            </div>
          </div>
          <div class="col-md-4">
            <div class="footer__list">
              <h4>Информация</h4>
              <ul> 
                <li> <a href="{'2' | url}">О нас</a></li>
                <li> <a href="{'7' | url}">Портфолио</a></li>
                <li> <a href="{'5' | url}">Блог</a></li>
                <li> <a href="{'8' | url}">Контакты</a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-md-12"> 
        <div class="copyright">
          <p>© 2009–2021 «ФакторРус». Все права защищены.</p>
        </div>
      </div>
    </div>
  </div>
</footer>