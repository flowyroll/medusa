.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x3804, %rdx
nop
inc %r13
mov $0x6162636465666768, %rcx
movq %rcx, (%rdx)
nop
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_WT_ht+0x17204, %rdi
nop
nop
nop
nop
sub $22866, %rcx
mov $0x6162636465666768, %r8
movq %r8, %xmm3
movups %xmm3, (%rdi)
nop
nop
inc %rdx
lea addresses_D_ht+0x1ba04, %r12
clflush (%r12)
nop
nop
nop
xor %rsi, %rsi
movb (%r12), %r13b
xor %r8, %r8
lea addresses_A_ht+0x17964, %rsi
nop
sub %r12, %r12
vmovups (%rsi), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rcx
nop
add %r13, %r13
lea addresses_D_ht+0x16884, %rcx
nop
nop
nop
nop
add %r12, %r12
movw $0x6162, (%rcx)
nop
nop
nop
nop
xor $50952, %r12
lea addresses_A_ht+0x1bc68, %rsi
lea addresses_D_ht+0x11ea4, %rdi
nop
nop
nop
nop
nop
dec %r13
mov $12, %rcx
rep movsq
nop
nop
nop
cmp $1759, %r12
lea addresses_normal_ht+0x5d6, %rsi
lea addresses_normal_ht+0x19504, %rdi
nop
nop
nop
nop
add $62364, %rbx
mov $13, %rcx
rep movsl
nop
nop
nop
nop
xor %rbx, %rbx
lea addresses_D_ht+0x1bd04, %r13
nop
nop
nop
nop
nop
cmp $58971, %rsi
movl $0x61626364, (%r13)
nop
nop
sub %rdi, %rdi
lea addresses_WC_ht+0x1e804, %rsi
lea addresses_A_ht+0x6c9c, %rdi
clflush (%rsi)
nop
nop
add %r12, %r12
mov $117, %rcx
rep movsl
nop
add $27024, %r8
lea addresses_D_ht+0x13a04, %rdi
clflush (%rdi)
nop
nop
nop
nop
xor $12782, %rdx
mov $0x6162636465666768, %rcx
movq %rcx, (%rdi)
nop
nop
xor $43018, %rcx
lea addresses_WC_ht+0x1c1a4, %rsi
lea addresses_normal_ht+0xf604, %rdi
nop
nop
nop
nop
nop
and %rdx, %rdx
mov $30, %rcx
rep movsl
nop
nop
nop
and %rdx, %rdx
lea addresses_UC_ht+0x17d61, %r12
clflush (%r12)
nop
nop
nop
nop
nop
and %rdx, %rdx
movl $0x61626364, (%r12)
nop
nop
cmp $39298, %r8
lea addresses_D_ht+0x12b4c, %rsi
lea addresses_A_ht+0x8ae4, %rdi
nop
add %r8, %r8
mov $105, %rcx
rep movsl
nop
nop
nop
nop
nop
and %r12, %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r9
push %rax
push %rbx
push %rcx
push %rdi

// Store
lea addresses_PSE+0x9a04, %rbx
nop
nop
nop
cmp $20067, %rdi
mov $0x5152535455565758, %rcx
movq %rcx, (%rbx)

// Exception!!!
nop
nop
nop
nop
mov (0), %rcx
sub %rax, %rax

// Store
lea addresses_WT+0xfc04, %rcx
clflush (%rcx)
nop
nop
nop
add $21372, %r10
movw $0x5152, (%rcx)
and %r10, %r10

// Store
lea addresses_D+0x164a0, %r10
nop
nop
add $44771, %r14
mov $0x5152535455565758, %rdi
movq %rdi, %xmm0
movups %xmm0, (%r10)
nop
sub %rbx, %rbx

// Store
lea addresses_US+0x2604, %r9
nop
nop
nop
nop
nop
sub $59463, %r14
mov $0x5152535455565758, %rcx
movq %rcx, (%r9)
nop
inc %rdi

// Store
lea addresses_PSE+0x1d604, %rcx
and %rdi, %rdi
movw $0x5152, (%rcx)
nop
nop
nop
nop
nop
cmp %r9, %r9

// Store
lea addresses_normal+0x7ff0, %rcx
nop
nop
nop
nop
cmp $35995, %rbx
movw $0x5152, (%rcx)
nop
nop
nop
nop
cmp %r9, %r9

// Faulty Load
lea addresses_PSE+0x9a04, %r10
nop
xor $23781, %r9
vmovups (%r10), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %r14
lea oracles, %r9
and $0xff, %r14
shlq $12, %r14
mov (%r9,%r14,1), %r14
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_PSE'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 2, 'NT': True, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_D'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_US'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 2, 'NT': True, 'type': 'addresses_PSE'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_normal'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 8, 'NT': True, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': True, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 5, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': True, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}}
{'33': 21829}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
