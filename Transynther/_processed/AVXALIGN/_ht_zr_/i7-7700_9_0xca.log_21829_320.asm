.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x486d, %rsi
lea addresses_WT_ht+0x20a5, %rdi
and %r11, %r11
mov $49, %rcx
rep movsl
nop
cmp %rdx, %rdx
lea addresses_UC_ht+0xf269, %r8
and %rdi, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, %xmm3
and $0xffffffffffffffc0, %r8
vmovntdq %ymm3, (%r8)
nop
nop
nop
and %rcx, %rcx
lea addresses_normal_ht+0x154b1, %rsi
lea addresses_WC_ht+0xcfed, %rdi
nop
nop
nop
nop
cmp %r13, %r13
mov $63, %rcx
rep movsw
nop
nop
nop
nop
nop
inc %r8
lea addresses_D_ht+0x186d, %rcx
dec %rdi
mov $0x6162636465666768, %rsi
movq %rsi, %xmm3
movups %xmm3, (%rcx)
nop
nop
nop
nop
nop
inc %rdi
lea addresses_WT_ht+0x10105, %rsi
cmp $43803, %rcx
movl $0x61626364, (%rsi)
nop
nop
nop
nop
dec %rcx
lea addresses_WT_ht+0x5fd1, %rdx
nop
nop
sub $50040, %rdi
movb $0x61, (%rdx)
nop
nop
nop
nop
sub $62707, %rdi
lea addresses_WT_ht+0xf0cd, %r11
nop
nop
add $63493, %rdi
mov (%r11), %r13d
nop
add %r13, %r13
lea addresses_WT_ht+0x68ad, %rcx
nop
nop
nop
xor $2754, %r8
movups (%rcx), %xmm0
vpextrq $1, %xmm0, %r11
nop
nop
nop
xor $35853, %rcx
lea addresses_normal_ht+0x1b0ed, %r8
clflush (%r8)
nop
xor %rsi, %rsi
movb (%r8), %r13b
xor %rdi, %rdi
lea addresses_UC_ht+0x6e6d, %rcx
nop
nop
and $4045, %r13
movl $0x61626364, (%rcx)
nop
nop
nop
nop
add $24053, %rcx
lea addresses_UC_ht+0x1106d, %rsi
lea addresses_A_ht+0xe66d, %rdi
nop
nop
nop
nop
nop
sub $25189, %r15
mov $41, %rcx
rep movsw
nop
nop
nop
nop
nop
xor $2549, %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r9
push %rax
push %rbx
push %rcx

// Store
lea addresses_UC+0x1d26d, %r11
and %r13, %r13
movb $0x51, (%r11)
nop
nop
and $31421, %rcx

// Store
lea addresses_US+0x2a6d, %rbx
nop
dec %r12
movl $0x51525354, (%rbx)
and %rbx, %rbx

// Load
lea addresses_WT+0xb26d, %rcx
nop
nop
nop
add %rax, %rax
movups (%rcx), %xmm3
vpextrq $0, %xmm3, %r11
nop
nop
nop
cmp %rcx, %rcx

// Store
lea addresses_D+0x17e6d, %rcx
nop
nop
nop
nop
nop
sub $35560, %r9
mov $0x5152535455565758, %rax
movq %rax, (%rcx)
nop
nop
nop
nop
add $40793, %r11

// Faulty Load
lea addresses_US+0x306d, %r9
nop
nop
cmp %rax, %rax
vmovntdqa (%r9), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %r13
lea oracles, %r9
and $0xff, %r13
shlq $12, %r13
mov (%r9,%r13,1), %r13
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_UC'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_US'}}
{'src': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 8, 'NT': True, 'type': 'addresses_D'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 32, 'NT': True, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 4, 'NT': True, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}}
{'44': 4499, '49': 183, '00': 17147}
00 44 00 00 44 44 00 00 00 00 44 00 00 44 44 00 00 00 44 00 00 00 44 00 00 00 44 00 00 00 00 44 00 00 00 00 00 44 00 00 00 44 44 00 00 00 00 00 44 44 00 00 00 00 44 00 00 00 44 00 00 00 44 00 00 00 44 00 00 00 44 00 00 00 00 00 00 44 00 00 00 00 00 00 44 44 00 44 00 00 00 00 44 00 00 00 00 00 44 00 00 00 00 44 00 00 00 44 00 00 44 00 44 00 00 00 00 00 00 44 44 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 44 00 00 00 00 00 44 00 00 00 00 44 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 44 00 00 00 00 00 44 00 00 00 00 00 00 44 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 44 00 00 00 00 00 00 44 00 00 44 44 00 00 00 44 00 00 00 00 00 00 44 00 00 00 00 00 00 00 44 00 00 00 00 00 00 44 00 00 00 00 00 44 44 00 00 00 00 00 44 00 44 00 00 00 44 00 00 00 44 00 00 00 00 44 00 00 44 00 00 00 44 00 00 00 44 00 00 00 00 00 00 00 00 00 00 44 00 00 44 00 44 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 44 00 00 00 44 00 00 00 44 49 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 44 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 44 44 00 00 00 44 00 00 00 44 00 00 00 44 00 00 00 44 49 00 00 44 00 00 00 44 00 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 00 44 00 00 00 44 44 00 00 00 00 00 00 00 00 00 44 44 00 00 44 44 00 00 00 44 00 00 00 00 44 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 44 00 00 00 44 00 00 00 00 44 00 00 00 44 00 00 00 44 00 00 00 00 00 00 00 00 44 00 00 00 00 44 49 00 44 00 00 00 44 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 44 00 44 49 00 00 00 00 00 44 00 00 44 00 00 44 00 00 00 00 44 00 00 00 44 00 00 44 44 00 00 00 00 00 00 00 00 00 00 44 49 00 00 00 00 00 44 00 00 00 44 44 00 00 00 44 00 00 00 00 00 00 44 00 00 00 44 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 44 00 00 00 00 44 49 00 00 00 00 49 00 00 00 44 00 00 44 00 00 44 00 00 44 00 00 00 00 00 00 00 44 00 00 00 00 00 00 44 44 00 00 00 00 00 00 44 44 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 44 00 00 00 00 00 00 44 00 00 00 44 00 00 00 44 00 00 00 00 44 00 00 00 44 00 00 00 00 44 00 00 00 44 00 00 00 44 00 00 00 44 00 00 44 00 00 44 00 00 00 00 44 00 00 44 00 00 00 44 00 00 00 44 00 00 00 00 00 00 44 00 00 00 00 00 00 44 00 00 00 44 00 00 00 44 00 00 00 00 44 00 00 00 00 00 44 00 00 44 00 00 49 00 00 00 00 00 44 00 00 00 44 00 00 00 44 49 00 00 00 00 00 00 00 44 00 44 00 00 00 00 44 00 00 00 44 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 44 00 00 44 00 00 44 44 00 00 44 00 00 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 44 00 00 00 44 00 00 00 44 00 00 00 00 44 00 00 44 00 00 00 00 44 44 00 00 00 00 00 00 00 00 44 00 00 00 44 00 00 00 44 44 00 00 00 00 44 00 00 00 00 00 44 00 00 00 44 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00
*/
