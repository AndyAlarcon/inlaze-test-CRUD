from sqlalchemy import Column, ForeignKey, Integer, String, Float
from database import Base

class Planet(Base):
    __tablename__='planets'

    id = Column(Integer, primary_key=True, index=True)
    name = Column(String, index=True)
    mass = Column(Float)
    diameter = Column(Float)
    orbital_period = Column(Float)
    number_of_moons = Column(Integer)
