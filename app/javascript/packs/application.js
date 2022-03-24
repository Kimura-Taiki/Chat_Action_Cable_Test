// 参考　https://medium-company.com/rails-bootstrap/
import 'bootstrap'
import '../stylesheets/application'

// 一番下に次を追加
require("bootstrap/dist/js/bootstrap")
// js.erb内でjQueryを使用されたい場合は，「window.$ = jQuery;」も必要です

