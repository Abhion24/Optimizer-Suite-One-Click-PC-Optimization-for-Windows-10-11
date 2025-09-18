// Basic Analytics for OptimizerSuite Website
// This script tracks page views and download clicks

class OptimizerSuiteAnalytics {
    constructor() {
        this.init();
    }

    init() {
        // Track page view when loaded
        this.trackPageView();
        
        // Set up event listeners
        this.setupEventListeners();
        
        // Observe section views for engagement tracking
        this.setupSectionObserver();
    }

    // Track page view
    trackPageView() {
        const data = {
            event: 'page_view',
            url: window.location.href,
            timestamp: new Date().toISOString(),
            userAgent: navigator.userAgent,
            language: navigator.language,
            screenSize: `${window.screen.width}x${window.screen.height}`
        };
        
        // In a real implementation, this would send to an analytics service
        console.log('Page view tracked:', data);
        
        // Store in localStorage for demonstration
        this.storeEvent(data);
    }

    // Track download clicks
    trackDownload() {
        const data = {
            event: 'download_click',
            url: window.location.href,
            timestamp: new Date().toISOString()
        };
        
        console.log('Download click tracked:', data);
        this.storeEvent(data);
    }

    // Track section views
    trackSectionView(sectionId) {
        const data = {
            event: 'section_view',
            section: sectionId,
            url: window.location.href,
            timestamp: new Date().toISOString()
        };
        
        console.log('Section view tracked:', data);
        this.storeEvent(data);
    }

    // Set up event listeners
    setupEventListeners() {
        // Track download button clicks
        document.addEventListener('click', (e) => {
            if (e.target.closest('a[href*="download"]') || e.target.closest('button[class*="download"]')) {
                this.trackDownload();
            }
        });
    }

    // Set up intersection observer for section tracking
    setupSectionObserver() {
        const sections = document.querySelectorAll('section[id]');
        
        const observer = new IntersectionObserver((entries) => {
            entries.forEach(entry => {
                if (entry.isIntersecting) {
                    this.trackSectionView(entry.target.id);
                }
            });
        }, {
            threshold: 0.5 // Trigger when 50% of section is visible
        });

        sections.forEach(section => {
            observer.observe(section);
        });
    }

    // Store event in localStorage (for demo purposes)
    storeEvent(data) {
        try {
            const events = JSON.parse(localStorage.getItem('optimizerSuiteEvents') || '[]');
            events.push(data);
            localStorage.setItem('optimizerSuiteEvents', JSON.stringify(events));
        } catch (e) {
            console.error('Failed to store analytics event:', e);
        }
    }

    // Get all stored events
    getStoredEvents() {
        try {
            return JSON.parse(localStorage.getItem('optimizerSuiteEvents') || '[]');
        } catch (e) {
            return [];
        }
    }

    // Clear stored events
    clearStoredEvents() {
        localStorage.removeItem('optimizerSuiteEvents');
    }
}

// Initialize analytics when DOM is loaded
document.addEventListener('DOMContentLoaded', () => {
    window.optimizerSuiteAnalytics = new OptimizerSuiteAnalytics();
});

// Export for potential use in other scripts
if (typeof module !== 'undefined' && module.exports) {
    module.exports = OptimizerSuiteAnalytics;
}