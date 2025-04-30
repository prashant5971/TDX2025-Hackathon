# TDX2025-Hackathon

**Introduction:**
This app integrates several technologies to provide a seamless, automated service experience for customers of home appliance manufacturers. It uses IoT for real-time issue detection, AI-powered bots and service agents for smooth customer interaction, and cloud-based services to retrieve relevant data (such as warranty information) and automate the creation of service cases and workorders. The integration of these technologies creates an efficient and responsive customer support experience.

**Customer Interaction Flow**

1. Issue Detection:**
    Through IoT, the customer is notified about an issue with their appliance.
2. Initiating the Chat:
    The customer clicks on the chat icon to start the interaction.
3. Bot Interaction:
    The chat is routed to a bot.
    Since Adaptive Messaging is still in beta, the bot is used to handle the conversation. The bot helps gather initial information from the customer by showing them product options.
4. Product Selection:
    The bot presents the list of products purchased by the customer and allows them to select the one they are facing issues with.
5. Routing to Service Agent:
    Once the product is selected, the chat is routed to the Agentforce Service Agent.
6. Issue Identification:
    The Service Agent (powered by AI) asks the customer about the specific problem they are experiencing.
7. Knowledge Base Lookup:
    The Agentforce Service Agent searches the Knowledge Base for troubleshooting steps related to the identified issue.
8. Troubleshooting Steps:
    The Service Agent shares the troubleshooting steps with the customer.
9. Resolution Inquiry:
    The Service Agent asks if the troubleshooting steps resolved the issue.
    If yes, a case is created, and the case details are shared with the customer.
    If no, the agent offers to create a Case.
10. Warranty Details:
    The agent asks if the customer would like to view warranty details.
    Using Data Cloud’s unstructured data reading capabilities and RAG (Retrieval-Augmented Generation), the Service Agent fetches warranty details from the data cloud and shares them with the customer.
11. Workorder Creation:
    The Service Agent asks if the customer needs a workorder for further assistance.
    If the customer agrees, the workorder is created.
12. Email Notification:
    The customer receives an email containing invoicing details related to the workorder.


How Was This Achieved?


**1- IoT Integration:**
The application uses IoT to detect appliance issues in real-time, alerting the customer automatically when something goes wrong.
**2- Adaptive Messaging via Einstein Bot:**
Due to the beta status of Adaptive Messaging, an Einstein bot is used to manage initial customer interactions and product selection.
The bot helps guide the customer through the process, from identifying the product to gathering basic issue details.
**3- RAG (Retrieval-Augmented Generation):**
When the customer requests warranty information, Agentforce utilizes RAG to retrieve unstructured data from the Data Cloud, making it easier to provide precise, up-to-date information to the customer.
**4 - Knowledge Base:**
For troubleshooting steps, Agentforce taps into the Knowledge Base (powered by Einstein Data Library Knowledge) to ensure the customer gets accurate solutions based on the problem they report.
**5 - Case & Workorder Creation:**
Once the issue is identified, and troubleshooting steps are provided, Agentforce Service Agent creates case records and workorders, seamlessly handling the backend process of customer support.
**6 - Email Integration:**
When a workorder is generated, the system automatically sends an email to the customer containing invoicing details, ensuring smooth communication.


**Key Technologies Used:**


    - Agentforce: For managing agent interactions and automating case and workorder creation.
    - Einstein Bot & Adaptive Messaging: For managing customer queries and product selection, even though Adaptive Messaging is still in beta.
    - Data Cloud (with RAG): To retrieve warranty details from unstructured data sources.
    - Einstein Knowledge Base: To provide troubleshooting steps based on customer issues.
    
