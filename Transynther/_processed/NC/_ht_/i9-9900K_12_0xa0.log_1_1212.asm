.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0xba1b, %r11
nop
nop
nop
nop
xor $56747, %r12
vmovups (%r11), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %r9
nop
nop
and $3595, %rdx
lea addresses_normal_ht+0x1618f, %r10
nop
nop
nop
nop
nop
and $31594, %r15
mov (%r10), %r8d
nop
nop
cmp $13236, %r8
lea addresses_WT_ht+0xdbbf, %r8
clflush (%r8)
nop
nop
nop
nop
inc %r9
movb $0x61, (%r8)
nop
nop
nop
nop
cmp %r12, %r12
lea addresses_WT_ht+0xcdbf, %rdx
nop
nop
nop
nop
nop
dec %r9
movb $0x61, (%rdx)
nop
nop
xor %rdx, %rdx
lea addresses_D_ht+0x11bf, %rsi
lea addresses_D_ht+0x7187, %rdi
clflush (%rdi)
nop
inc %r11
mov $79, %rcx
rep movsb
xor $28208, %r11
lea addresses_D_ht+0x1757f, %rsi
lea addresses_UC_ht+0x95bf, %rdi
clflush (%rdi)
cmp $31086, %r12
mov $30, %rcx
rep movsq
nop
lfence
lea addresses_A_ht+0xfdbf, %rsi
lea addresses_UC_ht+0x189bf, %rdi
nop
nop
cmp $59902, %r12
mov $69, %rcx
rep movsq
nop
nop
nop
lfence
lea addresses_WT_ht+0x91bf, %rsi
lea addresses_WT_ht+0xb9bf, %rdi
nop
nop
nop
add %r15, %r15
mov $97, %rcx
rep movsl
nop
nop
nop
nop
nop
xor %r11, %r11
lea addresses_WC_ht+0x16a3f, %r11
clflush (%r11)
nop
nop
nop
nop
nop
xor %rdx, %rdx
mov (%r11), %r12
nop
xor $62628, %r10
lea addresses_WT_ht+0x2fff, %rsi
lea addresses_A_ht+0x1d53f, %rdi
nop
add $53308, %r15
mov $13, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp %r10, %r10
lea addresses_A_ht+0xffbf, %rsi
lea addresses_A_ht+0x175bf, %rdi
nop
nop
nop
nop
nop
cmp $7296, %r12
mov $51, %rcx
rep movsw
nop
and %r15, %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %rax
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_D+0x4733, %rsi
lea addresses_WC+0x1a3bf, %rdi
nop
nop
nop
nop
nop
sub $33492, %rax
mov $120, %rcx
rep movsq
nop
nop
nop
nop
nop
sub %r13, %r13

// Store
lea addresses_US+0xacbf, %rax
xor $63281, %r10
movl $0x51525354, (%rax)
nop
nop
sub %rcx, %rcx

// Store
lea addresses_PSE+0x15fbf, %rdi
nop
nop
nop
mfence
mov $0x5152535455565758, %rsi
movq %rsi, (%rdi)
nop
nop
nop
nop
xor %r10, %r10

// REPMOV
lea addresses_normal+0x19ea7, %rsi
lea addresses_UC+0x145bf, %rdi
clflush (%rsi)
nop
nop
nop
nop
add %r11, %r11
mov $105, %rcx
rep movsl
nop
nop
and %rsi, %rsi

// Store
lea addresses_WT+0x186c9, %r11
nop
nop
nop
nop
nop
sub $3019, %r13
movb $0x51, (%r11)

// Exception!!!
xor %r13, %r13
div %r13
nop
nop
nop
nop
dec %rdi

// Load
mov $0x1466ff000000067f, %rsi
sub $7901, %rax
mov (%rsi), %di
nop
nop
nop
xor %r13, %r13

// Store
lea addresses_US+0x2c53, %rcx
nop
nop
nop
sub $52065, %r11
mov $0x5152535455565758, %rax
movq %rax, %xmm7
vmovups %ymm7, (%rcx)
nop
nop
nop
nop
and $48661, %rax

// REPMOV
mov $0x78562e0000000dbf, %rsi
lea addresses_WC+0x33bf, %rdi
clflush (%rsi)
nop
add $42199, %r11
mov $65, %rcx
rep movsq

// Exception!!!
nop
nop
nop
nop
nop
xor %rcx, %rcx
div %rcx
sub $37543, %r14

// REPMOV
mov $0x78562e0000000dbf, %rsi
lea addresses_UC+0xbdbf, %rdi
nop
nop
nop
nop
sub %rax, %rax
mov $79, %rcx
rep movsl
nop
nop
nop
dec %rax

// Store
mov $0x37856e0000000d0f, %rax
nop
nop
nop
nop
nop
and $37338, %rdi
movl $0x51525354, (%rax)
nop
nop
nop
nop
inc %rax

// Store
lea addresses_A+0xf8bf, %r11
dec %r13
mov $0x5152535455565758, %r10
movq %r10, %xmm6
vmovups %ymm6, (%r11)

// Exception!!!
nop
nop
mov (0), %rsi
nop
nop
nop
nop
add $53140, %r10

// Store
mov $0x74a89000000004bf, %rcx
nop
nop
nop
nop
nop
cmp $28071, %rsi
movb $0x51, (%rcx)
nop
nop
cmp $51711, %rax

// REPMOV
lea addresses_WT+0x1c65f, %rsi
lea addresses_normal+0x33bf, %rdi
nop
nop
xor $56154, %r14
mov $109, %rcx
rep movsw
xor %r11, %r11

// Faulty Load
mov $0x78562e0000000dbf, %r13
nop
nop
nop
xor $44047, %r10
mov (%r13), %rcx
lea oracles, %r11
and $0xff, %rcx
shlq $12, %rcx
mov (%r11,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_D'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WC'}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 8, 'type': 'addresses_US', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 8}}
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_normal'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_UC'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 1}}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_NC', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_US', 'AVXalign': False, 'size': 32}}
{'src': {'same': True, 'congruent': 0, 'type': 'addresses_NC'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WC'}}
{'src': {'same': True, 'congruent': 0, 'type': 'addresses_NC'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_UC'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_NC', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_A', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_NC', 'AVXalign': False, 'size': 1}}
{'src': {'same': True, 'congruent': 5, 'type': 'addresses_WT'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_normal'}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1}}
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}}
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}}
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}}
{'src': {'same': True, 'congruent': 10, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}}
{'src': {'same': True, 'congruent': 5, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}}
{'49': 1}
49
*/
