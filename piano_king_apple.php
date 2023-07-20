<?php

//Write Your Story - 2000 line code

// Initialize variables
$story_title = "";
$story_author = "";
$story_content = "";
$characters = array();
$locations = array();
$story_genre = "";

// This function initializes the story and saves the title, author, and genre
function initStory() 
{
	global $story_title, $story_author, $story_genre;

	echo "Please enter the title of the story: ";
	$story_title = fgets(STDIN);
	echo "Please enter the name of the author: ";
	$story_author = fgets(STDIN);
	echo "Please enter the genre of the story: ";
	$story_genre = fgets(STDIN);

	echo "Your story has been initialized!\n";

}

//This function adds characters to the story
function addCharacter() 
{
	global $characters;

	echo "Please enter the name of the character: ";
	$character_name = fgets(STDIN);
	$character_name = trim($character_name);

	echo "Please enter the description of the character: ";
	$character_desc = fgets(STDIN);
	$character_desc = trim($character_desc);

	$characters[$character_name] = $character_desc;

	echo "New character has been added!\n";
}

//This function adds locations to the story
function addLocation() 
{
	global $locations;
	
	echo "Please enter the name of the location: ";
	$location_name = fgets(STDIN);
	$location_name = trim($location_name);

	echo "Please enter the description of the location: ";
	$location_desc = fgets(STDIN);
	$location_desc = trim($location_desc);

	$locations[$location_name] = $location_desc;

	echo "New location has been added!\n";
}

// This function is used to set the story content
function setStoryContent() 
{
	global $story_content;

	echo "Please enter the content of the story: ";
	$story_content = fgets(STDIN);
	$story_content = trim($story_content);
	
	echo "Your story content has been set!\n";

}

// This function prints out the story
function printStory() 
{
	global $story_title, $story_author, $story_content, $characters, $locations, $story_genre;

	echo "\n=============\n";
	echo "$story_title\n";
	echo "By $story_author\n";
	echo "Genre: $story_genre\n";
	echo "=============\n\n";

	echo "Characters:\n";
	foreach ($characters as $key => $value) {
		echo "Name: $key\n";
		echo "Description: $value\n\n";
	}

	echo "Locations:\n";
	foreach ($locations as $key => $value) {
		echo "Name: $key\n";
		echo "Description: $value\n\n";
	}

	echo "Story Content:\n";
	echo "$story_content\n";

}

initStory();
for ($i=0; $i<10; $i++) {
	addCharacter();
	addLocation();
}
setStoryContent();
printStory();

?>