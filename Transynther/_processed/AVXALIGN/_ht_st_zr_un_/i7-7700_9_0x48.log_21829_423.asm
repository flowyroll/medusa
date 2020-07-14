.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x58db, %rdx
nop
nop
cmp $54837, %r11
mov (%rdx), %cx
cmp %rdi, %rdi
lea addresses_WT_ht+0x1eb2b, %rsi
lea addresses_A_ht+0x301f, %rdi
nop
nop
nop
nop
add $16516, %r9
mov $65, %rcx
rep movsq
nop
nop
nop
nop
xor %r9, %r9
lea addresses_UC_ht+0xa8db, %rsi
lea addresses_normal_ht+0x75f3, %rdi
clflush (%rdi)
nop
nop
nop
nop
and $21093, %r13
mov $7, %rcx
rep movsb
nop
nop
nop
nop
lfence
lea addresses_UC_ht+0x174db, %r13
nop
dec %r9
movb $0x61, (%r13)
inc %r11
lea addresses_UC_ht+0x170db, %r13
nop
cmp $37324, %r9
vmovups (%r13), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %rdx
nop
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_normal_ht+0xaedb, %rdi
inc %r11
movw $0x6162, (%rdi)
nop
nop
dec %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r8
push %rbp
push %rbx
push %rdi
push %rsi

// Faulty Load
mov $0x8db, %r12
clflush (%r12)
nop
nop
xor %rbp, %rbp
vmovntdqa (%r12), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %rdi
lea oracles, %rbx
and $0xff, %rdi
shlq $12, %rdi
mov (%rbx,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rbx
pop %rbp
pop %r8
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 11, 'size': 2, 'same': True, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 8, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 11, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': True, 'congruent': 8, 'size': 2, 'same': False, 'NT': False}}
{'49': 15176, '47': 3806, 'f2': 1, '34': 1, '00': 2845}
49 49 49 49 49 00 49 49 00 49 00 49 49 47 49 49 49 47 49 49 49 49 47 49 00 49 49 49 49 00 47 47 00 00 49 49 49 49 49 49 49 47 47 47 49 49 00 49 49 00 47 47 49 47 49 49 49 49 47 49 47 49 49 00 00 47 49 49 49 49 00 00 49 49 49 49 47 49 47 49 49 47 49 00 49 49 47 49 49 49 49 49 47 47 49 49 49 49 49 49 49 47 00 49 49 49 00 49 00 49 49 00 49 49 00 49 47 47 49 49 49 49 49 49 49 47 49 49 49 00 47 47 49 49 49 49 47 49 49 49 49 49 49 49 49 49 00 49 47 47 47 47 49 49 49 49 49 49 00 49 47 49 49 00 49 49 49 00 49 49 49 00 49 49 47 49 49 47 49 49 47 49 49 49 49 49 00 47 49 49 49 49 00 47 49 00 49 49 49 47 49 49 47 47 49 00 49 49 00 49 49 00 49 49 49 49 47 49 49 00 00 00 49 49 47 49 49 47 47 49 49 49 00 49 49 49 47 49 00 47 49 49 49 49 49 49 00 49 49 47 47 49 49 49 47 47 49 47 49 00 47 49 49 49 49 49 49 49 49 00 47 49 47 47 47 47 49 49 47 49 00 49 49 00 49 49 49 47 47 49 49 49 49 00 47 00 49 49 49 49 49 00 49 49 49 49 00 49 49 00 49 49 49 49 49 47 47 49 49 49 00 00 49 49 49 47 49 49 49 49 00 49 47 49 49 49 00 47 49 49 49 49 47 47 49 00 49 47 49 49 49 47 49 49 49 00 49 47 49 49 00 49 49 49 47 47 47 47 49 49 47 47 49 49 47 49 47 49 49 47 00 00 49 49 47 49 47 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 47 49 00 47 49 47 49 49 49 49 47 47 49 49 47 49 49 49 49 49 49 00 49 47 47 49 47 49 47 49 49 47 49 49 49 49 49 49 49 47 49 00 49 49 49 47 00 49 49 49 49 49 47 49 49 00 49 47 49 49 49 49 49 00 49 00 49 49 49 49 49 47 49 49 49 49 49 49 49 49 47 49 49 00 49 49 49 47 49 49 49 49 49 49 49 49 00 47 49 47 49 49 49 49 47 00 49 47 47 47 47 47 49 49 49 49 49 49 47 47 49 49 00 49 49 47 49 49 47 49 49 49 49 49 49 49 00 49 49 49 00 49 00 49 49 49 49 49 47 49 49 00 47 47 49 49 49 49 49 00 49 49 49 47 49 00 47 49 47 47 49 49 49 49 49 47 47 47 49 49 49 49 49 49 49 49 49 47 49 49 49 49 00 49 47 49 49 47 49 49 49 49 49 00 49 49 00 47 49 49 49 49 49 47 49 49 47 49 49 49 00 49 00 49 49 49 49 49 49 49 00 00 49 49 49 49 47 49 49 00 00 49 49 49 49 49 47 49 00 49 49 00 00 49 49 49 49 49 00 49 00 49 47 47 49 00 00 49 00 49 47 00 49 49 49 47 49 49 49 49 49 49 49 49 49 00 49 00 49 47 49 49 49 49 00 47 49 00 47 47 49 49 49 00 00 49 00 49 49 49 00 47 49 49 49 00 47 47 47 47 47 00 49 49 49 49 49 49 49 49 49 47 49 49 47 00 49 00 49 49 49 49 49 49 00 47 49 49 49 49 00 49 49 49 49 00 49 49 49 47 47 00 47 47 49 49 49 49 00 49 47 49 49 49 47 49 49 49 49 49 49 49 49 49 47 47 49 47 47 49 49 47 49 00 49 49 49 49 00 49 00 49 49 49 49 49 49 00 49 49 49 47 49 47 49 00 47 49 47 49 47 47 00 47 49 00 49 49 49 49 49 49 49 49 49 49 49 49 00 49 47 49 49 49 49 00 00 49 47 49 49 47 47 49 49 49 00 49 49 49 49 00 49 49 49 00 47 49 49 49 47 49 49 49 49 49 00 49 49 49 47 49 49 49 49 47 49 49 49 47 49 49 49 49 47 49 49 49 49 49 49 49 49 49 47 49 49 49 49 49 49 00 00 47 49 49 49 49 49 47 49 47 49 00 49 49 49 49 47 49 49 49 49 49 00 49 49 49 49 49 47 47 49 49 47 49 49 49 49 49 49 49 49 49 49 49 49 47 49 00 49 47 49 49 47 49 49 47 49 49 49 49 49 49 00 49 49 47 47 49 49 49 49 47 49 00 00 49 49 00 00 00 49 49 00 49 49
*/
