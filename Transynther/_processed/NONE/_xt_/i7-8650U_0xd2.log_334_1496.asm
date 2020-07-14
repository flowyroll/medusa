.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0xb96a, %rsi
sub %rdx, %rdx
movb $0x61, (%rsi)
add %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r8
push %r9
push %rbp
push %rcx
push %rdx

// Store
lea addresses_D+0xe7aa, %r12
nop
nop
nop
cmp %rbp, %rbp
mov $0x5152535455565758, %r9
movq %r9, (%r12)
nop
nop
and $28999, %rdx

// Store
lea addresses_WT+0x1386a, %rdx
nop
add %r8, %r8
movw $0x5152, (%rdx)
nop
xor %r11, %r11

// Faulty Load
lea addresses_RW+0x196a, %r8
nop
nop
sub $21109, %rcx
mov (%r8), %r9d
lea oracles, %rbp
and $0xff, %r9
shlq $12, %r9
mov (%rbp,%r9,1), %r9
pop %rdx
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'32': 334}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
