package com.codingdojo.ninjaProject.controllers;

import static org.junit.jupiter.api.Assertions.assertArrayEquals;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.Mockito.mock;

import org.junit.jupiter.api.Test;
import org.springframework.beans.MutablePropertyValues;
import org.springframework.web.bind.WebDataBinder;

import com.codingdojo.ninjaProject.models.Ninja;
import com.codingdojo.ninjaProject.services.NinjaService;

class NinjasControllerTest {

	@Test
	void binderIgnoresNonEditableNinjaProperties() {
		Ninja ninja = new Ninja(10, 20);
		ninja.setId(1L);
		Ninjas controller = new Ninjas(mock(NinjaService.class));
		WebDataBinder binder = new WebDataBinder(ninja, "ninja");
		controller.initNinjaBinder(binder);

		MutablePropertyValues values = new MutablePropertyValues();
		values.add("id", 99L);
		values.add("gold", 1000);
		values.add("silver", 2000);
		values.add("name", "Updated");
		binder.bind(values);

		assertEquals(1L, ninja.getId());
		assertEquals(10, ninja.getGold());
		assertEquals(20, ninja.getSilver());
		assertEquals("Updated", ninja.getName());
		assertArrayEquals(new String[] {"id", "gold", "silver"}, binder.getSuppressedFields());
	}
}
