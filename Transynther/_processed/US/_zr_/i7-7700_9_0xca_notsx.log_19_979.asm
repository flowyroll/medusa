.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x16fec, %r11
nop
sub $4870, %rbp
mov $0x6162636465666768, %rdx
movq %rdx, %xmm5
movups %xmm5, (%r11)
nop
nop
nop
nop
nop
cmp %r12, %r12
lea addresses_D_ht+0x842c, %r9
nop
nop
nop
nop
sub %r8, %r8
movups (%r9), %xmm3
vpextrq $0, %xmm3, %r11
nop
and %rdx, %rdx
lea addresses_D_ht+0x2a2c, %r11
cmp $15806, %r15
movups (%r11), %xmm3
vpextrq $1, %xmm3, %rbp
nop
nop
dec %rbp
lea addresses_normal_ht+0x1302c, %rsi
lea addresses_UC_ht+0x1aaec, %rdi
nop
nop
add $33766, %r11
mov $51, %rcx
rep movsl
cmp $18750, %r9
lea addresses_D_ht+0x9b64, %rsi
lea addresses_normal_ht+0x18a2c, %rdi
nop
nop
nop
nop
add $46100, %rdx
mov $87, %rcx
rep movsq
nop
nop
nop
cmp %r12, %r12
lea addresses_WC_ht+0x1214c, %r8
nop
nop
nop
nop
nop
dec %r12
movl $0x61626364, (%r8)
nop
nop
add $4593, %rbp
lea addresses_UC_ht+0x1d62c, %rsi
lea addresses_normal_ht+0xc6fc, %rdi
clflush (%rdi)
nop
nop
dec %r9
mov $63, %rcx
rep movsw
nop
nop
nop
nop
add %r15, %r15
lea addresses_UC_ht+0x1c02c, %r11
nop
nop
nop
nop
cmp %rcx, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm3
movups %xmm3, (%r11)
nop
nop
nop
nop
sub %rdx, %rdx
lea addresses_A_ht+0x648c, %rsi
lea addresses_A_ht+0x3144, %rdi
clflush (%rdi)
nop
nop
add %r15, %r15
mov $111, %rcx
rep movsw
nop
nop
nop
nop
nop
and %r12, %r12
lea addresses_normal_ht+0x1a02c, %r9
nop
sub $5006, %rbp
mov (%r9), %r15w
nop
nop
nop
dec %r11
lea addresses_normal_ht+0xfb7c, %rsi
lea addresses_WC_ht+0x4574, %rdi
nop
nop
xor $50557, %r11
mov $69, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp %r11, %r11
lea addresses_UC_ht+0x19c2c, %rsi
lea addresses_normal_ht+0x199ed, %rdi
nop
nop
nop
nop
nop
cmp $32208, %r12
mov $92, %rcx
rep movsb
nop
nop
nop
xor $3678, %rsi
lea addresses_D_ht+0xee8c, %rsi
lea addresses_A_ht+0x1516c, %rdi
clflush (%rdi)
nop
nop
nop
nop
inc %r15
mov $86, %rcx
rep movsb
nop
nop
nop
sub %r8, %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %r9
push %rax
push %rcx
push %rsi

// Store
lea addresses_UC+0x1391c, %r9
nop
nop
nop
add $8564, %rcx
mov $0x5152535455565758, %rax
movq %rax, (%r9)
nop
nop
add %rax, %rax

// Store
lea addresses_WC+0x5a6c, %r14
nop
nop
cmp %r15, %r15
mov $0x5152535455565758, %rcx
movq %rcx, %xmm3
movups %xmm3, (%r14)
and $21803, %r9

// Faulty Load
lea addresses_US+0x1242c, %r14
nop
add $10604, %r13
mov (%r14), %esi
lea oracles, %r14
and $0xff, %rsi
shlq $12, %rsi
mov (%r14,%rsi,1), %rsi
pop %rsi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 2, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 1, 'same': True, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 10, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'00': 19}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
