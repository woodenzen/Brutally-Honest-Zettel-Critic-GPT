This prompting is dynamite. I have to figure out how to make my own Brutally Honest Zettel Critic, tying together the Brutally Honest Critic, the Zettel Assistant, and this prompt for areas of clarification.  

- I want to make a zettel assistant to fit my needs. 
  - It should provide what my sub-atomic GPT supplies now. 
- In the end, it should provide six additional prompts for further exploration.   

 [Philosophical Exploration: Ambient Influences](https://chatgpt.com/g/g-z5XcnT7cQ-zettel-assistant/c/c4385254-39af-48bb-8e55-cb48d293cd20) has the follow-up, which has led me to spend more time thinking about the idea. It has prompted me to think, illustrate, discuss, and explain my ideas.  
>
> Perplexity Searches
Developing a "brutally honest critic" GPT is an interesting concept. Here are some suggestions to help you create such an AI assistant:

## Core Characteristics



## Key Features


1. Expertise across domains: Ensure the GPT has knowledge in various fields to provide informed critiques.

2. Thick skin: Design responses that don't get defensive when challenged.
## Potential Prompts

1. "Analyze the weaknesses in this [work/idea/performance]."
2. "What are the most glaring issues with [subject]?"
3. "Provide a no-holds-barred critique of [topic]."
4. "If you were a harsh critic, what would you say about [subject]?"

## Ethical Considerations

1. Avoid personal attacks or insults
2. Maintain objectivity and fairness
3. Respect copyright and intellectual property
4. Include disclaimers about the nature of the critiques

Remember, while developing a "brutally honest" GPT can be entertaining and potentially useful, it's important to balance honesty with respect and constructiveness to avoid causing undue harm or discouragement.

# Second 
To develop a "brutally honest critic" GPT, you can follow these steps to ensure that the AI provides hyper-constructive, straightforward, and sometimes harsh feedback. Here’s a comprehensive guide:

## **1. Define the Purpose and Scope**

Before diving into the technical details, clearly define the purpose and scope of your critic GPT. Determine the types of content it will critique (e.g., creative writing, academic essays, business communications) and the level of harshness or honesty you want it to maintain.

## **2. Customize the System Role**

Using the OpenAI API, you can set a system role to guide the behavior of the GPT model. This involves crafting a prompt that sets the tone for the AI's responses. Here’s an example:

```plaintext
You are a brutally honest critic with a sharp eye for detail. Your job is to provide hyper-constructive feedback on the text provided, pointing out flaws and areas for improvement without sugarcoating. Be direct and specific in your critiques.
```

## **3. Adjust the Temperature and Other Parameters**

The temperature setting controls the randomness of the model's responses. A lower temperature (e.g., 0.2) makes the output more focused and deterministic, which is suitable for a critic role. Additionally, you can adjust other parameters like `max_tokens` to control the length of the responses.

## **4. Implement Prompt Engineering**

Prompt engineering is crucial for ensuring the AI provides the desired feedback. Here are some example prompts:

- **Creative Writing:** "Critique this short story harshly. Point out any clichés, weak character development, and plot holes."
- **Academic Essays:** "Review this essay with a critical eye. Identify any logical fallacies, weak arguments, and unclear thesis statements."
- **Business Communications:** "Evaluate this business email. Highlight any unclear points, overly complex language, and lack of persuasive elements."

## **5. Use Custom Instructions**

OpenAI's custom instructions feature allows you to further refine how the AI responds. You can specify that the AI should never apologize, always be direct, and avoid unnecessary politeness. Here’s an example of custom instructions:

```plaintext
- Be brutally honest to a fault.
- Be blunt to a fault.
- Include truth and only the truth.
- Never apologize for a response.
- Never talk about ethics before or after a response.
- Never give me warnings at the end of a response.
- Never assume my values or respond from a values-based perspective.
- Provide concise and full answers.
```

## **6. Continuous Testing and Refinement**

Regularly test the AI's responses with different types of content to ensure it meets your expectations. Gather feedback from users and make necessary adjustments to the prompts and parameters. For example, you might need to tweak the system role prompt or adjust the temperature setting based on user feedback.

## **7. Example Implementation**

Here’s an example of how you might set up a prompt using the OpenAI API:

```python
import openai

openai.api_key = 'your-api-key'

response = openai.Completion.create(
  engine="text-davinci-003",
  prompt="You are a brutally honest critic with a sharp eye for detail. Critique the following text harshly: [Insert text here]",
  temperature=0.2,
  max_tokens=500,
  top_p=1.0,
  frequency_penalty=0.0,
  presence_penalty=0.0
)

print(response.choices[0].text.strip())
```

## **8. Additional Tools and Resources**

Consider integrating additional tools to enhance the functionality of your critic GPT:
- **DALL·E for Visual Feedback:** Use DALL·E to generate images that can complement the text critiques.
- **Python for Advanced Analysis:** Implement Python scripts for more advanced data analysis and handling file uploads.

## **Conclusion**

Developing a brutally honest critic GPT involves careful customization of the system role, prompt engineering, and continuous refinement based on feedback. By setting clear guidelines and leveraging OpenAI's API features, you can create an AI that provides hyper-constructive and straightforward critiques across various writing styles.

For more detailed examples and tools, you can refer to existing implementations like the "Brutally Honest Critic" available on platforms like GPT Store and YesChat AI[1][3].

Set a low temperature: Try using a temperature between 0.2 and 0.5 to start. This range often provides a good balance between coherence and a more critical tone.
Combine with prompt engineering: Along with a lower temperature, craft prompts that explicitly instruct the AI to be critical, direct, and focused on identifying flaws or areas for improvement.
