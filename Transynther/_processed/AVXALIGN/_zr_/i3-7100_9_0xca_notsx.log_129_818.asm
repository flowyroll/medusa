.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r8
push %r9
push %rbx
push %rdx
lea addresses_A_ht+0xf751, %r8
nop
nop
sub %r9, %r9
mov (%r8), %r11w
nop
nop
nop
nop
sub %rbx, %rbx
lea addresses_WT_ht+0x144f9, %r14
nop
nop
nop
nop
lfence
mov (%r14), %r13
nop
sub $41064, %rbx
lea addresses_WT_ht+0xd461, %r8
nop
sub $54064, %r14
mov $0x6162636465666768, %r9
movq %r9, %xmm2
and $0xffffffffffffffc0, %r8
vmovaps %ymm2, (%r8)
nop
nop
nop
nop
nop
dec %r13
lea addresses_WC_ht+0x132a1, %rdx
nop
nop
nop
nop
xor %r14, %r14
mov (%rdx), %r8w
nop
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_A_ht+0x97a1, %r8
nop
nop
nop
xor $28135, %r11
movw $0x6162, (%r8)
nop
and %r14, %r14
pop %rdx
pop %rbx
pop %r9
pop %r8
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %rbx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_PSE+0x11a8d, %r11
nop
nop
nop
nop
nop
dec %rsi
mov (%r11), %r15d
xor $1819, %rdx

// Store
lea addresses_WC+0x892d, %rsi
nop
nop
nop
nop
sub $55231, %rbx
mov $0x5152535455565758, %r11
movq %r11, (%rsi)
nop
and %rsi, %rsi

// Store
lea addresses_WT+0x1eb9f, %rdx
nop
nop
nop
nop
add $44667, %r10
movl $0x51525354, (%rdx)
nop
nop
xor %rdi, %rdi

// Load
mov $0x54bdf90000000ea1, %r11
and %rsi, %rsi
movups (%r11), %xmm1
vpextrq $1, %xmm1, %rdx
nop
nop
nop
nop
cmp $39543, %r11

// Store
lea addresses_RW+0xe7a1, %rdi
nop
nop
nop
nop
nop
cmp %r10, %r10
movl $0x51525354, (%rdi)
cmp %r10, %r10

// Load
lea addresses_UC+0x2ca1, %r11
nop
nop
nop
nop
nop
cmp %rsi, %rsi
vmovaps (%r11), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %r15

// Exception!!!
nop
nop
nop
nop
nop
mov (0), %rdi
nop
nop
nop
nop
cmp %r11, %r11

// Load
lea addresses_D+0x18ea1, %rdx
nop
nop
nop
cmp $17260, %rdi
mov (%rdx), %r10w
add $44856, %rsi

// Store
lea addresses_A+0xf221, %r11
nop
dec %rsi
movb $0x51, (%r11)
nop
nop
nop
nop
nop
add $11461, %rdx

// Store
lea addresses_D+0x56a1, %rbx
nop
nop
nop
nop
nop
sub %rdi, %rdi
mov $0x5152535455565758, %rdx
movq %rdx, (%rbx)
add %rdx, %rdx

// Faulty Load
mov $0x54bdf90000000ea1, %rdi
sub $1677, %r10
movb (%rdi), %r11b
lea oracles, %r10
and $0xff, %r11
shlq $12, %r11
mov (%r10,%r11,1), %r11
pop %rsi
pop %rdx
pop %rdi
pop %rbx
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 4, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 2, 'NT': True, 'type': 'addresses_PSE', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_WC', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WT', 'size': 4, 'AVXalign': False}}
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': True, 'type': 'addresses_RW', 'size': 4, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_UC', 'size': 32, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_D', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_A', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_D', 'size': 8, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 1, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 2, 'NT': True, 'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 3, 'NT': True, 'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': True}}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False}}
{'00': 129}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
