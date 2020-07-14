.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xd72e, %r9
nop
nop
nop
inc %r13
movb (%r9), %r8b
nop
nop
sub $49812, %r8
lea addresses_WT_ht+0xa3ae, %r12
nop
nop
inc %rdi
movl $0x61626364, (%r12)
nop
nop
xor $30039, %rcx
lea addresses_UC_ht+0x1412e, %rsi
lea addresses_WC_ht+0x926a, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
dec %rbp
mov $47, %rcx
rep movsq
nop
cmp $39855, %rbp
lea addresses_D_ht+0xb9ee, %rbp
nop
nop
nop
add $65499, %r8
mov $0x6162636465666768, %r12
movq %r12, %xmm2
and $0xffffffffffffffc0, %rbp
movaps %xmm2, (%rbp)
nop
cmp $19513, %rcx
lea addresses_WT_ht+0x1c5ce, %rsi
clflush (%rsi)
nop
nop
nop
nop
nop
add %r9, %r9
mov (%rsi), %r12
nop
sub %r8, %r8
lea addresses_A_ht+0xbb2e, %r12
nop
nop
nop
nop
add %r8, %r8
movw $0x6162, (%r12)
nop
nop
nop
nop
sub $43533, %rsi
lea addresses_normal_ht+0xd72e, %rsi
lea addresses_WT_ht+0x13b46, %rdi
nop
nop
nop
nop
nop
add $21211, %r9
mov $113, %rcx
rep movsw
xor $34574, %rdi
lea addresses_A_ht+0xe78, %rbp
nop
nop
nop
dec %r13
movl $0x61626364, (%rbp)
nop
nop
nop
nop
add $30853, %rbp
lea addresses_UC_ht+0x1752e, %r9
nop
and %r13, %r13
mov (%r9), %bp
nop
nop
nop
nop
nop
and $17083, %r12
lea addresses_WT_ht+0xd3ae, %r13
clflush (%r13)
add %r9, %r9
mov (%r13), %r12
nop
nop
nop
add %r12, %r12
lea addresses_WT_ht+0xc8be, %rsi
lea addresses_WT_ht+0x16f3c, %rdi
dec %rbp
mov $88, %rcx
rep movsw
nop
add $15492, %r9
lea addresses_D_ht+0xe70e, %rbp
nop
nop
nop
nop
nop
add %r9, %r9
movl $0x61626364, (%rbp)
nop
add $40050, %r9
lea addresses_A_ht+0x19b2e, %r12
nop
nop
nop
add %rsi, %rsi
vmovups (%r12), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %rcx
nop
nop
add %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %r8
push %r9
push %rax
push %rdi

// Store
mov $0x44186a0000000d26, %r9
nop
nop
nop
dec %rdi
movw $0x5152, (%r9)
cmp %rdi, %rdi

// Faulty Load
lea addresses_D+0x17b2e, %r15
nop
nop
nop
nop
inc %r11
movb (%r15), %r8b
lea oracles, %rax
and $0xff, %r8
shlq $12, %r8
mov (%rax,%r8,1), %r8
pop %rdi
pop %rax
pop %r9
pop %r8
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_D', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_NC', 'size': 2, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_D', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_D_ht', 'size': 16, 'AVXalign': True}}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False}}
{'src': {'same': True, 'congruent': 8, 'NT': True, 'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'36': 403}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
