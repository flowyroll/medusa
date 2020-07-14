.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1447e, %rbp
nop
inc %r11
movups (%rbp), %xmm4
vpextrq $0, %xmm4, %rbx
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_A_ht+0x2d8e, %r9
nop
nop
nop
nop
cmp $37237, %r15
mov $0x6162636465666768, %r11
movq %r11, (%r9)
nop
nop
nop
nop
and $57880, %r15
lea addresses_D_ht+0x43e, %rsi
lea addresses_UC_ht+0x9f7e, %rdi
clflush (%rsi)
dec %rbx
mov $58, %rcx
rep movsb
nop
nop
nop
and %rbp, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %rax
push %rbx
push %rcx
push %rsi

// Store
lea addresses_UC+0x76be, %rcx
nop
nop
nop
xor $16710, %r14
movw $0x5152, (%rcx)
nop
nop
sub %rcx, %rcx

// Store
lea addresses_D+0x9d7e, %rsi
nop
nop
nop
nop
nop
dec %r15
movb $0x51, (%rsi)
nop
and $43647, %r13

// Store
mov $0xe7e, %rax
nop
nop
nop
xor $29500, %rcx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm4
vmovntdq %ymm4, (%rax)
nop
xor %rax, %rax

// Store
lea addresses_RW+0x179de, %r15
and %r13, %r13
mov $0x5152535455565758, %rsi
movq %rsi, (%r15)
nop
nop
and %rcx, %rcx

// Store
lea addresses_UC+0x10fe, %rbx
nop
dec %r13
movb $0x51, (%rbx)
nop
nop
cmp $47620, %r15

// Faulty Load
lea addresses_D+0x1a47e, %rsi
nop
nop
nop
inc %rax
mov (%rsi), %rcx
lea oracles, %rbx
and $0xff, %rcx
shlq $12, %rcx
mov (%rbx,%rcx,1), %rcx
pop %rsi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_D', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 6, 'type': 'addresses_UC', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_D', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 7, 'type': 'addresses_P', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_RW', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_UC', 'AVXalign': False, 'size': 1}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_D', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8}}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}}
{'36': 10}
36 36 36 36 36 36 36 36 36 36
*/
