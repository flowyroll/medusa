.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r8
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1176c, %rsi
lea addresses_normal_ht+0x4770, %rdi
cmp %rbx, %rbx
mov $124, %rcx
rep movsl
nop
nop
xor $19428, %r8
lea addresses_WT_ht+0x96c, %rsi
lea addresses_normal_ht+0x9d6c, %rdi
clflush (%rsi)
nop
nop
nop
nop
sub %r15, %r15
mov $81, %rcx
rep movsq
nop
nop
nop
nop
nop
and $11556, %rdi
lea addresses_D_ht+0xab2c, %r8
nop
nop
nop
nop
nop
add $2568, %r9
mov $0x6162636465666768, %rdi
movq %rdi, (%r8)
nop
nop
nop
nop
inc %r8
lea addresses_D_ht+0x1dbec, %rsi
lea addresses_D_ht+0x1e6ab, %rdi
nop
nop
nop
and %rax, %rax
mov $110, %rcx
rep movsb
nop
inc %r8
lea addresses_WT_ht+0x89cf, %rsi
lea addresses_normal_ht+0xc016, %rdi
clflush (%rsi)
nop
nop
nop
sub $60729, %rax
mov $78, %rcx
rep movsw
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_UC_ht+0x26c, %rdi
nop
nop
nop
sub %rbx, %rbx
mov (%rdi), %r15w
nop
nop
nop
nop
and %r8, %r8
lea addresses_WC_ht+0xf0ec, %rax
clflush (%rax)
nop
nop
nop
nop
nop
cmp $15471, %r15
vmovups (%rax), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %rsi
nop
add $4245, %r8
lea addresses_WT_ht+0x16850, %rsi
nop
nop
nop
cmp $4232, %rdi
mov $0x6162636465666768, %rbx
movq %rbx, %xmm3
movups %xmm3, (%rsi)
nop
nop
inc %rcx
lea addresses_A_ht+0xc46c, %rsi
lea addresses_WC_ht+0x4d6c, %rdi
nop
nop
nop
nop
inc %r8
mov $83, %rcx
rep movsq
cmp $61507, %rbx
lea addresses_A_ht+0xcbec, %r15
nop
nop
nop
nop
nop
xor %rax, %rax
mov $0x6162636465666768, %rdi
movq %rdi, %xmm3
and $0xffffffffffffffc0, %r15
vmovntdq %ymm3, (%r15)
nop
xor %r15, %r15
lea addresses_normal_ht+0x139a8, %r15
nop
xor %rcx, %rcx
movw $0x6162, (%r15)
nop
nop
nop
and $55529, %r8
lea addresses_A_ht+0x2a18, %rdi
nop
nop
nop
nop
nop
xor %r8, %r8
mov (%rdi), %r15w
nop
nop
nop
nop
inc %rsi
lea addresses_normal_ht+0x816c, %rsi
lea addresses_UC_ht+0x516c, %rdi
nop
nop
nop
nop
sub $37138, %rbx
mov $94, %rcx
rep movsb
nop
nop
nop
sub %r8, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r9
push %rbp
push %rbx
push %rsi

// Store
mov $0x74c, %r12
xor $53471, %rsi
mov $0x5152535455565758, %r11
movq %r11, %xmm1
movups %xmm1, (%r12)
nop
nop
nop
sub $46425, %r9

// Faulty Load
lea addresses_UC+0x316c, %r9
sub $47889, %r14
vmovups (%r9), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %r11
lea oracles, %rbx
and $0xff, %r11
shlq $12, %r11
mov (%rbx,%r11,1), %r11
pop %rsi
pop %rbx
pop %rbp
pop %r9
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_P', 'AVXalign': False, 'size': 16}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 0, 'type': 'addresses_normal_ht'}}
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8}}
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}}
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_normal_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16}}
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 6, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 2, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2}}
{'src': {'NT': False, 'same': True, 'congruent': 2, 'type': 'addresses_A_ht', 'AVXalign': True, 'size': 2}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}}
{'46': 5, '49': 2527, '00': 1, '48': 82, '45': 19212, 'ef': 1, 'f0': 1}
45 45 49 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 48 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 48 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 49 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 45 45 49 49 45 45 45 45 45 45 49 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 49 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 45 45 49 45 45 45 45 45 45 49 45 45 45 45 45 45 45 49 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 45 45 49 49 45 45 45 45 45 49 48 45 45 45 45 45 45 45 45 45 49 45 45 45 49 49 45 45 45 49 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 49 45 45 45 45 45 45 45 45 45 45 49 45 45 45 49 45 48 45 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 49 45 48 45 45 45 45 49 45 45 45 45 45 45 49 45 45 45 45 45 45 49 45 45 45 45 45 45 45 49 49 45 45 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 49 49 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 49 45 45 45 45 45 45 49 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 49 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 49 45 45 45 45 45 45 45 49 49 45 45 45 45 45 45 45 45 45 49 49 49 45 45 45 45 45 45 49 45 45 45 45 45 45 49 45 45 45 45 45 45 49 45 49 49 45 45 45 45 45 45 49 45 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 49 45 49 45 45 45 45 45 49 45 45 45 45 45 45 45 49 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 45 45 45 45 49 45 45 45 45 45 45 49 45 45 45 45 45 49 45 45 45 45 45 45 45 45 f0 45 45 45 45 45 45 45 49 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 49 45 45 45 49 45 45 45 45 45 45 49 45 45 45 45 49 45 45 45 45 49 45 48 45 45 45 45 49 45 45 45 45 45 45 45 45 49 49 45 45 45 45 45 49 45 45 45 45 45 45 45 45 49 45 49 45 45 45 45 45 45 45 45 45 48 45 45 45 45 45 49 49 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 49 49 45 45 45 45 49 45 45 45 45 49 45 45 45 45 45 45 45 45 49 49 45 45 45 45 49 45 45 45 45 45 45 45 45 49 49 45 48 45 45 45 45 45 45 45 45 49 49 45 45 45 45 45 45 49 45 45 45 45 45 45 49 45 45 45 45 45 45 49 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 49 49 45 45 45 49 45 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 49 49 45 48 45 45 45 45 49 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 49 49 45 45 45 45 45 49 49 45 45 45 45 45 49 45 45 45 45 45 45 49 45 45 45 45 45
*/
