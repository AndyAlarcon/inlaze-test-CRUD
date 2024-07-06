from fastapi import FastAPI, HTTPException, Depends
from pydantic import BaseModel
from typing import List, Annotated
import models
from database import engine, SessionLocal
from sqlalchemy.orm import Session

app = FastAPI()
models.Base.metadata.create_all(bind=engine)

class PlanetBase(BaseModel):
    name: str
    mass: float
    diameter: float
    orbital_period: float
    number_of_moons: int

def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()

db_dependency = Annotated[Session, Depends(get_db)]

@app.post("/planets/")
async def create_planets(planet: PlanetBase, db: db_dependency):
    db_planet = models.Planets(name=planet.name, mass=planet.mass, diameter=planet.diameter, orbital_period=planet.orbital_period, number_of_moons=planet.number_of_moons)
    db.add(db_planet)
    db.commit()
    db.refresh(db_planet)