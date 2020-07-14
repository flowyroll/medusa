.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r14
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x80f0, %r13
nop
nop
add %rbp, %rbp
mov $0x6162636465666768, %r11
movq %r11, %xmm7
movups %xmm7, (%r13)
nop
dec %r10
lea addresses_D_ht+0xa470, %rsi
lea addresses_UC_ht+0x1d770, %rdi
inc %r14
mov $90, %rcx
rep movsl
nop
dec %r14
lea addresses_WT_ht+0xbf30, %rsi
lea addresses_WT_ht+0x150cc, %rdi
and $2218, %rbp
mov $123, %rcx
rep movsq
nop
and $48114, %rcx
lea addresses_normal_ht+0xe588, %r14
clflush (%r14)
nop
nop
nop
nop
nop
sub $24841, %r10
and $0xffffffffffffffc0, %r14
movaps (%r14), %xmm7
vpextrq $1, %xmm7, %rbp
nop
nop
inc %rcx
lea addresses_WT_ht+0x153d0, %rbp
xor $32573, %r11
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
vmovups %ymm2, (%rbp)
cmp %r11, %r11
lea addresses_normal_ht+0xb79a, %rsi
lea addresses_UC_ht+0x1270, %rdi
nop
inc %r10
mov $121, %rcx
rep movsw
nop
nop
nop
cmp %rcx, %rcx
lea addresses_D_ht+0x17a70, %rsi
lea addresses_UC_ht+0x7cd0, %rdi
and %r10, %r10
mov $98, %rcx
rep movsw
nop
inc %rsi
lea addresses_normal_ht+0x1ae70, %rsi
nop
nop
nop
and $11003, %r14
mov (%rsi), %r11w
nop
nop
nop
nop
nop
xor $25050, %r10
lea addresses_normal_ht+0x9a70, %r10
clflush (%r10)
nop
nop
nop
nop
nop
cmp %rsi, %rsi
mov $0x6162636465666768, %rbp
movq %rbp, (%r10)
nop
nop
nop
nop
nop
sub $32607, %r13
lea addresses_D_ht+0x45d0, %r11
nop
nop
nop
and $55475, %rdi
mov $0x6162636465666768, %r14
movq %r14, %xmm6
vmovups %ymm6, (%r11)
nop
nop
xor %r11, %r11
lea addresses_A_ht+0x15160, %r11
clflush (%r11)
nop
nop
nop
nop
and %r10, %r10
mov (%r11), %r14w
nop
nop
nop
nop
cmp %r11, %r11
lea addresses_WC_ht+0x8d70, %rsi
nop
nop
nop
nop
cmp $10192, %r11
mov $0x6162636465666768, %rbp
movq %rbp, %xmm5
and $0xffffffffffffffc0, %rsi
movntdq %xmm5, (%rsi)
xor $56431, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r8
push %r9
push %rax
push %rbx
push %rdx

// Store
mov $0x4ec, %rdx
add $6847, %rax
movl $0x51525354, (%rdx)
nop
nop
sub %r9, %r9

// Load
lea addresses_WC+0xba90, %rdx
nop
nop
nop
nop
xor $53379, %r8
mov (%rdx), %r10
nop
nop
nop
sub %rbx, %rbx

// Store
lea addresses_UC+0x10df0, %r15
nop
nop
nop
add %r9, %r9
mov $0x5152535455565758, %rax
movq %rax, (%r15)
nop
nop
nop
nop
and $42692, %rdx

// Store
lea addresses_WT+0x16d70, %r9
nop
nop
nop
and $15553, %rdx
movw $0x5152, (%r9)
nop
nop
nop
xor %r8, %r8

