.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r9
push %rdi
push %rsi
lea addresses_UC_ht+0x18a99, %rsi
nop
nop
xor %rdi, %rdi
mov $0x6162636465666768, %r9
movq %r9, %xmm3
movups %xmm3, (%rsi)
nop
nop
nop
nop
nop
xor $2071, %r12
pop %rsi
pop %rdi
pop %r9
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %rax
push %rbp
push %rbx
push %rdi

// Faulty Load
lea addresses_US+0x1efdf, %r11
nop
nop
nop
sub %rdi, %rdi
mov (%r11), %bx
lea oracles, %rdi
and $0xff, %rbx
shlq $12, %rbx
mov (%rdi,%rbx,1), %rbx
pop %rdi
pop %rbx
pop %rbp
pop %rax
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'00': 41}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
