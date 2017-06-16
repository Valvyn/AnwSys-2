package de.tub.as.smm.dao;

import java.util.List;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import de.tub.as.smm.models.SmartMeter;

/**
 * Session Bean implementation class UserDaoEJB
 */
@Stateless
public class SmartMeterDao {

	// Injected database connection:
    @PersistenceContext private EntityManager em;
 
    // Stores a new user:
    public void persist(SmartMeter smartmeter) {
        em.persist(smartmeter);
    }
 
    // Retrieves all the users:
    public List<SmartMeter> getAllSmartMeters() {
        TypedQuery<SmartMeter> query = em.createQuery(
            "SELECT s FROM SmartMeter s ORDER BY s.id", SmartMeter.class);
        return query.getResultList();
    }

}
