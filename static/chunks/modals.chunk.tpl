<div class="modal" id="modalCalc">
  <div class="modal__wrap">
    <div class="container">
      <div class="row justify-content-center align-items-center">
        <div class="col-12 col-md-10">
          <h2>ОТПРАВЬТЕ ЗАЯВКУ ДЛЯ ТОЧНОГО РАСЧЕТА</h2>
          {'!AjaxForm' | snippet : [
            'snippet' =>  'FormIt',
            'form' => 'form.modalCalc',
            'hooks' => 'email',
            'emailSubject' => 'Заявка обратного звонка',
            'emailTo' => $_modx->config.emailsender,
            'emailFrom' => $_modx->config.emailsender,
            'validationErrorMessage' => 'В форме содержатся ошибки',
            'validate' => '
                            company:required,
                            name:required,
                            phone:required,
                            email:required,
                            date:required
                          ',
            'successMessage' => 'Сообщение успешно отправлено',
            'emailTpl'=> 'email.modalCalc'
          ]}
        </div>
      </div>
    </div>
  </div>
</div>
<div class="modal" id="modalCallback">
  <div class="modal__wrap container">
    <div class="row justify-content-center align-items-center">
      <div class="col-12 col-md-8">
        <h2>Заказать обратный звонок</h2>
        {'!AjaxForm' | snippet : [
            'snippet' =>  'FormIt',
            'form' => 'form.modalCallback',
            'hooks' => 'email',
            'emailSubject' => 'Заявка обратного звонка',
            'emailTo' => $_modx->config.emailsender,
            'emailFrom' => $_modx->config.emailsender,
            'validationErrorMessage' => 'В форме содержатся ошибки',
            'validate' => '
                            company:required,
                            name:required,
                            phone:required,
                            text:required 
                          ',
            'successMessage' => 'Сообщение успешно отправлено',
            'emailTpl'=> 'email.modalCallback'
          ]}
      </div>
    </div>
  </div>
</div>