<header class="header">
  <div class="container">
    <div class="row header__row">
      <div class="col-12 col-sm-6 col-md-3 header__col">
        <a href="/"><img src="{'global_logo' | config}" alt="{'site_name' | config}"></a>
      </div>
      <div class="col-md-3 d-none d-md-block header__col">
        <ul class="header__slogan">
          <li>Рекламно-</li>
          <li>производственная</li>
          <li>компания</li>
        </ul>
      </div>
      <div class="col-12 col-sm-6 col-md-6 header__col">
        <div class="header__contacts-list">
          <div class="header__contacts">
            <a class="contact" href="tel:{'global_phone1' | config}">
              <span class="contact__icon contact__icon--phone1"></span>
              <span class="contact__title">{'global_phone1' | config}</span></a>
          </div>
          <div class="header__contacts">
            <a class="contact" href="tel:{'global_phone2' | config}">
              <span class="contact__icon contact__icon--phone2"></span>
              <span class="contact__title">{'global_phone2' | config}</span>
            </a>
          </div>
          <div class="header__contacts d-none d-md-block">
            <a class="contact" href="mailto:{'global_email' | config}">
              <span class="contact__icon contact__icon--email"></span>
              <span class="contact__title">{'global_email' | config}</span>
            </a>
          </div>
        </div>
      </div>
    </div>
    <div class="row">
      <nav class="top-menu col-md-9 offset-md-3"><a class="navbar-brand" href="#"> <img src="assets/img/icons/calc_hor.png" alt=""></a><a class="toggle-btn" href="#"><img src="assets/img/icons/menu.png" alt=""></a>
        <div id="navbarSupportedContent">
          {'!pdoMenu' | snippet : [
            'parents' => 0,
            'tplInner' => '@INLINE {$wrapper}',
            'tplParentRow' => 'top-menu_parentRow',
            'tplInner' => '@INLINE <ul class="dropdown-menu [[+classnames]]">{$wrapper}</ul>'
          ]}
        </div>
      </nav>
    </div>
    <nav id="sidebarNav">
      {'!pdoMenu' | snippet : [
        'parents' => 0,
      ]}
    </nav>
  </div>
</header>