<?php
/* Smarty version 5.3.1, created on 2024-06-26 19:00:40
  from 'file:index.tpl' */

/* @var \Smarty\Template $_smarty_tpl */
if ($_smarty_tpl->getCompiled()->isFresh($_smarty_tpl, array (
  'version' => '5.3.1',
  'unifunc' => 'content_667c4938de2d33_34781275',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'fa2fb8129c235ecdb4213268d16319366bbbd35f' => 
    array (
      0 => 'index.tpl',
      1 => 1719419742,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
))) {
function content_667c4938de2d33_34781275 (\Smarty\Template $_smarty_tpl) {
$_smarty_current_dir = 'C:\\Users\\ariel\\Desktop\\prueba_tecnica_megamedia\\app\\Views';
?><!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Lista de Usuarios</title>
</head>
<body>
    <h1>Lista de Usuarios</h1>
    <ul>
        <?php
$_from = $_smarty_tpl->getSmarty()->getRuntime('Foreach')->init($_smarty_tpl, $_smarty_tpl->getValue('users'), 'user');
$foreach0DoElse = true;
foreach ($_from ?? [] as $_smarty_tpl->getVariable('user')->value) {
$foreach0DoElse = false;
?>
            <li><?php echo $_smarty_tpl->getValue('user')['name'];?>
 - <?php echo $_smarty_tpl->getValue('user')['email'];?>
</li>
        <?php
}
$_smarty_tpl->getSmarty()->getRuntime('Foreach')->restore($_smarty_tpl, 1);?>
    </ul>
</body>
</html>
<?php }
}
