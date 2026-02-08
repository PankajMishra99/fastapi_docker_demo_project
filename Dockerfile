# Base Image 
FROM python:3.10-slim 

#  Working Dirctry
WORKDIR /app 

#  Dependency copy 
COPY requirements.txt .

# Run dependency 
RUN pip install -r requirements.txt 

# APP CODE COPY 
COPY . . 

# Port expose 
EXPOSE 8000

# app run code .. 
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]


