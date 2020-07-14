.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x11231, %rsi
lea addresses_UC_ht+0x1ad5, %rdi
nop
nop
cmp $35514, %rax
mov $6, %rcx
rep movsb
nop
nop
nop
xor $42667, %r10
lea addresses_normal_ht+0x14415, %rsi
lea addresses_WT_ht+0x5565, %rdi
nop
nop
nop
nop
cmp $51440, %r11
mov $69, %rcx
rep movsb
nop
nop
nop
nop
and $1606, %r11
lea addresses_UC_ht+0x19815, %rcx
nop
nop
nop
nop
cmp %r11, %r11
and $0xffffffffffffffc0, %rcx
vmovntdqa (%rcx), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %rdi
nop
add $12101, %r11
lea addresses_normal_ht+0xf581, %rax
nop
nop
dec %r9
mov (%rax), %r11w
nop
nop
nop
nop
nop
add %r10, %r10
lea addresses_UC_ht+0x10015, %rax
nop
sub $48553, %rcx
mov (%rax), %r11d
nop
nop
and %rcx, %rcx
lea addresses_D_ht+0x5a15, %rsi
nop
nop
nop
nop
xor $43511, %rcx
movb (%rsi), %r10b
dec %rsi
lea addresses_WC_ht+0xcef5, %rsi
lea addresses_D_ht+0x2215, %rdi
dec %r8
mov $87, %rcx
rep movsl
nop
nop
nop
nop
nop
sub $22160, %r8
lea addresses_UC_ht+0x798d, %r10
nop
nop
nop
nop
nop
and %r8, %r8
movl $0x61626364, (%r10)
nop
nop
nop
nop
nop
add %r11, %r11
lea addresses_WT_ht+0xade7, %rsi
lea addresses_WC_ht+0xc075, %rdi
nop
nop
nop
xor %r10, %r10
mov $122, %rcx
rep movsq
cmp %rcx, %rcx
lea addresses_A_ht+0xf155, %rsi
nop
nop
nop
nop
nop
xor $30983, %r8
movl $0x61626364, (%rsi)
nop
nop
and %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r8
push %rbp
push %rcx
push %rdi
push %rsi

// Load
lea addresses_US+0x6e79, %r12
nop
nop
nop
nop
and $29558, %r8
movb (%r12), %r10b
nop
nop
nop
nop
nop
inc %rbp

// REPMOV
lea addresses_A+0x1ce15, %rsi
lea addresses_normal+0x1815, %rdi
nop
nop
nop
sub %r12, %r12
mov $40, %rcx
rep movsl
nop
nop
nop
sub %r12, %r12

// Load
lea addresses_UC+0xca15, %r12
nop
nop
add $52534, %rdi
mov (%r12), %r10w
nop
nop
nop
nop
add $35799, %r12

// Faulty Load
lea addresses_normal+0x1815, %rsi
clflush (%rsi)
nop
nop
inc %rcx
mov (%rsi), %r10w
lea oracles, %rsi
and $0xff, %r10
shlq $12, %r10
mov (%rsi,%r10,1), %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_normal', 'AVXalign': True, 'size': 16}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_US', 'AVXalign': True, 'size': 1}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_A'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 0, 'type': 'addresses_normal'}}
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_UC', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_normal', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}}
{'src': {'same': True, 'congruent': 10, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}}
{'src': {'NT': True, 'same': False, 'congruent': 11, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'NT': True, 'same': False, 'congruent': 1, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'NT': True, 'same': False, 'congruent': 3, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4}}
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4}}
{'b0': 1}
b0
*/
