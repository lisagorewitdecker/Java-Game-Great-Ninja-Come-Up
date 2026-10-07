package com.codingdojo.ninjaProject.services;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import java.util.Optional;

import org.junit.jupiter.api.Test;

import com.codingdojo.ninjaProject.models.Ninja;
import com.codingdojo.ninjaProject.repositories.NinjaRepo;

class NinjaServiceTest {

	@Test
	void updateNinjaChangesOnlyEditableFields() {
		NinjaRepo ninjaRepo = mock(NinjaRepo.class);
		Ninja existing = new Ninja(10, 20);
		existing.setId(1L);
		existing.setName("Old name");
		existing.setColor("red");
		existing.setExpression("Old expression");
		when(ninjaRepo.findById(1L)).thenReturn(Optional.of(existing));
		when(ninjaRepo.save(existing)).thenReturn(existing);

		Ninja updates = new Ninja();
		updates.setId(99L);
		updates.setGold(1000);
		updates.setSilver(2000);
		updates.setName("New name");
		updates.setColor("blue");
		updates.setExpression("New expression");

		Ninja updated = new NinjaService(ninjaRepo).updateNinja(1L, updates);

		assertEquals(1L, updated.getId());
		assertEquals(10, updated.getGold());
		assertEquals(20, updated.getSilver());
		assertEquals("New name", updated.getName());
		assertEquals("blue", updated.getColor());
		assertEquals("New expression", updated.getExpression());
		verify(ninjaRepo).save(existing);
	}
}
