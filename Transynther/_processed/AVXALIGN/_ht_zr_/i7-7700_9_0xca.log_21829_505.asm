.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0xa0e, %r13
nop
nop
and %r10, %r10
mov $0x6162636465666768, %r9
movq %r9, %xmm0
movups %xmm0, (%r13)
nop
sub $12421, %r11
lea addresses_WC_ht+0x6a4e, %rax
nop
nop
xor $19426, %rbx
vmovups (%rax), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %rdx
nop
nop
nop
sub %r10, %r10
lea addresses_A_ht+0xa38e, %rsi
lea addresses_D_ht+0xbb8e, %rdi
nop
nop
nop
nop
nop
add %rdx, %rdx
mov $70, %rcx
rep movsq
nop
and $6119, %r13
lea addresses_D_ht+0xe34e, %rsi
nop
nop
nop
nop
nop
sub %r9, %r9
mov $0x6162636465666768, %rax
movq %rax, %xmm0
movups %xmm0, (%rsi)
nop
nop
nop
nop
cmp $6449, %r11
lea addresses_WT_ht+0x6d8e, %rdx
nop
xor $57408, %r10
mov $0x6162636465666768, %r13
movq %r13, (%rdx)
add %r11, %r11
lea addresses_normal_ht+0x1930e, %rbx
nop
sub $53378, %rdi
movb (%rbx), %r11b
nop
add %r9, %r9
lea addresses_normal_ht+0x17a0e, %rsi
lea addresses_UC_ht+0x384e, %rdi
nop
nop
nop
nop
and $38497, %r10
mov $108, %rcx
rep movsq
add $35462, %rsi
lea addresses_UC_ht+0x268e, %r10
nop
nop
nop
nop
nop
dec %rdi
movups (%r10), %xmm1
vpextrq $1, %xmm1, %r11
nop
nop
nop
sub %r11, %r11
lea addresses_WT_ht+0xeb8e, %r9
nop
nop
nop
xor $25107, %rdx
movb $0x61, (%r9)
nop
nop
nop
nop
and %rbx, %rbx
lea addresses_WT_ht+0x6f8e, %rcx
nop
dec %r13
mov (%rcx), %rsi
nop
nop
nop
nop
and $53902, %rbx
lea addresses_WT_ht+0x347e, %rcx
nop
nop
nop
nop
nop
add $24941, %rdx
mov (%rcx), %r11d
nop
nop
nop
nop
nop
xor %r9, %r9
lea addresses_WC_ht+0x10b8e, %rcx
nop
nop
nop
add $11340, %rdi
mov $0x6162636465666768, %rax
movq %rax, %xmm6
vmovups %ymm6, (%rcx)
sub $32659, %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r8
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_UC+0x38f0, %rbp
clflush (%rbp)
nop
nop
and $20487, %r8
movb $0x51, (%rbp)
nop
nop
nop
nop
nop
and $2544, %r10

// Load
lea addresses_normal+0x10b8e, %rbp
nop
dec %r14
mov (%rbp), %r8
nop
nop
nop
sub %r10, %r10

// Faulty Load
lea addresses_PSE+0x1638e, %rsi
nop
sub %rdi, %rdi
vmovaps (%rsi), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %r8
lea oracles, %rsi
and $0xff, %r8
shlq $12, %r8
mov (%rsi,%r8,1), %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': True, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_UC'}}
{'src': {'congruent': 11, 'AVXalign': True, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': True, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 8, 'NT': True, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WC_ht'}}
{'44': 15647, '45': 182, '48': 9, '00': 5991}
00 44 44 44 44 00 00 44 00 00 44 44 44 44 00 00 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 00 44 44 00 44 44 44 44 00 00 44 44 00 44 44 44 44 44 44 00 44 44 44 44 44 00 00 44 00 44 44 44 00 44 44 00 00 44 44 44 00 44 44 44 44 44 44 44 00 00 44 44 00 00 44 44 00 44 44 44 00 44 44 00 44 44 44 44 44 00 44 00 44 00 00 44 44 00 00 44 44 44 44 00 44 44 44 44 44 44 44 44 44 00 44 44 00 44 44 00 00 44 44 00 44 44 44 00 00 44 44 44 44 00 44 44 00 44 44 44 44 44 00 44 44 00 44 44 44 00 44 44 44 00 00 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 00 44 44 44 44 44 00 44 44 44 44 00 00 44 44 00 44 44 00 44 44 00 44 44 00 00 44 44 44 44 00 44 44 00 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 00 44 44 44 44 44 44 00 44 44 00 44 44 00 44 00 00 44 44 00 44 44 00 00 44 44 44 44 44 00 44 00 00 44 44 44 00 44 44 44 44 00 44 44 44 44 44 44 44 44 44 00 44 00 44 44 44 00 44 44 44 00 00 44 44 44 44 44 44 44 44 44 00 00 44 44 00 44 44 00 00 44 44 44 00 44 44 00 44 44 44 44 00 00 44 44 44 44 44 45 44 44 44 44 44 44 00 44 44 44 44 00 00 44 44 00 44 44 44 44 44 00 44 44 44 00 44 44 44 44 44 44 00 00 44 00 44 44 44 00 44 44 44 44 44 00 44 44 44 00 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 00 00 44 44 44 00 44 44 00 44 44 00 44 44 44 00 44 44 00 44 00 00 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 00 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 00 44 44 00 44 44 00 45 44 44 00 00 44 44 44 44 00 44 44 44 44 00 44 00 44 44 00 44 44 44 44 44 00 44 00 00 44 44 44 44 00 44 44 00 44 44 00 44 44 00 00 44 44 44 44 00 00 00 44 44 00 00 44 44 44 44 00 00 44 44 44 00 44 44 44 00 44 44 00 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 00 44 44 00 44 44 44 00 00 45 44 44 44 00 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 00 00 44 44 44 44 44 00 44 44 44 00 44 44 00 44 44 00 44 44 00 44 44 00 44 44 44 44 44 44 44 44 00 44 44 00 44 44 00 44 44 44 44 44 44 00 44 44 44 00 44 44 44 44 44 44 44 44 44 00 00 44 44 00 44 44 44 44 44 45 44 44 00 44 44 00 44 00 44 44 44 44 44 44 44 44 00 44 00 44 44 44 44 44 44 44 44 00 00 44 44 44 44 00 44 44 00 44 44 44 00 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 00 44 44 44 44 44 44 00 00 44 44 00 44 44 44 44 00 00 44 44 44 44 00 00 44 44 00 00 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 00 00 44 44 00 00 44 44 00 44 44 44 44 00 00 00 44 44 44 00 44 00 44 44 44 44 44 00 44 44 44 00 44 44 44 44 44 44 00 44 44 00 00 44 44 00 00 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 00 00 44 44 44 44 44 00 44 44 00 44 44 44 00 44 44 44 00 44 44 44 44 00 44 44 00 44 44 00 00 44 44 00 44 44 44 44 44 44 44 44 00 44 44 44 00 44 44 00 44 00 44 44 44 44 44 44 44 44 00 44 44 44 00 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 00 00 44 44 00 00 00 44 44 00 00 44 44 00 44 00 44 44 44 44 00 44 44 00 44 44 44 00 44 44 44 44 44 44 44 44 44 00 44 44 44 00 00
*/
