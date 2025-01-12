
<!-- PROJECT LOGO -->


<br />
<div align="center">
  <a href="https://github.com/yatendra2001/ai_buddy">
    <img src="https://github.com/MatinMollapur01/IQ/assets/127895108/4c1a0367-6c66-4606-9c73-1e89685a37bb"  alt="Logo" width="200" height="200" >
  </a>
  <h1 align="center" >IQ</h1>
  <h4 align="center">
    Smart Chat with AI! PDFs, Images - Elevate Conversations!
  </h4>
</div>



<!-- Project Features -->
## Features

AI Buddy is a cross-platform mobile application that leverages the power of AI to provide users with a personal assistant capable of understanding and responding to various queries.

| Chat with PDF   |   Ask Image   |   Text Chatbot   |

<!-- ARCHITECTURE -->
## Architecture

The architecture of the IQ app is designed to efficiently process and interact with PDF documents. Here's a breakdown of the workflow:

### Overview

The "Chat with PDF" feature of the IQ app allows users to interact with the content of a PDF document in a conversational manner. The app extracts information from the PDF, processes it, and provides relevant responses to user queries.

### Workflow Diagram

![Chat with PDF Flutter App Architecture](https://github.com/yatendra2001/ai_buddy/assets/62821607/71492eb4-0521-43e7-a3ca-f0bdc05c679e)

### Workflow Steps

1. **PDF Extraction**: The PDF document is processed to extract its pages.

2. **Chunking**: The extracted pages are then split into manageable chunks for processing.

3. **Batching**: Chunks are grouped into batches (e.g., 1 batch = 100 chunks) for parallel processing.

4. **Embedding Generation**: Each batch is sent to an Embeddings API with the task type set to 'Document'. The API generates a list of vector embeddings for each chunk.

5. **Local Storage**: The generated embeddings for each batch are split into individual chunk embeddings. These embeddings are stored locally using Hive (a key-value database).

6. **User Interaction**: When a user inputs an instruction (e.g., "Give me an intro to the book"), the app sends the query to the Embeddings API with the task type set to 'Query' to generate an embedding for the query.

7. **Semantic Search**: The app performs a semantic search by taking the embedding of the user's query and comparing it across the document embeddings stored in Hive.

8. **Ranking Results**: The chunks are ranked based on the Euclidean distance between the query embedding and document embeddings. The top-ranked chunks are used as the context for the language model (LLM).

9. **Response Generation**: The language model generates an answer based on the context provided by the top-ranked chunks.

### Technologies Used

- **Flutter**: For cross-platform mobile application development.
- **Hive**: For local storage of chunk embeddings.
- **Gemini Embeddings API**: For generating vector embeddings of text.
- **Gemini (LLM)**: For generating responses based on context.
- **Riverpod**: For managing states across the app.

<!-- GETTING STARTED -->
## Getting Started


### Prerequisites

Need the latest flutter version & a gemini api key from [here](https://makersuite.google.com/app/apikey)

```bash
  flutter upgrade
```

### Installation

1. Clone the repository from GitHub:

```bash
git clone https://github.com/MatinMollapur01/IQ.git
```

2. Get all dependencies:
```bash
flutter pub get
```

3. Run the app:

```bash
flutter run
```


<!-- CONTRIBUTING -->
## Contributing

Contributions are what makes the open-source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.


Contribution to the project can be made if you have some improvements for the project or if you find some bugs.
You can contribute to the project by reporting issues, forking it, modifying the code and making a pull request to the repository.

Please make sure you specify the commit type when opening pull requests:

```
feat: The new feature you're proposing

fix: A bug fix in the project

style: Feature and updates related to UI improvements and styling

test: Everything related to testing

docs: Everything related to documentation

refactor: Regular code refactoring and maintenance
```



<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE.txt` for more information.


<!-- CONTACT -->
## Contact


Reddit : [@MatinMollapur](https://www.reddit.com/user/Individual_Month3518)

Mastodon : [MatinmollapurVA](https://mastodon.social/@matinmollapurVA)

BlueSky : [MatinMollapur](https://bsky.app/profile/matinmollapur.bsky.social)

GitHub : [MatinMollapur01](https://github.com/MatinMollapur01)


<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/yatendra2001/ai_buddy.svg?style=for-the-badge
[contributors-url]: https://github.com/yatendra2001/ai_buddy/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/yatendra2001/ai_buddy.svg?style=for-the-badge
[forks-url]: https://github.com/yatendra2001/ai_buddy/network/members
[stars-shield]: https://img.shields.io/github/stars/yatendra2001/ai_buddy.svg?style=for-the-badge
[stars-url]: https://github.com/yatendra2001/ai_buddy/stargazers
[issues-shield]: https://img.shields.io/github/issues/yatendra2001/ai_buddy.svg?style=for-the-badge
[issues-url]: https://github.com/yatendra2001/ai_buddy/issues
[license-shield]: https://img.shields.io/github/license/yatendra2001/ai_buddy.svg?style=for-the-badge
[license-url]: https://github.com/yatendra2001/ai_buddy/blob/main/LICENSE.txt
