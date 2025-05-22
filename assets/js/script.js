/**
 * FRONTEND FORM VALIDATION
 * Runs before form submission to catch errors early
 */
document.addEventListener('DOMContentLoaded', function() {
    const form = document.querySelector('form');
    
    form.addEventListener('submit', function(e) {
        // Clear previous errors
        document.querySelectorAll('.error').forEach(el => el.remove());
        
        // Validate Name
        const name = form.querySelector('[name="name"]');
        if (name.value.trim().length < 2) {
            showError(name, 'Name must be at least 2 characters');
            e.preventDefault();
        }
        
        // Validate Email
        const email = form.querySelector('[name="email"]');
        if (!/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email.value)) {
            showError(email, 'Please enter a valid email');
            e.preventDefault();
        }
        
        // Validate Message
        const message = form.querySelector('[name="message"]');
        if (message.value.trim().length < 10) {
            showError(message, 'Message must be at least 10 characters');
            e.preventDefault();
        }
    });
    
    function showError(input, message) {
        const error = document.createElement('div');
        error.className = 'error';
        error.textContent = message;
        input.parentNode.insertBefore(error, input.nextSibling);
        
        // Highlight field
        input.style.borderColor = '#e74c3c';
        input.addEventListener('input', () => {
            input.style.borderColor = '#ddd';
        });
    }
});