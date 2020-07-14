.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r15
push %rcx
push %rdi
push %rsi

// Store
lea addresses_normal+0xa26f, %r15
nop
add $55154, %rcx
mov $0x5152535455565758, %r12
movq %r12, (%r15)
add $61777, %r10

// REPMOV
mov $0xe87, %rsi
lea addresses_normal+0xdb6f, %rdi
nop
nop
nop
dec %r12
mov $90, %rcx
rep movsl
cmp %rsi, %rsi

// Faulty Load
lea addresses_WC+0x1236f, %r10
clflush (%r10)
and %rsi, %rsi
movups (%r10), %xmm6
vpextrq $1, %xmm6, %rdi
lea oracles, %r15
and $0xff, %rdi
shlq $12, %rdi
mov (%r15,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %r15
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_P', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal', 'congruent': 8, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'00': 55}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
