# Monitoring Your Web App with Datadog: A Practical Guide to SLA, SLO, and SLI

## Introduction

In this blog, we'll walk through a **hands-on setup of SLA, SLO, and SLI monitoring** using **Datadog Synthetics**, integrated with **Slack** for real-time alerts. We'll use a sample website hosted on **Netlify**:

🔗 [https://nitin-portfolio1455.netlify.app](https://nitin-portfolio1455.netlify.app)

This blog is perfect for **DevOps engineers, SREs, and on-call teams** who want to understand external monitoring in a visual and proactive way.

---

## 🔍 What are SLA, SLO, and SLI?

- **SLA (Service Level Agreement)**: A contractual agreement between provider and client. E.g., 99.9% uptime promised — failing it may result in penalties.
- **SLO (Service Level Objective)**: Internal target to measure reliability. E.g., target 99.9% uptime per month.
- **SLI (Service Level Indicator)**: Actual measurement. E.g., uptime = 99.87% from synthetic tests.

To summarize:
> **SLI** is the measured value → **SLO** is the goal → **SLA** is the promise backed by penalties.

---

## 🛠️ Step-by-Step Setup in Datadog

### 1. **Sign Up and Navigate to Synthetics**
- Go to [Datadog](https://www.datadoghq.com/) and create a free account.
- Skip agent installation. Instead, go to **UX Monitoring > Synthetic Tests**.

### 2. **Create a Synthetic Test**
- Click **"New Test" > API Test**.
- Select **HTTPS GET**.
- Add your site URL: `https://nitin-portfolio1455.netlify.app`
- Set locations (e.g., Mumbai, Frankfurt).
- Add assertions like:
  - **Status Code = 200**
  - **Response time < 500ms**
- Save and name the test.
![alt text](image-1.png)

![alt text](image.png)

### 3. **Create an SLO from the Test**
- Go to **Service Level Objectives > Create SLO**.
- Select the synthetic test you created.
- Set the target (e.g., 99.9% success rate over 7 days).
- Add tags like `team:devops`, `env:prod`.
- Save the SLO.

![alt text](image-2.png)

### 4. **Integrate Slack for Notifications**
- Go to **Integrations > Slack**.
- Connect your Slack workspace and add a channel (e.g., `#general`).
- In the SLO alert or synthetic monitor, add this to the message:
  ```
  @slack-general
  ```
- Customize the alert message with variables:
  ```
  🚨 Uptime drop detected! Current success: {{value}}% @slack-general
  ```

![alt text](image-3.png)

![alt text](image-4.png)

![alt text](image-5.png)

---

## ✅ Benefits of This Setup

| Datadog Agent                      | Datadog Synthetics                         |
|-----------------------------------|--------------------------------------------|
| Internal metrics (CPU, memory)    | External performance (uptime, latency)     |
| Requires installation on host     | No installation needed                     |
| Used by DevOps/Infra teams        | Used by SREs, support, on-call teams       |

> We chose **Synthetics** because it simulates **real user experience**, without touching infrastructure.

---

## 🧪 Real Output and Observations
- Uptime was consistently >99.9% during our test window.
- Latency stayed under 400ms globally.
- Slack alerted us in under 1 minute when test failed (e.g., on purpose URL error).

---

## 📦 Conclusion
This setup allows you to:
- Proactively detect outages
- Monitor reliability in SLI/SLO/SLA terms
- Keep stakeholders informed in Slack instantly

If you're serious about **modern observability** and **incident response**, Datadog Synthetics + Slack + SLOs are a powerful combination.

---

💬 *Have questions or want a downloadable Terraform setup for this? Drop a comment below!*

