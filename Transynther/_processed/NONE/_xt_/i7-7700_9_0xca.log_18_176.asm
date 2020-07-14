.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r15
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xf35f, %r15
nop
nop
and %rdi, %rdi
and $0xffffffffffffffc0, %r15
vmovntdqa (%r15), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rsi
nop
nop
nop
nop
nop
add %r8, %r8
lea addresses_A_ht+0x1c95f, %r13
nop
nop
nop
nop
and %rcx, %rcx
mov (%r13), %r12w
inc %rcx
lea addresses_A_ht+0x6a6f, %r12
nop
xor $35802, %rcx
movw $0x6162, (%r12)
nop
nop
nop
nop
nop
and $25876, %r12
lea addresses_A_ht+0x838d, %r8
nop
nop
nop
nop
nop
sub $3007, %rcx
mov (%r8), %rsi
and %r15, %r15
lea addresses_UC_ht+0x104df, %rcx
clflush (%rcx)
nop
nop
nop
nop
inc %r13
mov (%rcx), %r12d
nop
nop
cmp $38715, %rsi
lea addresses_WC_ht+0x168df, %r13
nop
nop
sub $9727, %rcx
and $0xffffffffffffffc0, %r13
vmovaps (%r13), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rdi
dec %r12
lea addresses_WT_ht+0x19adf, %r15
nop
nop
nop
inc %r8
movl $0x61626364, (%r15)
nop
nop
xor %r13, %r13
lea addresses_UC_ht+0x1a8df, %rdi
nop
and %r13, %r13
movb (%rdi), %r15b
nop
nop
nop
xor $11804, %r15
lea addresses_UC_ht+0xfd97, %rsi
nop
nop
nop
nop
dec %r15
movb $0x61, (%rsi)
nop
cmp %r15, %r15
lea addresses_UC_ht+0x8579, %rsi
lea addresses_UC_ht+0xb8df, %rdi
clflush (%rdi)
sub %r10, %r10
mov $9, %rcx
rep movsb
nop
nop
add %r13, %r13
lea addresses_WC_ht+0x8c5f, %r13
nop
nop
nop
nop
add %r8, %r8
movl $0x61626364, (%r13)
nop
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_A_ht+0x1211f, %rsi
lea addresses_normal_ht+0x183, %rdi
clflush (%rsi)
nop
nop
nop
nop
xor $17651, %r12
mov $35, %rcx
rep movsw
nop
nop
nop
and $8283, %r8
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %r9
push %rdi
push %rdx
push %rsi

// Load
lea addresses_RW+0x53e6, %r15
mfence
mov (%r15), %si
nop
nop
add %r13, %r13

// Store
mov $0x2f8f470000000397, %r9
nop
nop
dec %rdi
mov $0x5152535455565758, %r11
movq %r11, %xmm2
vmovups %ymm2, (%r9)
nop
nop
nop
nop
nop
add %rdx, %rdx

// Store
lea addresses_PSE+0x7adf, %r11
nop
nop
nop
nop
sub %r9, %r9
mov $0x5152535455565758, %rsi
movq %rsi, %xmm4
movups %xmm4, (%r11)
nop
nop
nop
nop
nop
and %r15, %r15

// Faulty Load
lea addresses_D+0x130df, %rdi
nop
nop
nop
nop
inc %r15
mov (%rdi), %esi
lea oracles, %r13
and $0xff, %rsi
shlq $12, %rsi
mov (%r13,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %r9
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': True, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 2, 'NT': True, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_NC'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_PSE'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 32, 'NT': True, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 11, 'AVXalign': True, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 3, 'same': True, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}}
{'36': 18}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
