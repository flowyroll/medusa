.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xb201, %rcx
nop
nop
nop
nop
and $30314, %r13
movb (%rcx), %bl
nop
nop
nop
cmp %rbx, %rbx
lea addresses_normal_ht+0x2c37, %r15
nop
nop
nop
nop
nop
and $9656, %rdi
mov $0x6162636465666768, %r14
movq %r14, (%r15)
inc %r15
lea addresses_normal_ht+0x801, %rsi
lea addresses_normal_ht+0xeba1, %rdi
nop
nop
nop
nop
sub %r8, %r8
mov $85, %rcx
rep movsw
nop
nop
add $56664, %rbx
lea addresses_WC_ht+0x12c01, %r15
dec %rcx
movl $0x61626364, (%r15)
nop
nop
dec %r15
lea addresses_UC_ht+0x1201, %r15
nop
nop
nop
sub %rdi, %rdi
movb $0x61, (%r15)
nop
nop
nop
nop
nop
inc %r13
lea addresses_WT_ht+0x18d01, %rsi
lea addresses_normal_ht+0x15a01, %rdi
xor $20954, %r8
mov $126, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp $44158, %rbx
lea addresses_D_ht+0x13f41, %r13
inc %rcx
mov (%r13), %rdi
nop
nop
sub $9106, %r15
lea addresses_WT_ht+0x1dc01, %r13
nop
nop
nop
nop
inc %rbx
movl $0x61626364, (%r13)
nop
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_normal_ht+0xf001, %rsi
lea addresses_D_ht+0xbe01, %rdi
nop
nop
nop
nop
add %r13, %r13
mov $83, %rcx
rep movsw
nop
nop
nop
nop
nop
sub $53371, %rbx
lea addresses_normal_ht+0xf9a3, %rdi
nop
and %r8, %r8
mov $0x6162636465666768, %rsi
movq %rsi, %xmm2
and $0xffffffffffffffc0, %rdi
movntdq %xmm2, (%rdi)
nop
nop
nop
nop
nop
dec %r14
lea addresses_WC_ht+0x15f4f, %r8
xor $30090, %r13
and $0xffffffffffffffc0, %r8
vmovntdqa (%r8), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rsi
nop
dec %rdi
lea addresses_D_ht+0x12001, %r8
nop
xor $49727, %r13
vmovups (%r8), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %r15
nop
and %rbx, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r8
push %rax
push %rbp

// Store
lea addresses_WC+0x1f001, %r13
clflush (%r13)
nop
add $21188, %r8
mov $0x5152535455565758, %r12
movq %r12, %xmm7
movups %xmm7, (%r13)
nop
nop
nop
nop
sub %rbp, %rbp

// Faulty Load
lea addresses_WC+0x1f001, %r8
nop
nop
xor $12221, %rax
mov (%r8), %r12w
lea oracles, %rbp
and $0xff, %r12
shlq $12, %r12
mov (%rbp,%r12,1), %r12
pop %rbp
pop %rax
pop %r8
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_WC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': True, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 8, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': True, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 32, 'NT': True, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'5f': 129, '58': 21700}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
