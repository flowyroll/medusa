.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1bfdc, %rsi
lea addresses_D_ht+0x20dc, %rdi
and $33999, %rax
mov $29, %rcx
rep movsb
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_D_ht+0x1ee2c, %r12
nop
nop
nop
nop
nop
and %r14, %r14
mov (%r12), %r10
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_A_ht+0x1e08c, %r10
nop
nop
nop
nop
and $43450, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, (%r10)
nop
nop
nop
nop
nop
and $20358, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r8
push %r9
push %rsi

// Load
mov $0x53c, %r12
nop
nop
and $33883, %r8
mov (%r12), %si

// Exception!!!
mov (0), %r14
nop
nop
xor $39993, %r12

// Store
lea addresses_A+0xf9bc, %r14
nop
nop
nop
nop
nop
cmp $7623, %r12
mov $0x5152535455565758, %r9
movq %r9, %xmm0
movups %xmm0, (%r14)
nop
dec %rsi

// Faulty Load
lea addresses_A+0x553c, %rsi
cmp $16170, %r12
mov (%rsi), %r13
lea oracles, %r14
and $0xff, %r13
shlq $12, %r13
mov (%r14,%r13,1), %r13
pop %rsi
pop %r9
pop %r8
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'00': 265, '49': 8, '47': 3, '22': 1, '04': 1, '80': 1}
00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 49 00 00 00 00 47 22 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 04 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 80 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 47 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00
*/
