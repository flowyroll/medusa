.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0xf67e, %rsi
lea addresses_UC_ht+0xb90d, %rdi
nop
nop
sub $63610, %rbx
mov $57, %rcx
rep movsw
xor $347, %rdx
lea addresses_WT_ht+0x1accd, %rsi
lea addresses_WT_ht+0x1a50d, %rdi
nop
nop
nop
nop
and $39986, %rbp
mov $101, %rcx
rep movsl
nop
nop
and $63914, %rdi
lea addresses_UC_ht+0x1eb0d, %rsi
nop
nop
nop
nop
and %rax, %rax
movb (%rsi), %cl
nop
nop
add $19661, %rdi
lea addresses_UC_ht+0x14bf5, %rbx
nop
inc %rcx
mov (%rbx), %eax
nop
nop
cmp $29961, %rsi
lea addresses_WT_ht+0x128ad, %rdi
nop
cmp $13096, %rsi
mov $0x6162636465666768, %rbx
movq %rbx, %xmm5
vmovups %ymm5, (%rdi)
nop
nop
cmp %rdi, %rdi
lea addresses_WC_ht+0xb50d, %rsi
lea addresses_A_ht+0x18123, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
and %r12, %r12
mov $17, %rcx
rep movsl
nop
nop
add $10549, %r12
lea addresses_A_ht+0x7b0d, %rsi
lea addresses_UC_ht+0x938d, %rdi
nop
dec %rax
mov $100, %rcx
rep movsw
nop
nop
nop
nop
xor $36946, %rbx
lea addresses_WC_ht+0x15bd, %rsi
lea addresses_UC_ht+0x1557d, %rdi
nop
nop
nop
xor $40474, %rax
mov $98, %rcx
rep movsb
nop
nop
nop
nop
inc %rdi
lea addresses_A_ht+0xe30d, %rsi
lea addresses_A_ht+0x860d, %rdi
nop
nop
nop
nop
nop
and $45212, %rbp
mov $44, %rcx
rep movsl
sub %rsi, %rsi
lea addresses_normal_ht+0xfd0d, %rsi
lea addresses_WC_ht+0x195cd, %rdi
nop
sub %rbp, %rbp
mov $96, %rcx
rep movsb
nop
nop
nop
nop
and $4422, %rcx
lea addresses_UC_ht+0x1a50d, %rsi
lea addresses_UC_ht+0x330d, %rdi
clflush (%rdi)
nop
nop
and %rbp, %rbp
mov $89, %rcx
rep movsl
nop
nop
nop
lfence
lea addresses_normal_ht+0x540d, %rsi
lea addresses_normal_ht+0x1dded, %rdi
nop
nop
nop
add $14925, %r12
mov $125, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp $23202, %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %rbp
push %rcx
push %rdx
push %rsi

// Store
mov $0xd0d, %r10
nop
nop
and $43686, %rdx
mov $0x5152535455565758, %rcx
movq %rcx, (%r10)
nop
nop
nop
nop
add %r13, %r13

// Store
lea addresses_A+0xbdd9, %r14
nop
nop
nop
dec %rsi
movb $0x51, (%r14)
xor $28558, %rsi

// Store
lea addresses_normal+0x910d, %r13
nop
nop
nop
inc %r14
movl $0x51525354, (%r13)
nop
nop
nop
nop
cmp %r10, %r10

