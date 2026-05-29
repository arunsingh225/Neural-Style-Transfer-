FROM python:3.10-slim

# Set up user with UID 1000 (standard for Hugging Face Spaces)
RUN useradd -m -u 1000 user
WORKDIR /app

# Install system dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# Copy requirements and install dependencies
COPY --chown=user:user requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application files
COPY --chown=user:user . .

# Switch to the non-root user
USER user

# Set environment variables
ENV PORT=7860
ENV FLASK_APP=NST_Code/app.py

# Expose Hugging Face Space port
EXPOSE 7860

# Start command running gunicorn
CMD ["gunicorn", "--bind", "0.0.0.0:7860", "--chdir", "NST_Code", "app:app"]
