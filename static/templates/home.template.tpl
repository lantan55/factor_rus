{extends 'template:main'}

{block 'main'}
    <main>
        {include 'slider'}
        {include 'production-list'}
        {include 'info-block'}
        {include 'works'}
        {include 'clients'}
        {include 'reviews'}
        {include 'news'}
    </main>
{/block}