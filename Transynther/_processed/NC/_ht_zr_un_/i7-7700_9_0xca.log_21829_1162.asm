.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x4397, %rsi
lea addresses_UC_ht+0x64c3, %rdi
nop
nop
nop
nop
nop
inc %r8
mov $104, %rcx
rep movsq
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_WC_ht+0x331, %rsi
lea addresses_normal_ht+0x75c3, %rdi
clflush (%rsi)
nop
nop
nop
cmp %rbp, %rbp
mov $122, %rcx
rep movsb
nop
nop
cmp $65029, %rsi
lea addresses_UC_ht+0xec83, %rsi
lea addresses_D_ht+0x1c9f7, %rdi
clflush (%rdi)
add %r8, %r8
mov $3, %rcx
rep movsl
nop
xor %rdi, %rdi
lea addresses_WT_ht+0x11c93, %rdx
nop
nop
nop
nop
nop
and %r15, %r15
mov $0x6162636465666768, %rsi
movq %rsi, (%rdx)
nop
add %rsi, %rsi
lea addresses_D_ht+0xb0af, %rsi
lea addresses_WT_ht+0x10043, %rdi
nop
nop
nop
nop
add $56919, %rdx
mov $92, %rcx
rep movsq
nop
nop
nop
nop
nop
xor %rbp, %rbp
lea addresses_WC_ht+0x10ec3, %rsi
lea addresses_D_ht+0x2903, %rdi
clflush (%rsi)
nop
dec %r14
mov $57, %rcx
rep movsb
nop
nop
nop
sub %rbp, %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %rax
push %rbx
push %rcx
push %rsi

// Store
lea addresses_WC+0x174c3, %r13
nop
sub $16913, %rcx
movw $0x5152, (%r13)
nop
cmp $6766, %rsi

// Store
lea addresses_UC+0x6d4b, %r12
nop
xor $54583, %rax
mov $0x5152535455565758, %r14
movq %r14, (%r12)
nop
nop
nop
sub $27798, %rsi

// Store
lea addresses_RW+0x3843, %rbx
nop
nop
nop
and %rcx, %rcx
mov $0x5152535455565758, %r14
movq %r14, %xmm1
vmovups %ymm1, (%rbx)
nop
nop
sub %r12, %r12

// Store
mov $0x767f6800000004c3, %r14
nop
nop
cmp $29662, %rbx
movl $0x51525354, (%r14)
nop
nop
nop
add %rsi, %rsi

