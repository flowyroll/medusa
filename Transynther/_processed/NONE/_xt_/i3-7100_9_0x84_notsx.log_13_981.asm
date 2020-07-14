.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x14d60, %rbp
nop
nop
inc %r9
mov $0x6162636465666768, %rdx
movq %rdx, %xmm4
movups %xmm4, (%rbp)
nop
nop
nop
nop
nop
xor $51041, %r9
lea addresses_normal_ht+0x1e820, %rsi
lea addresses_WT_ht+0x19160, %rdi
nop
dec %r11
mov $77, %rcx
rep movsl
nop
nop
nop
sub $30422, %rsi
lea addresses_normal_ht+0x8260, %rdx
add $24809, %rdi
mov $0x6162636465666768, %r9
movq %r9, (%rdx)
sub %r9, %r9
lea addresses_normal_ht+0x79c0, %rdx
nop
nop
cmp %rdi, %rdi
mov (%rdx), %cx
add %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r8
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_PSE+0x14d60, %rsi
lea addresses_RW+0x168dc, %rdi
nop
sub $12658, %r8
mov $75, %rcx
rep movsl
nop
nop
nop
nop
nop
add %r11, %r11

// Load
lea addresses_PSE+0x1a160, %r10
sub $50792, %r13
movups (%r10), %xmm7
vpextrq $1, %xmm7, %r8
add %rcx, %rcx

// Faulty Load
lea addresses_PSE+0x14d60, %rdi
nop
nop
nop
nop
nop
add $39559, %r13
mov (%rdi), %r8d
lea oracles, %r13
and $0xff, %r8
shlq $12, %r8
mov (%r13,%r8,1), %r8
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 8, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_PSE', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_RW', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 16, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_UC_ht', 'same': True, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': True}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'33': 13}
33 33 33 33 33 33 33 33 33 33 33 33 33
*/
