.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x6e09, %rbx
nop
sub $22497, %r13
movw $0x6162, (%rbx)
nop
nop
dec %rbp
lea addresses_normal_ht+0xd1a5, %r9
nop
sub $45776, %r15
mov $0x6162636465666768, %rcx
movq %rcx, %xmm2
and $0xffffffffffffffc0, %r9
vmovaps %ymm2, (%r9)
nop
nop
nop
sub $15990, %rbx
lea addresses_UC_ht+0x5c65, %r13
nop
nop
nop
nop
xor %rcx, %rcx
movb (%r13), %r12b
nop
nop
xor $48143, %r13
lea addresses_WT_ht+0xf395, %r12
nop
nop
cmp %r15, %r15
mov (%r12), %r13w
nop
nop
xor %rcx, %rcx
lea addresses_UC_ht+0xeb65, %r13
nop
nop
nop
nop
cmp $60715, %rcx
movl $0x61626364, (%r13)
nop
nop
nop
nop
nop
sub $60772, %r12
lea addresses_WT_ht+0x1a62d, %r15
nop
nop
nop
sub $3468, %rcx
movb $0x61, (%r15)
nop
nop
nop
sub %rbx, %rbx
lea addresses_normal_ht+0x19e47, %rbx
nop
dec %rcx
mov (%rbx), %bp
nop
and $10783, %rcx
lea addresses_WC_ht+0x9765, %rsi
lea addresses_A_ht+0x18fdd, %rdi
nop
xor %r12, %r12
mov $8, %rcx
rep movsw
nop
nop
xor $56945, %rsi
lea addresses_UC_ht+0x48a5, %rsi
lea addresses_UC_ht+0x19565, %rdi
nop
nop
nop
inc %r9
mov $78, %rcx
rep movsw
nop
nop
nop
nop
sub %r12, %r12
lea addresses_normal_ht+0x1dc6d, %rsi
lea addresses_WT_ht+0x301d, %rdi
nop
xor %r13, %r13
mov $47, %rcx
rep movsb
nop
cmp %r13, %r13
lea addresses_WC_ht+0x91e5, %rbp
nop
nop
nop
sub %r15, %r15
and $0xffffffffffffffc0, %rbp
vmovntdqa (%rbp), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %r12
nop
nop
xor %r13, %r13
lea addresses_normal_ht+0x4a65, %rcx
nop
nop
nop
nop
nop
add %rbx, %rbx
mov $0x6162636465666768, %r15
movq %r15, (%rcx)
and %rbp, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r15
push %rbp
push %rcx
push %rsi

// Store
mov $0x614d580000000865, %r12
nop
dec %rsi
movw $0x5152, (%r12)
nop
nop
nop
nop
nop
xor $8961, %r12

// Load
lea addresses_A+0x9365, %rbp
nop
nop
nop
nop
dec %rcx
vmovups (%rbp), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r15
sub $13845, %r15

// Store
lea addresses_UC+0xef29, %r14
nop
nop
nop
nop
nop
inc %r12
mov $0x5152535455565758, %rcx
movq %rcx, %xmm5
movups %xmm5, (%r14)
nop
nop
nop
nop
xor $14027, %r15

// Faulty Load
mov $0x1833320000000365, %r12
nop
nop
nop
nop
nop
xor %rbp, %rbp
vmovups (%r12), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %r14
lea oracles, %r15
and $0xff, %r14
shlq $12, %r14
mov (%r15,%r14,1), %r14
pop %rsi
pop %rcx
pop %rbp
pop %r15
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 32, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_NC', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_A', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_UC', 'size': 16, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': True}}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}}
{'src': {'same': False, 'congruent': 6, 'NT': True, 'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False}}
{'00': 66, '48': 79}
48 00 00 00 00 48 48 00 48 48 00 00 48 48 00 48 48 00 48 00 48 00 48 00 00 00 00 48 48 00 48 48 00 00 00 00 00 48 48 00 48 00 48 00 48 48 48 48 00 48 00 48 00 00 48 48 48 48 00 00 00 48 48 48 00 48 00 48 00 48 48 48 48 00 48 00 00 00 48 00 00 00 00 48 00 48 48 00 48 00 00 00 48 48 48 48 48 00 00 48 48 48 48 00 00 00 00 48 00 48 00 48 48 48 00 48 48 48 00 48 48 48 48 48 00 48 48 48 00 00 48 48 48 48 48 00 48 00 00 48 48 00 00 00 48
*/
