<section class="calc" id="sectionCalc">
    <div class="container">
      <h2 class="calc__title">РАСЧЕТ СТОИМОСТИ ОНЛАЙН</h2>
      <div class="row">
        <div class="calc__form col-md-9">
          <div class="row">
            <div class="calc__field col-12 col-md-12">
              <h4 class="calc__subtitle">ШАГ 1   <span>- ВЫБЕРИТЕ ТИП СВЕЧЕНИЯ ВЫВЕСКИ</span></h4>
              <div class="calc__radio">
                <div class="r-toggle active"><img class="r-toggle__title" src="assets/img/calc/type1.png" alt="">
                  <input class="j-input" type="radio" data-val="100" name="type" id="type1" checked>
                  <label class="r-toggle__title" for="type1">Несветовые буквы </label>
                </div>
                <div class="r-toggle"><img class="r-toggle__title" src="assets/img/calc/type2.png" alt="">
                  <input class="j-input" type="radio" data-val="200" name="type" id="type2">
                  <label class="r-toggle__title" for="type2">Фронтальное свечение</label>
                </div>
                <div class="r-toggle"><img class="r-toggle__title" src="assets/img/calc/type3.png" alt="">
                  <input class="j-input" type="radio" data-val="300" name="type" id="type3">
                  <label class="r-toggle__title" for="type3">Контражурное свечение </label>
                </div>
                <div class="r-toggle"><img class="r-toggle__title" src="assets/img/calc/type4.png" alt="">
                  <input class="j-input" type="radio" data-val="400" name="type" id="type4">
                  <label class="r-toggle__title" for="type4">Торцевая подсветка </label>
                </div>
              </div>
            </div>
            <div class="calc__field col-md-6">
              <h4 class="calc__subtitle">ШАГ 2 <span>- ВВЕДИТЕ ТЕКСТ ВЫВЕСКИ</span></h4>
              <div class="calc__input">
                <input class="j-input" type="text" id="name">
              </div>
            </div>
            <div class="calc__field col-md-6">
              <h4 class="calc__subtitle calc__subtitle--disabled">КОЛИЧЕСТВО БУКВ </h4>
              <div class="calc__input">
                <input class="input__disabled j-input" type="text" disabled id="count">
              </div>
            </div>
            <div class="calc__field col-md-6">
              <div class="calc__field mt-0">
                <h4 class="calc__subtitle">ШАГ 3  <span>- ВВЕДИТЕ ВЫСОТУ БУКВЫ    </span></h4>
                <div class="calc__input">
                  <input class="j-input" type="number" id="height" min="0" max="5000">
                </div>
              </div>
              <div class="calc__field">
                <h4 class="calc__subtitle">ШАГ 4 <span>- НУЖНА ПОДЛОЖКА</span></h4>
                <div class="calc__btn-group">
                  <div class="calc__btn-group__item">
                    <button class="c-btn" role="button">да</button>
                    <input class="j-input" type="radio" data-val="20000" name="answer" id="answer1">
                  </div>
                  <div class="calc__btn-group__item active">
                    <button class="c-btn" role="button">нет</button>
                    <input class="j-input" type="radio" data-val="0" name="answer" id="answer2" checked>
                  </div>
                </div>
              </div>
            </div>
            <div class="calc__field col-md-6"> 
              <div class="result">
                <h4 class="calc__subtitle">СТОИМОСТЬ ВАШЕЙ ВЫВЕСКИ </h4>
                <div class="result__text"> <span id="result"> </span></div><a class="c-btn calc__btn" id="calc" href="#">Рассчитать</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
              </section>