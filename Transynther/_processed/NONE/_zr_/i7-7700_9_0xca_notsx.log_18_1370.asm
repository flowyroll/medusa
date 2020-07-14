.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %r8
push %rax
push %rbp
push %rcx
push %rdi
lea addresses_D_ht+0x1bc0b, %rbp
nop
nop
nop
nop
nop
cmp %rcx, %rcx
mov (%rbp), %rax
nop
inc %rcx
lea addresses_normal_ht+0xb04b, %r8
clflush (%r8)
nop
nop
nop
cmp %r15, %r15
mov $0x6162636465666768, %r14
movq %r14, (%r8)
nop
xor $3089, %rax
lea addresses_D_ht+0x1c7db, %rbp
nop
nop
nop
nop
and %rdi, %rdi
movw $0x6162, (%rbp)
inc %r15
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r9
push %rbx
push %rcx
push %rsi

// Store
lea addresses_D+0x1682b, %rsi
nop
nop
nop
nop
cmp %r11, %r11
movb $0x51, (%rsi)
sub %rcx, %rcx

// Store
mov $0x38107200000003db, %rcx
nop
nop
inc %rbx
movw $0x5152, (%rcx)
nop
dec %r11

// Store
lea addresses_normal+0x14e9f, %r11
nop
nop
nop
cmp $7485, %rbx
movb $0x51, (%r11)
nop
nop
nop
nop
nop
and $12829, %rcx

// Faulty Load
lea addresses_A+0x1bbdb, %rcx
nop
nop
nop
nop
nop
sub $7748, %r12
mov (%rcx), %si
lea oracles, %r11
and $0xff, %rsi
shlq $12, %rsi
mov (%r11,%rsi,1), %rsi
pop %rsi
pop %rcx
pop %rbx
pop %r9
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 10, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'00': 18}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
