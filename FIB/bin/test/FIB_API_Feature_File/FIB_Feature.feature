@API
Feature: Feature to test GRAV-1427

  @API_TESTING
  Scenario Outline: Testing GRAV-1428
    Given APIs are used to create patient / slots with "<Base_Url_slot>" and "<Base_Url_createNudgePatient>"
      | slotAPI       | modResource | CreatePatientAPI         | modality | patient_external_id | visit_id | appointment_id | phone_number1 | patient_initials | first_name | last_name | appointmentdate_increment |
      | /slots_upsert | BLM MR2     | /v2/create_nudge_patient | MR       | B18                 | B108     | A108           | +916374219185 | D                | Sham       | Z         |                         2 |

    Examples: 
      | Base_Url_slot            | Base_Url_createNudgePatient |
      | http://172.17.1.146:8000 | http://172.17.1.146:8001    |
