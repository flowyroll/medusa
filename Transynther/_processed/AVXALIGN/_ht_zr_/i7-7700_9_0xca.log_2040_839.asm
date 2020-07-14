.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x1997e, %r13
nop
nop
nop
dec %rbx
movups (%r13), %xmm7
vpextrq $0, %xmm7, %rsi
nop
nop
nop
sub $24565, %r13
lea addresses_normal_ht+0x15b7e, %r8
nop
nop
nop
xor %rsi, %rsi
mov (%r8), %r9w
cmp $63898, %r13
lea addresses_WC_ht+0x1ef7e, %r11
and %rdx, %rdx
mov (%r11), %r13w
nop
nop
nop
and %rdx, %rdx
lea addresses_WT_ht+0x1cf96, %rsi
lea addresses_WC_ht+0xa47e, %rdi
nop
dec %r13
mov $42, %rcx
rep movsq
xor $28592, %r13
lea addresses_UC_ht+0x11d7e, %r8
nop
nop
nop
dec %rcx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
and $0xffffffffffffffc0, %r8
vmovaps %ymm1, (%r8)
nop
nop
nop
nop
nop
add $9918, %r8
lea addresses_D_ht+0xfbd8, %rsi
lea addresses_normal_ht+0xc77e, %rdi
clflush (%rsi)
nop
add $49565, %r9
mov $27, %rcx
rep movsb
nop
nop
xor %r9, %r9
lea addresses_WT_ht+0xe522, %rsi
lea addresses_WC_ht+0x1377e, %rdi
inc %r9
mov $87, %rcx
rep movsw
nop
nop
inc %rbx
lea addresses_WC_ht+0xa07e, %rsi
lea addresses_UC_ht+0x13549, %rdi
nop
nop
nop
nop
inc %rdx
mov $97, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp $63491, %rdi
lea addresses_D_ht+0x7637, %rdx
clflush (%rdx)
and %r11, %r11
mov (%rdx), %r9
nop
nop
nop
nop
nop
add %rbx, %rbx
lea addresses_WC_ht+0x11d7e, %rdi
nop
nop
add $26701, %rsi
movw $0x6162, (%rdi)
nop
nop
nop
cmp $28785, %r13
lea addresses_A_ht+0x68ec, %rsi
lea addresses_WC_ht+0x2f7e, %rdi
nop
nop
nop
nop
and $17989, %r8
mov $43, %rcx
rep movsl
nop
nop
nop
and $47205, %r11
lea addresses_A_ht+0x1d57e, %rsi
lea addresses_D_ht+0x18d7e, %rdi
nop
xor $32900, %r8
mov $57, %rcx
rep movsl
nop
nop
nop
add %rdi, %rdi
lea addresses_D_ht+0x537e, %r13
add $20171, %rbx
movl $0x61626364, (%r13)
nop
inc %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %r8
push %r9
push %rax
push %rdi

// Store
lea addresses_WC+0x795e, %r9
nop
nop
nop
and $27217, %r8
movb $0x51, (%r9)
nop
xor %r15, %r15

// Store
mov $0x7c6, %rax
nop
nop
nop
and %r13, %r13
mov $0x5152535455565758, %r12
movq %r12, %xmm6
vmovups %ymm6, (%rax)
nop
nop
nop
nop
nop
inc %r9

// Store
lea addresses_WC+0x197e, %r15
nop
nop
nop
sub %rdi, %rdi
mov $0x5152535455565758, %r9
movq %r9, %xmm2
movups %xmm2, (%r15)
nop
nop
and $25325, %r12

// Store
lea addresses_US+0x1127e, %r15
nop
nop
nop
cmp $12340, %r13
movl $0x51525354, (%r15)
nop
add %rdi, %rdi

// Store
lea addresses_US+0x15f89, %r8
nop
nop
nop
nop
cmp %rax, %rax
movb $0x51, (%r8)
nop
nop
sub $31448, %r13

// Store
lea addresses_WC+0x181e, %r15
nop
nop
nop
and $49898, %rdi
mov $0x5152535455565758, %r12
movq %r12, (%r15)
nop
cmp %r15, %r15

// Faulty Load
lea addresses_A+0x1e37e, %r8
nop
nop
nop
add $48523, %r12
vmovntdqa (%r8), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %r13
lea oracles, %r15
and $0xff, %r13
shlq $12, %r13
mov (%r15,%r13,1), %r13
pop %rdi
pop %rax
pop %r9
pop %r8
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WC'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_P'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WC'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_US'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_US'}}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': True, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': True, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': True, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_D_ht'}}
{'45': 11, '49': 364, '00': 1665}
00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 49 00 00 00 00 00 00 49 49 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 49 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 49 49 00 00 00 49 00 00 00 00 00 00 00 49 49 49 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 49 49 49 00 00 45 49 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 49 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 49 49 49 49 49 00 00 00 49 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 49 00 00 00 00 49 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 49 49 00 00 00 00 00 00 00 00 00 00 00 00 00 49 49 49 49 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 49 49 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 49 00 00 00 00 00 00 00 00 49 49 00 49 49 49 49 49 00 00 00 00 00 00 49 49 49 49 49 00 00 00 00 00 00 00 00 00 49 49 49 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 49 49 00 00 00 00 00 00 00 00 49 49 49 49 00 00 00 00 00 00 00 00 00 00 00 49 49 49 49 49 49 00 00 00 00 49 00 00 49 00 00 00 00 00 00 00 00 00 00 00 49 49 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 49 00 00 00 00 45 49 49 49 49 49 49 00 00 00 00 00 00 49 49 49 49 49 00 49 49 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 49 00 49 49 49 49 49 49 49 49 00 00 00 49 49 00 00 00 00 00 00 45 49 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 49 00 00 00 00 00 00 00 00 00 49 49 00 00 00 00 00 49 49 49 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 49 49 00 00 00 00 00 49 49 49 00 00 00 00 00 00 49 49 00 00 00 49 49 00 00 00 00 00 00 00 00 49 49 49 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 49 49 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 49 49 00 00 00 00 00 00 00 00 00 49 49 00 00 00 00 00 00 00 49 00 00 00 00 00 00 49 49 49 49 49
*/
