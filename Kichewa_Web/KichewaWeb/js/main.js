// Mobile Menu Toggle
document.addEventListener('DOMContentLoaded', function() {
    const mobileToggle = document.querySelector('.mobile-menu-toggle');
    const navMenu = document.querySelector('.nav-menu');
    
    if (mobileToggle && navMenu) {
        mobileToggle.addEventListener('click', function() {
            navMenu.classList.toggle('active');
            mobileToggle.classList.toggle('active');
        });
    }
    
    // Close mobile menu when clicking on a link
    const navLinks = document.querySelectorAll('.nav-link');
    navLinks.forEach(link => {
        link.addEventListener('click', () => {
            navMenu.classList.remove('active');
            mobileToggle.classList.remove('active');
        });
    });
    
    // Smooth scrolling for anchor links
    const anchorLinks = document.querySelectorAll('a[href^="#"]');
    anchorLinks.forEach(link => {
        link.addEventListener('click', function(e) {
            e.preventDefault();
            const target = document.querySelector(this.getAttribute('href'));
            if (target) {
                target.scrollIntoView({
                    behavior: 'smooth'
                });
            }
        });
    });
    
    // Add to cart functionality (placeholder)
    const addToCartButtons = document.querySelectorAll('.add-to-cart');
    addToCartButtons.forEach(button => {
        button.addEventListener('click', function(e) {
            e.preventDefault();
            const productName = this.dataset.product || 'item';
            alert(`${productName} added to cart! (This is a demo)`);
        });
    });
    
    // Form submission handling
    const contactForm = document.getElementById('contact-form');
    if (contactForm) {
        contactForm.addEventListener('submit', function(e) {
            e.preventDefault();
            alert('Thank you for your message! We will get back to you soon.');
            this.reset();
        });
    }
    
    // Lazy loading for images
    const images = document.querySelectorAll('img[loading="lazy"]');
    if ('IntersectionObserver' in window) {
        const imageObserver = new IntersectionObserver((entries, observer) => {
            entries.forEach(entry => {
                if (entry.isIntersecting) {
                    const image = entry.target;
                    image.src = image.dataset.src || image.src;
                    image.classList.remove('lazy');
                    imageObserver.unobserve(image);
                }
            });
        });
        
        images.forEach(img => imageObserver.observe(img));
    }
    
    // Simple cart counter (placeholder)
    let cartCount = 0;
    const cartIcon = document.querySelector('.cart-icon');
    
    function updateCartCount() {
        if (cartIcon) {
            cartIcon.innerHTML = `🛒 ${cartCount > 0 ? `(${cartCount})` : ''}`;
        }
    }
    
    // Color swatch functionality
    const colorSwatches = document.querySelectorAll('.color-swatch');
    colorSwatches.forEach(swatch => {
        swatch.addEventListener('click', function() {
            // Remove active class from siblings
            this.parentNode.querySelectorAll('.color-swatch').forEach(s => {
                s.classList.remove('active');
            });
            // Add active class to clicked swatch
            this.classList.add('active');
            
            // Update product image if data-image exists
            const newImage = this.dataset.image;
            const productImage = document.querySelector('.product-main-image');
            if (newImage && productImage) {
                productImage.src = newImage;
            }
        });
    });
    
    // Width selector functionality
    const widthSelectors = document.querySelectorAll('.width-selector');
    widthSelectors.forEach(selector => {
        selector.addEventListener('click', function() {
            // Remove active class from siblings
            this.parentNode.querySelectorAll('.width-selector').forEach(s => {
                s.classList.remove('active');
            });
            // Add active class to clicked selector
            this.classList.add('active');
        });
    });
    
    // Quantity selector
    const quantityButtons = document.querySelectorAll('.quantity-btn');
    quantityButtons.forEach(button => {
        button.addEventListener('click', function() {
            const input = this.parentNode.querySelector('.quantity-input');
            const isIncrement = this.classList.contains('increment');
            let currentValue = parseInt(input.value) || 1;
            
            if (isIncrement) {
                currentValue++;
            } else if (currentValue > 1) {
                currentValue--;
            }
            
            input.value = currentValue;
        });
    });
});

// Utility functions
function showNotification(message, type = 'info') {
    // Simple notification system
    const notification = document.createElement('div');
    notification.className = `notification notification-${type}`;
    notification.textContent = message;
    
    document.body.appendChild(notification);
    
    setTimeout(() => {
        notification.classList.add('show');
    }, 100);
    
    setTimeout(() => {
        notification.classList.remove('show');
        setTimeout(() => {
            document.body.removeChild(notification);
        }, 300);
    }, 3000);
}

// Search functionality (placeholder)
function performSearch(query) {
    console.log('Searching for:', query);
    // This would typically make an API call
    return [];
}