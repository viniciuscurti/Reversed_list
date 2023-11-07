# frozen_string_literal: true

require_relative 'node'


RSpec.describe Node, type: :model do


  context 'reverse_list' do
    it 'should reverse an empty list' do
      head = nil
      expected_head = nil
      actual_head = reverse_list(head)
      expect(actual_head).to eq(expected_head)
    end

    it 'should reverse a list with one element' do
      head = Node.new("Oi")
      expected_head = head
      actual_head = reverse_list(head)
      expect(actual_head).to eq(expected_head)
    end

    it 'should reverse a list with multiple elements' do
      head = Node.new('Oi')
      head.next = Node.new(5)
      head.next.next = Node.new('1/1/2005 14:00:00')
      head.next.next.next = Node.new(1.5)
      head.next.next.next.next = Node.new('Tchau')

      expected_head = Node.new('Tchau')
      expected_head.next = Node.new(1.5)
      expected_head.next.next = Node.new('1/1/2005 14:00:00')
      expected_head.next.next.next = Node.new(5)
      expected_head.next.next.next.next = Node.new('Oi')

      actual_head = reverse_list(head)

      expect(actual_head.value).to eq(expected_head.value)
    end
  end
end