// Faulty Load
mov $0x767f6800000004c3, %rbx
nop
xor %r12, %r12
vmovups (%rbx), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rax
lea oracles, %rsi
and $0xff, %rax
shlq $12, %rax
mov (%rsi,%rax,1), %rax
pop %rsi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WC'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_UC'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_RW'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_NC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}}
{'44': 5225, '46': 5132, '48': 194, '40': 16, '00': 11249, '06': 5, '04': 8}
00 44 00 00 46 46 00 00 44 00 44 46 00 44 00 00 46 46 00 46 46 00 00 44 46 44 00 00 46 46 46 00 44 46 46 00 44 00 00 00 46 46 44 44 00 46 46 46 00 46 44 44 46 46 00 46 44 44 44 44 00 46 00 00 46 00 00 00 00 44 00 44 00 46 00 00 00 00 00 00 44 46 46 00 00 46 00 44 46 00 46 00 00 44 00 00 00 00 46 00 46 00 00 00 44 44 00 44 44 00 46 00 44 44 44 46 44 48 00 00 44 46 46 44 00 00 00 00 00 46 44 00 46 44 46 00 46 44 44 44 00 48 00 44 00 00 00 00 00 44 00 46 00 46 00 00 00 00 46 46 00 00 00 44 46 46 44 00 44 00 00 00 00 46 46 00 44 00 00 00 00 00 46 46 44 44 00 46 46 00 00 46 44 00 00 44 00 00 00 00 00 46 46 46 00 00 44 00 00 00 00 44 46 44 00 00 00 00 44 46 44 46 44 00 00 00 46 46 44 00 00 44 00 00 46 46 44 00 00 00 46 46 44 46 00 44 44 44 00 46 00 46 00 46 00 00 46 44 00 46 44 46 00 44 46 44 46 46 00 46 44 00 46 00 46 00 46 00 00 00 00 44 00 00 46 00 00 00 00 00 44 00 00 46 00 46 46 00 00 00 46 00 00 00 00 00 46 46 44 00 00 00 00 00 46 00 00 00 00 44 44 44 00 46 00 46 00 00 00 46 00 00 00 46 46 00 00 44 00 00 00 46 46 46 46 00 46 44 44 00 00 44 44 46 46 00 00 44 00 00 44 44 44 00 44 46 00 00 00 46 00 44 44 00 46 46 46 00 46 44 00 00 00 46 44 44 00 44 44 44 44 00 00 00 00 46 00 00 00 44 00 44 44 00 00 00 44 00 00 00 44 44 00 46 46 00 00 00 46 48 00 00 46 00 44 00 00 46 44 46 00 44 46 00 00 46 00 00 44 00 00 00 46 46 00 46 46 44 46 44 00 00 44 00 46 48 00 44 00 00 00 44 00 44 00 46 00 00 00 44 00 44 44 00 46 00 00 00 44 46 46 00 44 00 46 00 00 44 44 44 00 46 00 00 00 46 00 44 44 00 44 44 00 00 44 46 00 00 00 46 00 00 00 00 46 00 00 00 00 00 44 00 46 44 44 00 44 00 00 00 00 00 44 44 46 44 00 00 00 44 00 46 00 46 00 46 46 44 46 00 00 46 00 46 44 00 46 44 46 00 44 00 00 44 00 00 00 00 00 44 44 00 00 46 46 00 00 46 44 46 44 00 00 46 00 46 44 00 44 46 00 44 00 46 46 00 46 00 00 00 00 00 46 46 44 00 00 44 44 00 00 00 00 00 00 46 00 44 00 00 00 44 00 00 44 46 00 00 00 46 46 00 00 46 00 46 46 00 00 46 44 46 00 00 46 44 46 46 44 46 00 44 46 00 00 00 00 00 44 00 46 44 44 00 00 00 00 44 46 00 00 00 00 46 00 00 44 44 44 46 00 00 44 00 44 00 46 00 46 00 00 00 00 00 46 00 00 46 46 46 00 00 00 00 46 00 00 44 46 44 44 46 00 44 46 00 44 46 00 00 46 00 00 44 46 00 44 00 00 00 46 46 44 00 00 46 46 44 00 46 00 00 00 44 46 00 00 00 44 00 46 46 46 44 00 00 00 00 46 44 46 00 00 00 44 46 44 44 46 00 46 00 00 00 00 00 46 00 46 44 00 44 44 44 46 00 00 46 44 46 44 00 00 46 00 00 44 46 44 46 00 00 44 44 00 46 46 00 00 00 44 00 46 46 00 44 44 00 00 00 44 44 00 00 44 46 00 00 44 46 44 44 46 00 46 46 00 46 00 46 46 00 00 46 00 46 44 00 46 00 00 46 00 00 00 00 00 44 00 00 00 46 44 00 00 00 46 44 00 40 44 46 44 46 46 00 46 00 00 46 44 46 00 44 00 46 46 00 00 46 00 46 44 00 00 00 44 00 00 44 00 44 46 44 00 44 00 44 44 00 00 44 00 00 00 46 00 00 46 46 44 00 44 00 00 00 00 46 44 44 46 00 00 00 00 44 46 44 00 46 00 00 00 00 46 46 44 00 44 46 00 00 44 46 44 00 44 00 00 46 44 00 44 00 00 00 46 46 44 46 44 00 00 00 44 00 46 00 00 46 00 46 00 00 00 00 46 00 46 00 44 46 44 46 44 00 00 44 00 46
*/
