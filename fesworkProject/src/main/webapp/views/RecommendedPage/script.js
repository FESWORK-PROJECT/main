function resetForm() {
    document.getElementById("festivalForm").reset();
}

function recommendFestival() {
    const form = document.getElementById('festivalForm');
    const formData = new FormData(form);

    
    console.log("성별: ", formData.get('gender'));
    console.log("연령대: ", formData.get('ageGroup'));
    console.log("희망시기: ", formData.get('preferredTime'));
    console.log("희망여행지: ", formData.get('preferredLocation'));

    const themes = formData.getAll('theme');
    console.log("축제테마: ", themes.join(", "));

    window.location.href = 'index1.html'; 
}
