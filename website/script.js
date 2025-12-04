// Copy to clipboard functionality
function copyPrompt(button) {
    const promptBox = button.parentElement;
    const preElement = promptBox.querySelector('pre');
    const text = preElement.textContent;
    
    // Copy to clipboard
    navigator.clipboard.writeText(text).then(() => {
        // Visual feedback
        const originalText = button.textContent;
        button.textContent = 'Copied!';
        button.classList.add('copied');
        
        setTimeout(() => {
            button.textContent = originalText;
            button.classList.remove('copied');
        }, 2000);
    }).catch(err => {
        console.error('Failed to copy:', err);
        alert('Failed to copy. Please select and copy manually.');
    });
}

