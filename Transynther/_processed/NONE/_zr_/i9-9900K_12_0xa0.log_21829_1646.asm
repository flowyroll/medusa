.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1949b, %r10
nop
nop
nop
nop
nop
dec %r14
mov (%r10), %ebx
nop
nop
nop
nop
dec %rbx
lea addresses_WT_ht+0x158db, %rsi
lea addresses_normal_ht+0xf8db, %rdi
nop
nop
nop
nop
nop
cmp $3710, %r10
mov $119, %rcx
rep movsq
nop
sub %rcx, %rcx
lea addresses_UC_ht+0x3aeb, %rcx
nop
nop
and $2857, %r13
movb (%rcx), %r10b
nop
nop
nop
nop
dec %r10
lea addresses_UC_ht+0x16345, %rsi
lea addresses_normal_ht+0x1319b, %rdi
sub $59033, %r14
mov $67, %rcx
rep movsw
nop
nop
nop
cmp %rsi, %rsi
lea addresses_WC_ht+0x1a8db, %r13
nop
nop
nop
nop
cmp $49137, %rdi
mov (%r13), %rsi
nop
nop
nop
nop
nop
lfence
lea addresses_normal_ht+0x164c7, %r10
nop
nop
nop
and %rdi, %rdi
mov (%r10), %cx
nop
nop
nop
nop
nop
inc %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %rax
push %rbp
push %rbx
push %rdi
push %rdx

// Store
mov $0xe669c0000000adb, %rax
nop
add $1987, %rdx
mov $0x5152535455565758, %r14
movq %r14, (%rax)
inc %rbx

// Store
lea addresses_D+0xae14, %r11
nop
nop
and %rbp, %rbp
movl $0x51525354, (%r11)
nop
nop
nop
cmp $52835, %rbp

// Faulty Load
lea addresses_WT+0xf0db, %rbx
and %rdi, %rdi
mov (%rbx), %r11
lea oracles, %rbx
and $0xff, %r11
shlq $12, %r11
mov (%rbx,%r11,1), %r11
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %rax
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_NC', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_D', 'AVXalign': False, 'size': 4}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 11, 'type': 'addresses_normal_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
