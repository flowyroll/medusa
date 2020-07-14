.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r8
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x72c1, %rsi
lea addresses_UC_ht+0x10fff, %rdi
nop
nop
nop
and $31612, %rbp
mov $22, %rcx
rep movsq
add $57917, %r9
lea addresses_UC_ht+0x2c7f, %r8
nop
nop
nop
nop
nop
and $13902, %rax
movl $0x61626364, (%r8)
nop
nop
nop
and %rdi, %rdi
lea addresses_WC_ht+0x151bf, %rcx
nop
add %rbp, %rbp
mov $0x6162636465666768, %r8
movq %r8, %xmm7
vmovups %ymm7, (%rcx)
xor %r8, %r8
lea addresses_WT_ht+0xa3ff, %rsi
lea addresses_D_ht+0xf997, %rdi
dec %r12
mov $19, %rcx
rep movsq
nop
nop
sub $17584, %rbp
lea addresses_WT_ht+0x139fb, %rdi
nop
nop
nop
nop
and %r8, %r8
mov $0x6162636465666768, %rcx
movq %rcx, %xmm6
vmovups %ymm6, (%rdi)
nop
nop
nop
nop
nop
xor $13047, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r9
push %rax
push %rcx
push %rsi

// Store
lea addresses_UC+0xf4bf, %r10
nop
nop
nop
nop
nop
cmp $51622, %r14
movb $0x51, (%r10)
nop
nop
xor %rax, %rax

// Store
lea addresses_A+0x1d1f, %r12
and $61737, %r9
mov $0x5152535455565758, %r14
movq %r14, %xmm6
movups %xmm6, (%r12)
nop
nop
nop
add %rax, %rax

// Store
lea addresses_normal+0x13d7f, %rsi
nop
nop
nop
cmp $48205, %rax
movw $0x5152, (%rsi)
nop
nop
nop
nop
nop
xor %r12, %r12

// Faulty Load
mov $0x9a66a00000002bf, %rsi
nop
nop
nop
nop
add $27172, %rax
vmovups (%rsi), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %r10
lea oracles, %rsi
and $0xff, %r10
shlq $12, %r10
mov (%rsi,%r10,1), %r10
pop %rsi
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': True, 'type': 'addresses_NC', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_UC', 'size': 1, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_A', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_normal', 'size': 2, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 2, 'NT': False, 'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False}}
{'44': 15885, '00': 2, '49': 5942}
44 49 44 44 49 49 44 44 49 44 44 49 44 44 49 44 49 44 44 44 44 49 44 44 44 49 44 44 44 49 44 44 44 44 44 44 44 49 44 44 49 44 44 44 44 44 49 44 44 44 44 44 44 44 49 44 49 44 44 44 44 44 49 44 44 44 44 44 44 49 44 44 49 44 44 44 49 44 44 49 44 44 49 44 44 44 49 44 44 44 44 49 44 49 44 49 44 44 44 49 44 44 44 49 44 44 44 49 49 44 44 49 44 44 49 44 44 44 44 49 44 44 44 49 44 44 44 44 44 49 49 44 44 49 44 44 44 49 44 49 44 44 44 44 44 44 44 49 44 49 44 49 44 44 49 44 49 44 44 49 44 44 44 44 49 44 44 44 49 44 44 44 44 44 44 44 44 44 44 44 49 44 49 44 44 44 49 44 49 44 49 44 44 44 44 44 44 44 49 44 49 44 49 44 44 44 44 44 44 49 44 49 44 44 44 44 49 44 49 44 44 44 49 44 44 44 44 44 44 44 44 49 44 49 44 49 44 44 44 44 44 44 49 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 49 44 49 44 49 44 44 49 44 49 44 49 44 44 49 44 49 44 44 44 44 49 44 49 44 44 44 44 49 44 44 44 49 44 49 44 44 44 49 44 49 44 44 44 49 44 44 44 44 44 49 44 49 44 44 44 44 44 44 44 44 49 44 49 44 44 44 49 44 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 49 44 44 49 44 44 44 44 44 44 44 49 44 44 44 44 44 49 44 44 44 44 44 49 44 44 44 44 44 44 44 49 49 49 44 44 44 49 44 49 44 44 44 49 44 49 44 49 44 49 44 44 44 44 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 49 44 44 49 44 44 49 44 49 44 49 44 49 44 49 44 44 44 49 44 49 44 44 44 49 44 44 49 44 44 44 44 44 49 44 44 49 44 44 49 44 44 49 44 44 44 44 44 44 44 49 44 44 44 49 44 44 44 44 49 44 44 44 49 44 44 44 44 49 44 44 44 44 49 44 44 44 44 44 49 44 44 44 44 44 44 49 44 49 44 44 49 44 44 49 44 44 44 44 49 44 49 44 44 49 44 44 44 44 44 44 49 44 44 44 44 49 44 49 44 49 44 44 49 44 44 44 49 44 44 44 44 44 49 44 49 44 44 44 44 49 44 44 44 44 44 44 49 44 44 49 44 44 44 44 44 44 44 49 44 44 49 44 44 44 44 44 44 44 49 44 44 49 44 44 49 44 44 44 44 44 49 44 49 49 44 44 44 49 44 49 44 49 44 49 44 44 44 49 44 44 44 44 49 44 44 49 44 44 44 49 44 49 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 49 44 44 49 44 44 49 44 49 49 44 44 44 44 44 44 49 44 44 49 44 49 49 44 44 44 49 44 44 49 44 49 44 44 44 44 44 49 44 44 44 44 44 44 44 44 49 44 44 44 44 49 44 44 49 44 49 44 44 44 44 49 44 44 49 44 49 44 49 44 49 44 44 44 44 44 49 44 44 44 49 44 44 44 44 44 44 49 44 44 44 44 49 44 44 44 44 49 44 44 49 44 44 44 44 49 44 49 44 44 44 44 49 44 44 44 44 49 44 44 49 44 49 44 49 44 44 49 44 44 44 44 44 44 44 44 44 44 44 49 44 49 44 49 44 44 49 44 44 49 44 44 49 44 49 44 49 44 49 44 49 44 44 49 44 49 44 44 44 44 44 49 44 44 44 44 44 49 44 49 44 44 49 44 44 44 44 44 44 44 44 49 44 44 44 49 44 44 49 44 44 49 44 49 44 44 49 44 44 44 49 44 44 44 44 44 44 44 44 49 44 49 44 49 44 49 44 49 44 44 49 44 44 49 44 44 49 44 49 44 44 44 49 44 44 49 44 49 44 49 44 49 44 44 44 44 44 49 44 44 49 44 49 44 49 44 44 49 44 44 44 44 44 44 44 49 44 44 44 44 44 49 44 44 44 44 44 44 44 44 49 44 44 44 44 49 44 44 44 49 44 49 44 49 44 44 44 49 44 44 49 44 44 49 44 49 44 49 44 49 44 49 44 44 49 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 44 44 49 44 44 44 44 44
*/