// Faulty Load
lea addresses_UC+0xb270, %r10
nop
nop
sub $57810, %rdx
vmovaps (%r10), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %r9
lea oracles, %rdx
and $0xff, %r9
shlq $12, %r9
mov (%rdx,%r9,1), %r9
pop %rdx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_P', 'AVXalign': False, 'size': 4}}
{'src': {'NT': True, 'same': False, 'congruent': 5, 'type': 'addresses_WC', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_UC', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_WT', 'AVXalign': False, 'size': 2}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': True, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16}}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WT_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_normal_ht', 'AVXalign': True, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32}}
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_normal_ht', 'AVXalign': True, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32}}
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 8, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16}}
{'44': 8001, '46': 13824, '49': 1, '25': 1, '00': 1, '1c': 1}
46 46 46 46 44 44 44 44 44 44 46 46 46 46 46 46 46 46 46 46 46 46 46 44 44 44 44 44 44 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 44 44 44 44 44 44 44 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 44 44 44 44 44 44 44 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 44 44 44 44 44 46 46 46 46 46 46 46 46 46 46 46 46 46 44 44 44 44 44 44 44 44 44 44 46 46 46 46 46 46 46 46 46 44 44 44 44 44 44 44 44 44 44 44 44 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 44 44 44 44 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 44 44 44 44 44 44 46 46 46 46 46 46 46 46 44 44 44 44 44 44 44 44 44 44 46 46 46 46 46 46 46 46 46 46 46 46 44 44 44 44 44 44 44 44 44 44 44 46 46 46 46 46 46 46 46 46 46 46 46 44 44 44 44 44 46 46 46 46 46 46 46 46 46 46 46 46 46 44 44 44 44 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 44 44 44 44 44 44 44 46 46 46 46 46 46 46 46 46 46 44 44 44 44 44 44 44 46 46 46 46 46 46 46 46 44 44 44 44 44 44 44 44 44 46 46 46 46 46 46 46 46 46 46 44 44 44 44 44 46 46 46 46 46 46 46 46 46 46 44 44 44 44 44 46 46 46 46 46 46 46 46 46 46 46 44 44 44 44 44 44 46 46 46 46 46 46 46 46 46 46 46 46 46 44 44 44 44 44 44 46 46 46 46 46 46 46 46 46 46 46 46 44 44 44 44 44 44 44 44 44 44 44 46 46 46 46 46 46 46 46 46 46 46 46 44 44 44 44 44 44 44 44 46 46 46 46 46 46 46 46 46 46 46 46 44 44 44 44 44 44 44 44 44 44 44 44 46 46 46 46 46 46 46 46 46 46 44 44 44 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 44 44 44 44 44 44 46 46 46 46 46 46 46 46 44 44 44 44 44 44 44 44 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 44 44 44 44 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 44 44 44 44 44 46 46 46 46 46 46 46 46 46 46 46 46 44 44 44 44 44 44 44 44 44 44 46 46 46 46 46 46 46 46 46 46 44 44 44 44 44 44 44 44 44 44 44 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 44 44 44 44 44 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 44 44 44 44 44 44 46 46 46 46 46 46 46 46 46 46 44 44 44 44 44 46 46 46 46 46 46 46 46 46 46 46 44 44 44 44 44 44 44 44 44 44 46 46 46 46 46 46 46 46 46 46 46 44 44 44 44 44 44 44 44 46 46 46 46 46 46 46 46 44 44 44 44 44 46 46 46 46 46 46 46 46 46 46 46 46 46 44 44 44 44 44 44 44 44 44 46 46 46 46 46 46 46 46 46 46 46 44 44 44 44 44 44 44 46 46 46 46 46 46 46 46 46 46 44 44 44 44 44 44 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 44 44 44 44 44 44 44 44 44 46 46 46 46 46 46 46 46 46 44 44 44 44 44 46 46 46 46 46 46 46 46 46 46 46 46 44 44 44 44 44 46 46 46 46 46 46 46 46 44 44 44 44 44 44 44 44 44 44 44 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 44 44 44 44 44 44 46 46 46 46 46 46 46 46 46 46 46 46 44 44 44 44 44 44 46 46 46 46 46 46 46 46 46 46 46 44 44 44 44 44 44 44 44 44 44 46 46 46 46 46 46 46 46 44 44 44 44 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 44 44 44 44 44 44 44 44 46 46 46 46 46 46 46 46 44 44 44 44 44 44 44 44 44 44 46 46 46 46 46 46 46 46 46 46 46 46 46 44 44 44 44 44
*/
