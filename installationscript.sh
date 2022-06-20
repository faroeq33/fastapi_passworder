
dirname="passworder_test"

# rm -rf passworder;

if [ ! -d $dirname ];
then
	git clone https://github.com/Rac-Software-Development/fastapi_passworder.git passworder_test;
fi

# Gaat hiermee de map in genaamd passworder_test
cd passworder_test;


# Installeerd dependancies
pip install -r requirements.txt --upgrade;

# TODO: maak if constructie waarmee het bij fouten een 1 teruggeeft
python3 -m unittest discover . ;

if [ $? -eq 0 ];
then
  echo "Tests ran well..."
else
  echo "exit code: $?"
  exit 1;
fi

# Schrijft het versienummer in een tekstbestand
cd passworder;
git describe --tags > version.txt;

# Ga naar parentfolder
cd ../../;

# hernoem map naar oorspronkelijke naam;
mv ./passworder_test passworder;

cd passworder/;

# Start applicatie
python3 main.py;
# uvicorn main:app --reload;
