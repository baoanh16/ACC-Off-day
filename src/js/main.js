// viết script, gọi function ở đây
$(document).ready(() => {
	header.headerInit();
	nav.navInit();

	try {
		const search = new MappingListener({
			selector: ".Module-140",
			mobileWrapper: ".nav",
			mobileMethod: "insertBefore",
			desktopWrapper: ".Module-141",
			desktopMethod: "insertBefore",
			breakpoint: 576
		}).watch();
	} catch (error) {}

	try {
		const top_nav_menu = new MappingListener({
			selector: ".top-nav-menu",
			mobileWrapper: ".nav",
			mobileMethod: "appendTo",
			desktopWrapper: ".Module-140",
			desktopMethod: "insertBefore",
			breakpoint: 1025
		}).watch();
	} catch (error) {}
	$(".photo-gallery").lightGallery({
		mode: "lg-scale-up"
	});
	$(".acc-video-1 .video-wrapper").lightGallery({
		mode: "lg-scale-up"
	});

	var yearArr = [];
	$("[data-year]").each(function() {
		yearArr.push($(this).data("year"));
	});

	const history_slider = new Swiper(".acc-about-2 .swiper-container", {
		slidesPerView: 1,
		autoHeight: false,
		loop: true,
		pagination: {
			el: ".acc-about-2 .swiper-history-pagination",
			clickable: true,
			bulletClass: "history-year",
			bulletActiveClass: "history-year-active",
			renderBullet: function(index, className) {
				return (
					'<span class="' +
					className +
					'">' +
					yearArr[index] +
					"</span>"
				);
			}
		},
		navigation: {
			nextEl: ".history-timeline .swiper-next",
			prevEl: ".history-timeline .swiper-prev"
		},
		on: {
			paginationShow: function() {
				$(".swiper-history-pagination").animate(
					{
						scrollLeft: 0
					},
					500
				);
			},
			paginationUpdate: function() {
				$(".swiper-history-pagination").animate(
					{
						scrollLeft:
							$(".history-year-active").offset().left - 120
					},
					500
				);
			}
		}
	});

	const serviceProductSlider = new Swiper(
		".acc-product-2 .swiper-container",
		{
			navigation: {
				nextEl: ".acc-product-2 .swiper-next",
				prevEl: ".acc-product-2 .swiper-prev"
			}
		}
	);

	$("body").on("click", "a.ajaxpagerlink", function(e) {
		e.preventDefault();

		let obj = $(this);
		let pageurl = $(this).attr("href");
		if (!pageurl.length) return;

		$.ajax({
			url: pageurl,
			data: {
				isajax: true
			},
			success: function success(data) {
				$(".ajaxresponse .ajaxresponsewrap").append(
					$(data)
						.find(".ajaxresponsewrap")
						.html()
				);
				$(".ajaxresponse .btn-viewmore").append(
					$(data)
						.find(".btn-viewmore")
						.html()
				);
				obj.remove();
			}
		});

		// if (pageurl != window.location) {
		// 	window.history.pushState({
		// 		path: pageurl
		// 	}, '', pageurl);
		// }

		return false;
	});

	var previousActiveTabIndex = 0;

	$(".tab-list li").on("click", function() {
		var tabClicked = $(this).data("tab-index");

		if (tabClicked != previousActiveTabIndex) {
			$(this).addClass("active");
			$(this)
				.siblings()
				.removeClass("active");
			$(".panel-list .tab-container").each(function() {
				if ($(this).data("tab-index") == tabClicked) {
					$(".tab-container").removeClass("show");
					$(this).addClass("show");
					previousActiveTabIndex = $(this).data("tab-index");
					return;
				}
			});
		}
	});

	$(window).on("scroll", function() {
		var navHeight =
			$(".acc-header").innerHeight() +
			$(".acc-banner-1").innerHeight() -
			$(".acc-about-nav").innerHeight() -
			30;
		if ($(window).scrollTop() > navHeight) {
			$(".acc-about-nav").addClass("fixed");
			$(".acc-about-nav").css({
				top: $(".acc-header").innerHeight()
			});
		} else {
			$(".acc-about-nav").removeClass("fixed");
			$(".acc-about-nav").css({
				top: 0
			});
		}
	});

	scrollNav();
	objectFitImages();
	// Lĩnh vực
	breadcrum.breadcrumInit();
	// Load Ajax
	slider.sliderInit();
	if ($(window).width() < 992) {
		AOS.init({
			disable: true
		});
	} else {
		AOS.init({
			duration: 1500,
			disable: false
		});
	}
	$(".acc-about-4 .tabs").tabslet({
		container: ".acc-about-4 .tabs-container"
	});
	$(".acc-product-detail .table").height(
		$(".acc-product-detail .description img").height()
	);
	$(window).resize(function() {
		$(".acc-product-detail .table").height(
			$(".acc-product-detail .description img").height()
		);
	});
});

var slider = {
	product_slider_1: () => {
		let home_slider_2 = new Swiper(
			".acc-product-detail .swiper-container",
			{
				slidesPerView: 1,
				autoHeight: false,
				loop: true,
				// autoHeight: false,
				autoplay: {
					delay: 5000,
					disableOnInteraction: false
				},
				pagination: {
					el: ".swiper-pagination",
					clickable: true
				}
			}
		);
	},
	service_slider_1: () => {
		let home_slider_2 = new Swiper(
			".acc-service-detail-1 .swiper-container",
			{
				slidesPerView: 1,
				autoHeight: false,
				loop: true,
				// autoHeight: false,
				autoplay: {
					delay: 5000,
					disableOnInteraction: false
				},
				pagination: {
					el: ".swiper-pagination",
					clickable: true
				}
			}
		);
	},
	relationship_slider_1: () => {
		let relationship_slider = new Swiper(".acc-about-5 .swiper-container", {
			slidesPerView: 6,
			autoHeight: false,
			loop: true,
			spaceBetween: 30,
			navigation: {
				nextEl: ".acc-about-5 .swiper-next",
				prevEl: ".acc-about-5 .swiper-prev"
			},
			breakpoints: {
				992: {
					slidesPerView: 4
				},
				768: {
					slidesPerView: 3
				},
				450: {
					slidesPerView: 2
				},
				375: {
					slidesPerView: 1
				}
			}
		});
	},
	home_slider_1: () => {
		let home_slider_2 = new Swiper(".acc-home-1 .swiper-container", {
			slidesPerView: 1,
			autoHeight: false,
			loop: true,
			speed: 2000,
			effect: "fade",
			// autoHeight: false,
			autoplay: {
				delay: 5000,
				disableOnInteraction: false
			},

			sliderInit: () => {
				slider.product_slider_1();
				slider.service_slider_1();
				slider.relationship_slider_1();
				slider.home_slider_1();
			}
		});
	},
	sliderInit: () => {
		slider.product_slider_1();
		slider.service_slider_1();
		slider.relationship_slider_1();
		slider.home_slider_1();
	}
};

function scrollNav() {
	$(".acc-about-nav a").click(function() {
		//Toggle Class
		let headerHeight = $(".acc-header").innerHeight();
		$(".active").removeClass("active");
		$(this)
			.closest("li")
			.addClass("active");
		var theClass = $(this).attr("class");
		$("." + theClass)
			.parent("li")
			.addClass("active");
		//Animate
		$("html, body")
			.stop()
			.animate(
				{
					scrollTop:
						$($(this).attr("data-link")).offset().top -
						headerHeight -
						$(".acc-about-nav").innerHeight()
				},
				1500
			);
		return false;
	});
	$(".scrollTop a").scrollTop();
}
