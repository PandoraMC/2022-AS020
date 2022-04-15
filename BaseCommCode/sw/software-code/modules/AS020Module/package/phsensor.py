# Copyright (C) 2021 Intel Corporation 
# Licensed under the MIT license. See LICENSE file in the project root for
# full license information

from package.sensor import *
from package.sensorcontroller import *
import random

class pHSensor(SensorController):
    def __init__(self,name='pHSensor', real=False, offset=0x0) -> None:
        self.name = name
        self.modules = {
            'pH'           : Sensor('pH',             'double', real)
        }
        self.real = True
    
    def get_telemetries(self,bridge=None):
        data = {}
        if self.real :
            data['pH'] = random.uniform(5, 8)
            return data
        else : 
            data['pH'] = 7.5
            logger.debug('{} sensor is dummy and if you want values to test, please use generate_dummy_value in threshold class.'.format(self.name))
            return data