---
title: Neural Style Transfer
emoji: 🎨
colorFrom: blue
colorTo: purple
sdk: docker
app_port: 7860
pinned: false
---

# 🎨 Neural Style Transfer (AdaIN)

An elegant web application for real-time **Neural Style Transfer** (NST) using the **Adaptive Instance Normalization (AdaIN)** algorithm. Upload a content image (e.g., a photo of yourself) and a style image (e.g., a famous painting like Starry Night) to create a beautifully synthesized artwork!

Built with **PyTorch**, **Flask**, **Gunicorn**, and **Bootstrap**.

---

## 🚀 Hugging Face Spaces Deployment (Recommended)

Hugging Face Spaces provides **16GB RAM and 2 vCPUs** completely for free. This is perfect for running PyTorch neural network inference efficiently.

### 2-Minute Deployment Steps:

1. **Create a Space**:
   - Go to [Hugging Face Spaces](https://huggingface.co/spaces) and click **Create new Space**.
   - Enter a name for your Space (e.g., `neural-style-transfer`).
   - Select **Docker** as the SDK (instead of Gradio/Streamlit).
   - Choose **Blank** template.
   - Choose **Public** or **Private** and click **Create Space**.

2. **Sync the Code**:
   - Once the Space is created, copy the Hugging Face git repository URL (e.g., `https://huggingface.co/spaces/YOUR_USERNAME/neural-style-transfer`).
   - Push this codebase to your Hugging Face Space git repository.
   - *Alternatively, you can just upload these files (`Dockerfile`, `requirements.txt`, `NST_Code/`, etc.) directly into the Files tab in your Hugging Face Space UI!*

3. **Enjoy!**:
   - Hugging Face will automatically detect the `Dockerfile` at the root and build the space.
   - Once building is done, your Flask app is live!

---

## ☁️ Render Deployment

Render is a modern cloud hosting platform. Since this app contains a heavy machine learning model, Render's Free Tier (512MB RAM) might load slowly. We recommend Hugging Face Spaces, but if you'd like to run it on Render:

### Steps to Deploy:

1. **Push to GitHub**:
   - Push your updated codebase with the new configurations (`render.yaml`, `requirements.txt`, `Dockerfile`) to your GitHub repository.

2. **Connect to Render**:
   - Log in to [Render](https://render.com/).
   - Click **New +** and select **Blueprint**.
   - Connect your GitHub repository.
   - Render will automatically read the `render.yaml` file in the root and configure a Web Service named `neural-style-transfer`.

3. **Start the Deployment**:
   - Approve the blueprint sync and click **Deploy**.
   - The service will compile dependencies via `pip` (utilizing optimized CPU wheels) and boot with `gunicorn`.

---

## 💻 Running Locally

To run this application on your local machine:

1. **Clone the repository**:
   ```bash
   git clone <your-repo-url>
   cd nft
   ```

2. **Install dependencies**:
   ```bash
   pip install -r requirements.txt
   ```

3. **Run the Flask app**:
   ```bash
   python NST_Code/app.py
   ```
   Open `http://localhost:5000` in your web browser to use the application!
