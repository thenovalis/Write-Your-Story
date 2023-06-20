//Define interface
interface Story {
    title: string;
    body: string;
}

// Write your story function
function writeYourStory(story: Story) {
    const storyContainer = document.getElementById('story');
    storyContainer.innerHTML = `<h1>${story.title}</h1><p>${story.body}</p>`;
}

// Story array
const stories: Story[] = [
    {
        title: 'My First Story',
        body: 'Once upon a time there was a brave knight who fought bravely for justice.'
    },
    {
        title: 'My Second Story',
        body: 'In a far away kingdom, a young princess lived in a magical castle with her loyal dragon friend.'
    },
    {
        title: 'My Third Story',
        body: 'On a quest to save the world, two brave adventurers set off on a journey of discovery.'
    }
];

// loop through stories and write them
stories.forEach(story => writeYourStory(story));