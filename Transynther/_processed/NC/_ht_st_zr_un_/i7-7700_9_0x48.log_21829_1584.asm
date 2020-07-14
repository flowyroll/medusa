.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x19b37, %rsi
lea addresses_WT_ht+0x1791d, %rdi
clflush (%rsi)
nop
nop
nop
nop
dec %r10
mov $47, %rcx
rep movsl
sub %rbp, %rbp
lea addresses_UC_ht+0x1ac13, %r10
nop
nop
and %rax, %rax
movw $0x6162, (%r10)
nop
nop
nop
and $12784, %rdi
lea addresses_A_ht+0xee13, %rbp
nop
nop
nop
nop
and $20383, %r9
movl $0x61626364, (%rbp)
nop
nop
nop
nop
add %r10, %r10
lea addresses_WC_ht+0x2abb, %r10
nop
nop
nop
nop
nop
dec %rsi
and $0xffffffffffffffc0, %r10
vmovntdqa (%r10), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rdi
nop
nop
nop
nop
nop
cmp $16955, %rbp
lea addresses_D_ht+0x11feb, %rcx
xor %rax, %rax
mov $0x6162636465666768, %r9
movq %r9, %xmm6
movups %xmm6, (%rcx)
nop
nop
nop
add $51922, %r10
lea addresses_D_ht+0x5d93, %rbp
and %rdi, %rdi
mov (%rbp), %cx
nop
nop
xor $20588, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %rcx
push %rdi
push %rdx
push %rsi

// Store
mov $0x613, %rsi
nop
xor $38261, %rdi
movl $0x51525354, (%rsi)
nop
and $4960, %rdi

// Store
lea addresses_US+0xed2f, %rsi
nop
nop
nop
nop
nop
add $33774, %rdx
mov $0x5152535455565758, %r10
movq %r10, %xmm0
movups %xmm0, (%rsi)
nop
nop
dec %r13

// Store
mov $0x513, %r13
nop
nop
sub $20895, %rsi
movb $0x51, (%r13)
nop
nop
nop
nop
nop
add $21490, %rsi

// Store
mov $0x5165af0000000613, %r10
nop
nop
nop
and $62262, %rsi
movl $0x51525354, (%r10)
nop
sub %rsi, %rsi

// Store
lea addresses_D+0xffd3, %rdi
nop
nop
nop
nop
nop
xor $14210, %r13
movw $0x5152, (%rdi)
nop
nop
nop
cmp %rcx, %rcx

// Faulty Load
mov $0x5165af0000000613, %rcx
nop
xor $39698, %rdi
vmovups (%rcx), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %r13
lea oracles, %rdx
and $0xff, %r13
shlq $12, %r13
mov (%rdx,%r13,1), %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 10, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 2, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 5, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 6, 'size': 2, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 8, 'size': 2, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 8, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 3, 'size': 32, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 3, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 6, 'size': 2, 'same': False, 'NT': False}}
{'5d': 94, '3c': 14, '32': 17, '12': 20, '24': 16, 'ee': 16, 'c5': 1, 'd6': 22, '82': 15, '3b': 1, '00': 16027, '3e': 5, 'c7': 23, 'b5': 24, '0c': 1, '22': 20, 'ba': 1, 'f0': 43, '42': 20, '8a': 14, '49': 15, '48': 4962, '4e': 1, '1e': 1, 'be': 23, '5c': 358, 'a7': 21, 'e6': 30, '96': 24}
00 00 00 48 00 00 00 00 00 48 00 48 48 00 00 00 00 00 00 48 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 48 00 00 48 00 00 00 00 48 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 48 48 48 48 00 00 00 00 00 00 00 00 00 00 48 00 00 00 48 00 00 00 00 48 00 48 00 48 48 48 00 00 00 00 00 48 48 48 48 48 00 00 48 00 00 48 00 48 48 48 00 48 48 00 00 00 00 00 00 48 00 00 48 00 00 48 00 00 48 48 00 00 48 00 00 00 00 48 48 48 48 48 48 48 00 00 48 48 00 00 00 00 00 48 48 48 00 48 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 48 00 48 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 48 48 48 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 48 48 00 00 48 48 00 00 00 00 00 00 48 00 00 00 00 00 00 48 00 00 00 00 00 00 00 48 00 00 00 00 48 48 48 00 00 48 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 48 48 00 00 00 00 00 00 00 48 00 48 00 00 00 00 48 00 00 00 48 00 48 00 00 00 00 48 00 00 00 00 00 00 00 48 48 48 48 00 00 00 48 00 48 00 00 48 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 48 00 00 48 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 48 48 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 48 00 00 00 00 00 48 00 00 48 48 48 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 48 00 00 00 48 00 00 00 48 00 00 00 00 48 00 00 48 00 00 48 00 00 00 00 00 00 00 48 00 00 00 00 00 48 00 00 00 00 00 00 00 00 48 00 00 48 00 00 48 48 48 48 48 48 00 48 48 00 00 00 48 00 48 00 00 00 48 00 00 48 48 48 48 00 00 00 48 00 48 00 00 48 48 00 48 00 00 00 00 48 00 00 00 00 48 00 48 48 48 48 00 48 00 00 00 48 48 48 48 48 48 48 00 00 00 00 00 00 5c 5c 00 5c 00 00 5c 00 00 00 00 00 5c 48 00 00 00 48 00 00 00 00 00 00 48 5c 5c 00 00 5c 48 00 48 00 00 5c 5c 00 00 5c 00 5c 00 00 5c 00 5c 00 5c 5c 00 5c 5c 00 00 00 5c 5c 00 00 5c 00 00 5c 5c 48 5c 5c 00 5c 00 00 5c 00 00 48 48 00 00 00 48 48 00 5c 48 00 5c 00 00 00 00 00 00 00 00 5c 00 00 00 48 00 5c 00 00 00 00 00 00 00 00 00 00 00 00 00 5c 48 00 48 00 5c 00 00 48 48 48 48 48 00 5c 00 48 00 48 5c 00 00 00 00 00 5c 5c 00 5c 5c 48 5c 48 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 48 00 48 00 00 00 48 48 00 48 00 00 48 00 00 00 00 00 48 00 00 00 48 00 00 00 48 48 00 00 00 00 00 00 48 00 00 00 00 00 48 00 48 48 00 00 48 00 00 00 00 48 48 48 00 00 00 00 00 00 00 00 00 00 00 00 00 48 48 00 00 00 48 48 48 48 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 48 00 00 00 00 48 00 48 00 00 00 00 00 48 00 48 00 00 00 48 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 48 48 00 00 00 00 00 00 00 48 00 48 48 00 48 00 48 48 00 00 00 00 00 00 00 00 00 00 00 48 48 00 00 00 00 00 48 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
