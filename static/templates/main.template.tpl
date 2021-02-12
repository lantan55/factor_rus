<!DOCTYPE html>
<html lang="ru">
  {include 'head'}
  <body>
      <div class="wrapper">
            {include 'aside'}
            <div class="page">
              {include 'header'}
              {block 'main'}{/block}  
              {include 'footer'}
            </div>
      </div>
      {include 'modals'} 
      {include 'scripts'}
      {ignore}
        [[++custom_script]]
      {/ignore}    
  </body>
</html>
