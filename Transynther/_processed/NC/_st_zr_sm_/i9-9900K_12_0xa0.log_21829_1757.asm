.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1b2b3, %rsi
lea addresses_UC_ht+0x1d633, %rdi
nop
nop
inc %r13
mov $55, %rcx
rep movsq
nop
nop
nop
xor $39105, %r14
lea addresses_A_ht+0xd544, %rsi
lea addresses_UC_ht+0x1c7ab, %rdi
clflush (%rdi)
sub %rbx, %rbx
mov $34, %rcx
rep movsb
nop
nop
nop
add %rbx, %rbx
lea addresses_A_ht+0x13d82, %rdi
nop
xor %rax, %rax
movb $0x61, (%rdi)
nop
nop
nop
nop
cmp $21378, %rbx
lea addresses_UC_ht+0x172e3, %rdi
nop
nop
nop
nop
and %r13, %r13
mov $0x6162636465666768, %rbx
movq %rbx, %xmm3
movups %xmm3, (%rdi)
nop
nop
add $57034, %rcx
lea addresses_UC_ht+0xc9b3, %rsi
lea addresses_normal_ht+0xcd3, %rdi
nop
sub %r15, %r15
mov $82, %rcx
rep movsq
nop
nop
nop
sub $17258, %r14
lea addresses_WT_ht+0xcab3, %rsi
lea addresses_normal_ht+0xa433, %rdi
nop
xor $1306, %r13
mov $45, %rcx
rep movsw
nop
nop
sub %rcx, %rcx
lea addresses_D_ht+0x4ef3, %rcx
nop
cmp %r15, %r15
vmovups (%rcx), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rdi
xor $54481, %rcx
lea addresses_WT_ht+0x21b3, %r14
nop
nop
nop
nop
nop
dec %r13
movw $0x6162, (%r14)
nop
inc %r15
lea addresses_WC_ht+0xbbb3, %rsi
lea addresses_normal_ht+0x10ab3, %rdi
clflush (%rdi)
nop
nop
nop
add $19806, %r13
mov $78, %rcx
rep movsq
sub %r15, %r15
lea addresses_WC_ht+0x15f97, %rcx
nop
nop
nop
nop
nop
inc %rax
movb (%rcx), %r14b
nop
add $56561, %rdi
lea addresses_D_ht+0x139b3, %rdi
nop
nop
nop
nop
nop
sub %rsi, %rsi
movb $0x61, (%rdi)
nop
xor %rax, %rax
lea addresses_A_ht+0x5273, %rsi
lea addresses_WT_ht+0x1cdb3, %rdi
nop
nop
nop
nop
nop
add %r14, %r14
mov $10, %rcx
rep movsb
nop
nop
nop
nop
nop
add $2610, %rcx
lea addresses_A_ht+0x8573, %rax
clflush (%rax)
nop
nop
nop
nop
nop
add %rbx, %rbx
and $0xffffffffffffffc0, %rax
movaps (%rax), %xmm7
vpextrq $0, %xmm7, %r14
nop
nop
nop
nop
xor %r13, %r13
lea addresses_WC_ht+0x1c955, %rsi
lea addresses_WC_ht+0x16c33, %rdi
clflush (%rsi)
nop
nop
and %r14, %r14
mov $74, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp $17701, %rax
lea addresses_D_ht+0x1953, %r14
nop
nop
nop
nop
nop
inc %rsi
mov (%r14), %edi
nop
nop
nop
nop
nop
xor $32819, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %r8
push %rbp
push %rbx
push %rsi

// Store
lea addresses_RW+0x1efb3, %r12
clflush (%r12)
cmp $44011, %rbp
movl $0x51525354, (%r12)
nop
nop
nop
nop
nop
sub $62754, %r15

// Store
mov $0x4491d800000001b3, %r10
sub %rbx, %rbx
movl $0x51525354, (%r10)
nop
nop
dec %rbp

// Faulty Load
mov $0x4491d800000001b3, %r15
nop
nop
and %r8, %r8
mov (%r15), %r10
lea oracles, %r15
and $0xff, %r10
shlq $12, %r10
mov (%r15,%r10,1), %r10
pop %rsi
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_RW', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 4}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}}
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16}}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_normal_ht'}}
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_normal_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 7, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2}}
{'src': {'same': True, 'congruent': 8, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_normal_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1}}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_A_ht', 'AVXalign': True, 'size': 16}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'54': 1264, '00': 20565}
00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 00 54 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 00 00 00 00 00 00 00 54 00 00 00 54 00 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 00 00 00 00 00 00 54 00 00 00 54 00 54 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 54 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 54 54 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 00 54 00 00 00 00 00 00 00 54 00 00 00 00 00 00 00 00 00 00 54 54 00 54 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 00 54 00 00 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 54 00 00 00 00 00 00 00 00 54 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 54 54 00 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 54 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 00 00 00 00 00 00 54 00 00 00 00 00 00 00 54 00 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 00 54 00 00 00 00 00 00 00 00 54
*/
