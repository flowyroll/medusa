.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x7085, %rbp
nop
nop
nop
nop
nop
and %rsi, %rsi
movb $0x61, (%rbp)
nop
nop
nop
nop
cmp %r12, %r12
lea addresses_WT_ht+0xfc5, %rsi
lea addresses_UC_ht+0x11085, %rdi
nop
nop
nop
cmp %r9, %r9
mov $122, %rcx
rep movsw
nop
nop
nop
and $47505, %rsi
lea addresses_normal_ht+0x5c85, %rsi
lea addresses_WC_ht+0x40d5, %rdi
clflush (%rdi)
nop
nop
nop
cmp %r10, %r10
mov $90, %rcx
rep movsl
cmp $45138, %r12
lea addresses_D_ht+0x14085, %rbx
cmp %r12, %r12
movups (%rbx), %xmm5
vpextrq $1, %xmm5, %r10
nop
nop
add %r12, %r12
lea addresses_WC_ht+0xdc85, %rsi
lea addresses_A_ht+0x14285, %rdi
nop
nop
nop
nop
inc %rbx
mov $23, %rcx
rep movsl
nop
cmp %rcx, %rcx
lea addresses_WC_ht+0xd165, %r9
nop
nop
nop
nop
sub $61016, %r10
movw $0x6162, (%r9)
nop
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_UC_ht+0x7c05, %r10
add $10109, %rbp
mov $0x6162636465666768, %r12
movq %r12, %xmm4
vmovups %ymm4, (%r10)
sub $35764, %rdi
lea addresses_WT_ht+0x1df5, %rbx
clflush (%rbx)
dec %rbp
vmovups (%rbx), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %rsi
nop
xor %rbx, %rbx
lea addresses_WC_ht+0xc785, %r9
cmp $15090, %r10
and $0xffffffffffffffc0, %r9
movntdqa (%r9), %xmm0
vpextrq $0, %xmm0, %rsi
nop
nop
add $37147, %rcx
lea addresses_WT_ht+0x2885, %rsi
nop
nop
xor $23707, %r10
movb (%rsi), %r12b
nop
add $24224, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_RW+0x1dddf, %rsi
lea addresses_UC+0x17e85, %rdi
nop
nop
nop
nop
nop
xor %r13, %r13
mov $0, %rcx
rep movsq
nop
nop
cmp %rsi, %rsi

// Load
lea addresses_WT+0xdf9a, %rcx
nop
nop
nop
sub $48492, %r13
mov (%rcx), %ebx
nop
add %rdi, %rdi

// Store
lea addresses_PSE+0x23f6, %rcx
nop
nop
xor %rbx, %rbx
movl $0x51525354, (%rcx)
and %rcx, %rcx

// Store
lea addresses_PSE+0xb0c6, %r8
nop
nop
dec %r15
movb $0x51, (%r8)
add %rbx, %rbx

// Store
mov $0x886, %r15
nop
nop
nop
nop
dec %r8
movb $0x51, (%r15)
nop
sub $24651, %r8

// Store
mov $0x85, %r15
nop
nop
nop
nop
nop
sub %r8, %r8
mov $0x5152535455565758, %rcx
movq %rcx, (%r15)
xor %rdi, %rdi

// Store
lea addresses_WT+0x14085, %rsi
nop
sub $52013, %r13
movw $0x5152, (%rsi)
nop
nop
nop
and $30109, %rsi

// Faulty Load
mov $0x130cf60000000085, %r8
nop
nop
nop
nop
nop
sub %r13, %r13
movups (%r8), %xmm6
vpextrq $1, %xmm6, %rdi
lea oracles, %r13
and $0xff, %rdi
shlq $12, %rdi
mov (%r13,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_RW'}, 'OP': 'REPM', 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_UC'}}
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_PSE'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_PSE'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': True, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_P'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_P'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 16, 'NT': True, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'00': 1}
00
*/
