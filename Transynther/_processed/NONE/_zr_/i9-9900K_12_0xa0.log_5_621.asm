.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0xf855, %rcx
nop
sub $27572, %rdi
movb $0x61, (%rcx)
nop
nop
nop
dec %rsi
lea addresses_A_ht+0x18f9b, %r15
nop
nop
sub %rsi, %rsi
mov $0x6162636465666768, %r9
movq %r9, (%r15)
dec %rdx
lea addresses_D_ht+0x75d5, %rcx
nop
nop
nop
xor $51873, %r8
mov $0x6162636465666768, %rdx
movq %rdx, %xmm5
movups %xmm5, (%rcx)
nop
nop
nop
nop
add $63687, %r9
lea addresses_WT_ht+0x9655, %rsi
xor $57093, %rdx
movups (%rsi), %xmm3
vpextrq $1, %xmm3, %r9
nop
nop
add %rdx, %rdx
lea addresses_D_ht+0x7655, %r8
nop
nop
nop
nop
dec %rdx
mov (%r8), %r15w
nop
nop
nop
nop
cmp $55019, %rcx
lea addresses_normal_ht+0x8e55, %rdx
nop
nop
and %rsi, %rsi
mov $0x6162636465666768, %r15
movq %r15, %xmm2
movups %xmm2, (%rdx)
nop
nop
nop
xor $42365, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_A+0x3a55, %rsi
lea addresses_D+0x8da3, %rdi
nop
nop
nop
xor %r10, %r10
mov $36, %rcx
rep movsl
nop
nop
nop
nop
nop
add %r10, %r10

// Load
lea addresses_normal+0xad2b, %r13
nop
nop
nop
sub %r14, %r14
mov (%r13), %di
nop
nop
nop
add $52039, %r10

// Store
lea addresses_PSE+0x1ee55, %r13
cmp %rdx, %rdx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm0
movups %xmm0, (%r13)
nop
nop
nop
cmp $34338, %rdx

// Faulty Load
lea addresses_PSE+0x1ee55, %rcx
add $48813, %rsi
movups (%rcx), %xmm4
vpextrq $1, %xmm4, %r14
lea oracles, %r10
and $0xff, %r14
shlq $12, %r14
mov (%r10,%r14,1), %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_PSE', 'AVXalign': True, 'size': 4}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_A'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_D'}}
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_normal', 'AVXalign': True, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 16}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16}}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': True, 'congruent': 9, 'type': 'addresses_D_ht', 'AVXalign': True, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16}}
{'00': 5}
00 00 00 00 00
*/