// Faulty Load
mov $0x321b2c000000050d, %r13
nop
nop
add $35528, %r14
vmovups (%r13), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rcx
lea oracles, %r10
and $0xff, %rcx
shlq $12, %rcx
mov (%r10,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rcx
pop %rbp
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': True, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_P'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 1, 'NT': True, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_normal'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 0, 'same': True, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': True, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': True, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 10, 'same': True, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}}
{'44': 21, '45': 7114, '48': 52, '00': 14639, '49': 3}
00 00 45 00 45 45 45 45 00 45 00 00 00 00 45 00 45 45 45 00 45 00 45 00 00 00 00 45 00 45 00 00 45 00 00 00 00 00 00 45 00 45 00 00 45 00 45 00 00 00 00 00 00 45 00 45 00 45 00 00 45 00 00 00 00 00 00 00 00 45 00 45 00 45 45 45 45 00 45 00 00 00 00 00 45 45 45 45 00 45 00 00 00 00 00 00 00 45 00 45 45 00 45 00 00 00 00 00 00 00 45 00 45 00 00 45 00 00 00 00 00 00 00 45 45 00 00 45 00 00 00 00 00 00 00 45 00 45 45 00 45 00 45 00 00 00 00 00 00 00 00 45 45 45 45 00 00 00 00 00 00 00 45 00 45 45 00 00 45 00 00 00 00 00 00 45 45 45 00 00 45 00 45 00 00 00 00 00 45 00 45 00 45 45 45 45 00 00 00 00 00 00 00 00 45 00 45 45 45 45 00 00 00 00 00 00 45 00 45 00 00 45 00 00 00 00 00 00 45 00 45 45 45 45 00 00 00 00 00 00 45 00 45 00 00 45 00 00 00 00 00 00 00 45 00 45 00 00 45 00 45 00 00 00 00 00 00 45 00 45 45 00 45 00 45 00 00 00 00 00 45 00 45 00 00 45 00 00 00 00 00 00 00 45 00 45 00 45 45 45 45 00 45 00 00 00 00 00 00 45 45 00 00 45 00 00 00 00 00 00 00 00 45 00 45 45 00 00 45 00 00 00 00 00 00 45 00 45 00 45 45 45 45 00 45 00 00 00 00 00 45 00 45 45 45 45 00 45 00 00 00 00 00 45 00 45 00 00 45 00 45 00 00 00 00 45 00 45 45 45 45 00 45 00 00 00 00 00 00 45 00 45 45 45 45 45 00 45 00 00 00 00 00 00 00 00 45 00 45 00 00 45 00 00 00 00 00 00 00 45 00 45 45 00 45 45 00 45 00 00 00 00 00 00 00 45 00 45 00 00 45 00 45 00 00 00 00 00 00 00 45 00 45 45 00 00 45 00 45 00 00 00 00 00 00 00 45 00 45 45 45 45 00 00 00 00 00 00 00 45 00 45 00 00 48 00 45 00 00 00 00 00 00 00 00 45 00 45 45 00 45 00 00 00 00 00 00 00 00 45 45 00 00 45 00 00 00 00 45 00 45 45 00 45 00 45 00 00 00 00 00 00 00 45 00 45 45 45 48 00 45 00 00 00 00 00 00 00 45 00 45 00 00 45 00 00 00 00 00 00 45 00 45 00 45 00 00 00 00 00 00 45 00 45 45 45 45 00 00 00 00 00 00 00 45 00 45 45 48 00 45 00 00 00 00 00 45 45 45 00 45 00 45 00 00 00 00 00 45 00 45 45 00 45 00 45 00 00 00 00 00 00 00 45 00 45 45 45 00 00 45 00 45 00 00 00 00 00 00 45 00 45 00 45 00 00 45 00 45 00 00 00 00 00 00 00 45 00 45 00 00 45 00 00 00 00 00 00 45 00 45 45 45 00 45 00 00 00 00 00 00 00 45 00 45 45 00 45 00 00 00 00 00 00 45 00 00 45 00 45 00 00 00 00 00 45 00 45 00 45 45 00 00 45 00 45 00 00 00 00 00 00 45 00 45 45 45 45 00 00 00 00 00 00 45 00 45 45 45 45 00 00 00 00 00 00 00 45 00 45 45 00 00 45 00 45 00 00 00 00 45 00 45 00 45 45 45 45 00 45 00 00 00 00 00 00 45 00 45 00 45 45 00 00 45 00 00 00 00 00 00 00 45 45 00 45 00 00 00 00 00 00 00 45 00 45 00 00 45 00 00 00 00 00 00 00 45 45 00 00 45 00 45 00 00 00 00 00 00 45 45 00 00 45 00 45 00 00 00 00 00 00 00 45 45 45 00 45 00 00 00 00 00 45 00 45 00 00 45 00 45 00 00 00 00 00 00 00 45 00 45 45 00 00 45 00 00 00 00 00 00 00 45 00 45 00 00 45 00 00 00 00 00 00 00 00 00 45 45 00 45 45 00 45 00 00 00 00 00 00 00 45 45 45 45 00 00 00 00 00 00 45 45 45 00 00 00 00 00 00 00 00 45 45 00 45 00 00 00 00 00 00 00 45 00 45 00 45 48 00 45 00 00 00 00 00 00 00 45 00 45 45 00 00 45 00 00 00 00 00 00 00 00 45 00 45 00 45 45 00 45 00 00 00 00 00 00 00 45 45 00 00 45 00 00 00 00 45 00 45
*/
