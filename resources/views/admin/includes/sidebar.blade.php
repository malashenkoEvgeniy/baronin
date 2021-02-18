<!-- Sidebar -->
<div class="sidebar">

<!-- Sidebar Menu -->
<nav class="mt-2">
  <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
    <!-- Add icons to the links using the .nav-icon class
         with font-awesome or any other icon font library -->
    <li class="nav-item {{Request::segment(2) == 'main_page' ?'menu-open':''}}">
      <a href="{{route('main_page.index')}}" class="nav-link ">
        <i class="nav-icon fas fa-home"></i>
        <p>
          Главная страница
        </p>
      </a>
    </li>

    <li class="nav-item has-treeview">
      <a class="nav-link {{Request::segment(2) == 'portfolio'?'active':''}}">
        <i class="fas fa-laptop-house nav-icon"></i>
        <p>
        Портфолио
        <i class="right fas fa-angle-left"></i>
        </p>
      </a>
      <ul class="nav nav-treeview">
        <li class="nav-item">
          <a href="{{route('portfolio.index')}}" class="nav-link {{Request::segment(2) == 'portfolio'?'active':''}} ">
          <i class="far fa-circle nav-icon"></i>
            <p>Страница</p>
          </a>
        </li>

        <li class="nav-item">
          <a href="{{route('projects.index')}}" class="nav-link {{Request::segment(2) == 'hero'?'active':''}} ">
          <i class="far fa-circle nav-icon"></i>
            <p>Проекты</p>
          </a>
        </li>
      </ul>
    </li>


    <li class="nav-item">
      <a href="{{route('pages.index')}}" class="nav-link {{Request::segment(2) == 'pages'?'active':''}}">
        <i class="far fa-newspaper nav-icon"></i>
        <p>
        Страницы
        </p>
      </a>
    </li>

    <li class="nav-item {{Request::segment(2) == 'contacts'?'menu-open':''}}">
      <a href="{{route('contacts.index')}}" class="nav-link ">
        <i class="nav-icon far fa-id-card"></i>
        <p>
          Контакты
        </p>
      </a>
    </li>


    <li class="nav-item">
      <a href="{{route('form_requests.index')}}" class="nav-link {{Request::segment(2) == 'form_requests'?'active':''}}">
        <i class="fas fa-envelope nav-icon"></i>
        <p>
        Заявки
        <span class="right badge badge-info">{{$newRequests}}</span>
        </p>
      </a>
    </li>
      <li class="nav-item">
          <a href="{{route('slider_images.index')}}" class="nav-link {{Request::segment(2) == 'form_requests'?'active':''}}">
              <i class="fa fa-retweet nav-icon"></i>
              <p>
                  Слайдер
              </p>
          </a>
      </li>
      <li class="nav-item">
          <a href="{{route('price.index')}}" class="nav-link {{Request::segment(2) == 'form_requests'?'active':''}}">
              <i class="fas fa-money-bill-wave"></i>
              <p>
                 Таблица услуг и цен
              </p>
          </a>
      </li>


    <li class="nav-item has-treeview">
      <a href="#" class="nav-link ">
        <i class="nav-icon fas fa-globe"></i>
        <p>
        {{ LaravelLocalization::getCurrentLocaleNative() }}
        <i class="right fas fa-angle-left"></i>
        </p>

      </a>
      <ul class="nav nav-treeview">
        @foreach(LaravelLocalization::getSupportedLocales() as $localeCode => $properties)

        <li class="nav-item">
          <a rel="alternate" hreflang="{{ $localeCode }}" href="{{ LaravelLocalization::getLocalizedURL($localeCode, null, [], true) }}" class="nav-link {{Request::segment(2) == 'home_sliders'?'active':''}} ">
            <i class="far fa-circle nav-icon"></i>
            <p>{{ $properties['native'] }}</p>
          </a>
        </li>

        @endforeach

      </ul>
    </li>

  </ul>
</nav>
<!-- /.sidebar-menu -->
</div>
<!-- /.sidebar -->
</aside>
