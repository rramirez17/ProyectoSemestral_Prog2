<%-- 
    Document   : home
    Created on : Jul 22, 2021, 1:35:33 PM
    Author     : raulr
--%>

        <%@ include file="header.jsp"%>
        <div class="container">
            <div class="row">
              <div class="col-lg-4 offset-lg-1 order-lg-2">
                <div class="d-flex justify-content-center">
                  <div class="py-4">
                    <div class="avatar avatar-xl"><img class="avatar-img" src="https://i.ibb.co/L6ht5pP/people-3.jpg" alt="avatar"></div>
                    <div class="text-center mt-3">
                      <h2 class="h5">Jane Doe</h2>
                      <p class="small text-muted">@janedoe</p>
                    </div>
                  </div>
                </div>
                <div class="d-flex justify-content-center flex-wrap">
                  <div class="text-center px-3 py-2">
                    <p class="small text-muted mb-0">Followers</p>
                    <p class="font-weight-bold mb-0">567K</p>
                  </div>
                  <div class="text-center px-3 py-2">
                    <p class="small text-muted mb-0">Following</p>
                    <p class="font-weight-bold mb-0">567K</p>
                  </div>
                  <div class="text-center px-3 py-2">
                    <p class="small text-muted mb-0">Posts</p>
                    <p class="font-weight-bold mb-0">67</p>
                  </div>
                </div>
                <p class="text-muted mb-0 py-4">Lorem ipsum dolor sit amet Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
                <div class="text-center">
                  <button class="btn btn-link" type="button">View your profile
                  </button>
                </div>
              </div>
              <div class="col-12 col-lg-7 order-lg-1">
                <div class="py-4">
                  <div class="input-group input-group-lg"><span class="input-group-text bg-light border-0" id="search-icon">
                        <i data-feather="search"></i></span>
                    <input class="form-control bg-light border-0" type="text" placeholder="Search" aria-label="Search" aria-describedby="search-icon">
                  </div>
                </div>
                <section class="py-4">
                  <h1 class="h3">Stories</h1>
                  <div class="swiper-container w-100 h-100 py-4">
                    <div class="swiper-wrapper">
                      <div class="swiper-slide w-auto">
                        <div class="btn btn-light avatar avatar-xl">
                            <i data-feather="plus"></i>
                        </div>
                      </div>
                      <div class="swiper-slide w-auto">
                        <div class="avatar avatar-xl"><img class="avatar-img" src="https://i.ibb.co/3TPnWpZ/people-1.jpg" alt="avatar"><span class="avatar-status bg-success"></span></div>
                      </div>
                      <div class="swiper-slide w-auto">
                        <div class="avatar avatar-xl"><img class="avatar-img" src="https://i.ibb.co/vqNVTz1/people-2.jpg" alt="avatar"><span class="avatar-status bg-success"></span></div>
                      </div>
                      <div class="swiper-slide w-auto">
                        <div class="avatar avatar-xl"><img class="avatar-img" src="https://i.ibb.co/L6ht5pP/people-3.jpg" alt="avatar"><span class="avatar-status bg-success"></span></div>
                      </div>
                      <div class="swiper-slide w-auto">
                        <div class="avatar avatar-xl"><img class="avatar-img" src="https://i.ibb.co/qxsCFRL/people-4.jpg" alt="avatar"><span class="avatar-status bg-warning"></span></div>
                      </div>
                      <div class="swiper-slide w-auto">
                        <div class="avatar avatar-xl"><img class="avatar-img" src="https://i.ibb.co/0qVzQvw/people-5.jpg" alt="avatar"><span class="avatar-status bg-danger"></span></div>
                      </div>
                      <div class="swiper-slide w-auto">
                        <div class="avatar avatar-xl"><img class="avatar-img" src="https://i.ibb.co/3cyp0C9/people-6.jpg" alt="avatar"><span class="avatar-status bg-danger"></span></div>
                      </div>
                    </div>
                  </div>
                </section>
                <section class="py-4">
                  <h1 class="h3">Feed</h1>
                  <div class="mb-4 py-4">
                    <div class="d-flex justify-content-between align-items-center">
                      <div class="d-flex flex-row align-items-center">
                        <div class="avatar mr-3"><img class="avatar-img" src="https://i.ibb.co/3TPnWpZ/people-1.jpg" alt="avatar"></div>
                        <div>
                          <h2 class="h6 mb-0">Jane Doe</h2>
                          <p class="small text-muted mb-0">5 min ago</p>
                        </div>
                      </div>
                      <button class="btn btn-icon btn-text-dark dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                          <i data-feather="more-vertical"></i>
                      </button>
                      <ul class="dropdown-menu dropdown-menu-right">
                        <li><a class="dropdown-item" href="#">Save</a></li>
                        <li><a class="dropdown-item" href="#">Unsubscribe</a></li>
                      </ul>
                    </div><img class="rounded w-100 mt-3" src="https://i.ibb.co/RYbgG6K/mango-blue.jpg" alt="feed">
                    <div class="mt-3">
                      <h4 class="h5">Lorem ipsum dolor sit amet</h4>
                      <p class="text-muted mb-0">Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
                    </div>
                    <div class="d-flex justify-content-between">
                      <button class="btn btn-text-dark d-flex align-items-center px-1" type="button">
                          <i class="mr-1" data-feather="heart"></i>432
                      </button>
                      <button class="btn btn-icon btn-text-dark" type="button">
                          <i data-feather="share-2"></i>
                      </button>
                    </div>
                  </div>
                  <div class="mb-4 py-4">
                    <div class="d-flex justify-content-between align-items-center">
                      <div class="d-flex flex-row align-items-center">
                        <div class="avatar mr-3"><img class="avatar-img" src="https://i.ibb.co/vqNVTz1/people-2.jpg" alt="avatar"></div>
                        <div>
                          <h2 class="h6 mb-0">Dog Doe</h2>
                          <p class="small text-muted mb-0">15 min ago</p>
                        </div>
                      </div>
                      <button class="btn btn-icon btn-text-dark dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                          <i data-feather="more-vertical"></i>
                      </button>
                      <ul class="dropdown-menu dropdown-menu-right">
                        <li><a class="dropdown-item" href="#">Save</a></li>
                        <li><a class="dropdown-item" href="#">Unsubscribe</a></li>
                      </ul>
                    </div><img class="rounded w-100 mt-3" src="https://i.ibb.co/RChWN81/fruits-rose.jpg" alt="feed">
                    <div class="mt-3">
                      <h4 class="h5">Lorem ipsum dolor sit amet</h4>
                      <p class="text-muted mb-0">Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
                    </div>
                    <div class="d-flex justify-content-between">
                      <button class="btn btn-text-dark d-flex align-items-center px-1" type="button">
                          <i class="mr-1" data-feather="heart"></i>432
                      </button>
                      <button class="btn btn-icon btn-text-dark" type="button">
                          <i data-feather="share-2"></i>
                      </button>
                    </div>
                  </div>
                  <div>Take a look at <a href="https://bootstrap-minui.github.io/" target="_blank" rel="noopener noreferrer">Minui</a> for more clean and minimal templates built with Bootstrap</div>
                </section>
              </div>
            </div>
        </div>


        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js" integrity="sha384-oesi62hOLfzrys4LxRF63OJCXdXDipiYWBnvTl9Y9/TRlw5xlKIEHpNyvvDShgf/" crossorigin="anonymous"></script>
        <script src="https://unpkg.com/feather-icons"></script>
        <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
        <script>
            feather.replace();

            var mySwiper = new Swiper('.swiper-container', {
              // Optional parameters
              slidesPerView: 'auto',
              spaceBetween: 24,
            });
        </script>

    </body>
</html>
