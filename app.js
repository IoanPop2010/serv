const State = {
    planItems: [
        { id: 1, type: 'song', title: 'Way Maker', duration: '5:30', bpm: 68 },
        { id: 2, type: 'header', title: 'Welcome', duration: '2:00', bpm: null }
    ]
};

const renderPlan = () => {
    const stage = document.querySelector('.stage');
    stage.innerHTML = `
        <div class="plan-grid">
            ${State.planItems.map(item => `
                <div class="plan-row" data-id="${item.id}">
                    <div class="drag-handle">⠿</div>
                    <div class="item-info">
                        <span class="title">${item.title}</span>
                        ${item.bpm ? `<span class="badge">${item.bpm} BPM</span>` : ''}
                    </div>
                    <div class="item-duration">${item.duration}</div>
                </div>
            `).join('')}
        </div>
    `;
};

// Inițializare rapidă
document.addEventListener('DOMContentLoaded', renderPlan);