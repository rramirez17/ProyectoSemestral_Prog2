<%-- 
    Document   : home
    Created on : Jul 22, 2021, 1:35:33 PM
    Author     : raulr
--%>

        <%@ include file="header.jsp"%>
        <div class="container">
            <div class="row">
              <div class="col-12 col-lg-12 order-lg-1">
                <section class="py-4">
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
