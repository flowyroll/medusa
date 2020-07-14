.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0xbe1, %rcx
and $4574, %r13
movups (%rcx), %xmm5
vpextrq $0, %xmm5, %r12
nop
nop
nop
nop
and %rdx, %rdx
lea addresses_UC_ht+0x197e1, %rdi
nop
nop
nop
xor $24166, %r8
movw $0x6162, (%rdi)
nop
dec %rdi
lea addresses_WT_ht+0x3051, %rdi
nop
nop
inc %r13
movw $0x6162, (%rdi)
nop
nop
sub %rdi, %rdi
lea addresses_A_ht+0x7f09, %rsi
lea addresses_WT_ht+0x10a61, %rdi
clflush (%rsi)
nop
nop
nop
nop
xor $60320, %r8
mov $11, %rcx
rep movsl
nop
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_normal_ht+0x13be1, %rdi
nop
nop
cmp %r12, %r12
mov (%rdi), %edx
nop
nop
and %r13, %r13
lea addresses_D_ht+0x19ae1, %rsi
lea addresses_WT_ht+0x5061, %rdi
nop
nop
nop
xor %r12, %r12
mov $75, %rcx
rep movsw
nop
nop
nop
cmp %r15, %r15
lea addresses_UC_ht+0x1d3e1, %rdi
add $63172, %r12
mov (%rdi), %cx
nop
nop
lfence
lea addresses_UC_ht+0x92a1, %rsi
nop
nop
nop
nop
xor $14209, %r13
mov (%rsi), %ecx
nop
nop
nop
add $52279, %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %rbp
push %rcx
push %rdi
push %rdx

// Store
mov $0x4e1, %rcx
nop
nop
nop
nop
add %r13, %r13
movb $0x51, (%rcx)
nop
nop
xor $43238, %rcx

// Faulty Load
lea addresses_WC+0x93e1, %rdi
nop
nop
nop
nop
nop
xor %r13, %r13
vmovups (%rdi), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %r12
lea oracles, %rdx
and $0xff, %r12
shlq $12, %r12
mov (%rdx,%r12,1), %r12
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_P'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': True, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'46': 13321, '00': 8508}
46 00 46 00 46 46 46 00 00 46 46 00 46 46 46 46 46 46 00 46 00 46 00 46 46 00 46 00 46 46 00 00 46 46 46 00 00 46 46 46 46 00 46 46 46 00 46 46 00 46 46 46 46 00 00 46 46 46 46 00 00 00 46 00 00 46 46 00 00 46 46 46 46 46 46 46 46 46 00 00 46 00 00 46 46 00 46 00 00 46 46 00 00 46 00 00 46 00 46 46 46 00 00 00 46 00 46 00 46 00 00 46 00 46 46 00 00 46 46 00 46 00 00 46 46 00 46 46 00 00 46 46 00 00 46 46 46 00 00 46 46 46 46 46 46 00 46 00 46 46 00 00 00 00 46 00 46 00 00 00 00 00 00 46 46 46 00 46 46 46 46 46 46 00 00 46 00 46 46 00 00 00 46 46 46 00 46 46 00 46 46 46 00 00 00 46 46 00 00 00 46 46 46 46 46 00 00 00 00 00 46 46 00 46 46 46 46 00 46 00 46 46 46 46 00 46 46 00 46 00 00 46 00 00 00 46 46 00 46 46 00 46 00 46 00 46 46 46 46 46 46 46 00 00 00 46 00 00 00 46 46 46 46 46 00 46 46 00 46 46 46 00 46 00 00 00 00 46 00 46 00 46 00 46 00 46 46 46 00 46 46 46 00 46 00 00 46 46 46 46 46 46 46 46 46 00 46 00 46 00 46 00 46 46 00 46 46 46 46 00 00 46 00 46 00 46 46 00 00 46 00 00 46 46 46 46 00 00 00 46 46 00 46 46 46 00 00 46 46 46 00 46 00 46 00 46 46 46 46 00 46 46 46 00 00 46 46 46 00 46 00 46 00 46 00 00 00 46 46 00 00 46 00 46 46 00 46 46 46 00 46 00 46 46 00 46 46 00 46 00 46 46 00 46 46 00 00 46 00 00 46 00 46 00 46 46 00 00 46 00 46 00 00 46 46 00 00 46 00 46 46 00 00 46 46 46 46 46 46 00 46 46 46 00 46 00 46 46 46 46 46 46 00 46 00 46 00 46 00 46 46 00 46 46 00 00 46 46 46 00 46 46 00 00 46 46 46 46 46 46 00 46 46 46 46 46 00 46 00 00 46 00 46 00 46 00 46 46 46 00 00 00 46 00 46 46 00 46 00 00 00 00 46 46 46 00 00 00 46 46 00 00 00 00 00 00 46 00 00 00 00 00 00 46 00 00 00 46 00 46 00 00 00 46 00 00 46 46 00 46 00 46 46 46 00 00 00 46 46 00 46 00 46 46 46 00 00 46 46 00 46 00 46 46 00 00 00 46 46 00 00 00 46 46 46 00 00 46 00 46 46 46 00 46 46 46 00 46 00 46 00 00 00 46 46 00 46 46 00 46 00 46 46 00 00 46 00 00 46 46 00 00 46 00 46 00 46 46 00 46 46 00 46 46 46 00 00 00 46 46 46 46 46 00 46 46 00 46 00 00 46 46 00 46 00 00 46 46 46 46 46 46 46 46 46 46 46 00 46 00 00 46 00 46 46 46 46 00 46 46 00 00 46 00 46 46 46 46 46 00 46 46 46 46 46 00 46 46 46 46 00 46 46 00 00 46 46 46 00 46 00 00 46 46 00 46 46 00 46 00 46 46 00 00 46 46 46 00 00 00 46 46 46 46 46 00 00 00 46 00 00 46 46 00 46 46 46 46 46 00 46 00 46 46 46 46 00 46 46 00 46 00 46 00 00 46 00 00 46 46 46 46 00 00 46 00 46 00 46 46 00 46 00 46 00 00 46 00 46 00 46 00 46 46 46 46 46 46 46 46 00 46 46 46 00 46 46 46 46 00 00 46 00 00 00 46 00 46 00 46 46 46 46 00 46 00 46 00 46 46 00 46 46 00 46 46 00 46 46 46 46 00 46 00 00 00 00 46 46 46 46 46 00 46 00 46 46 00 46 46 00 00 00 46 46 00 46 46 00 46 00 00 00 46 00 00 46 46 00 00 46 46 46 00 46 00 46 00 46 46 00 46 00 00 00 46 46 46 46 46 46 46 00 46 46 00 46 46 00 46 46 46 46 00 46 46 00 46 00 00 46 00 46 46 46 46 00 00 00 46 46 00 46 00 00 46 00 00 46 46 00 46 46 46 00 00 00 46 00 46 46 46 00 46 00 46 46 46 46 46 46 00 46 00 46 00 00 46 46 46 46 46 00 46 46 00 46 46 00 46 00 46 46 46 00 46 00 46 46 46 00 46 00 00 00 46 00 46 46 00
*/
