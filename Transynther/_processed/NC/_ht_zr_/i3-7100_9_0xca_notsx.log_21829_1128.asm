.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x17b91, %r15
add $47257, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm5
movups %xmm5, (%r15)
nop
nop
nop
nop
nop
cmp $55970, %r12
lea addresses_UC_ht+0x19b07, %rsi
lea addresses_WT_ht+0x16549, %rdi
clflush (%rdi)
nop
nop
and %r9, %r9
mov $34, %rcx
rep movsb
nop
nop
nop
dec %rcx
lea addresses_WT_ht+0x12909, %rdi
nop
nop
nop
nop
xor $59812, %rax
and $0xffffffffffffffc0, %rdi
vmovntdqa (%rdi), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rsi
nop
nop
nop
nop
inc %r9
lea addresses_normal_ht+0x15109, %rax
xor $5247, %r12
movl $0x61626364, (%rax)
nop
nop
sub $44557, %r9
lea addresses_WT_ht+0x1c509, %r12
nop
nop
nop
nop
and %r9, %r9
mov (%r12), %si
nop
and %rcx, %rcx
lea addresses_D_ht+0x79a1, %rax
nop
nop
nop
nop
nop
xor %r12, %r12
movw $0x6162, (%rax)
nop
nop
nop
cmp $63066, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r8
push %rax
push %rdi
push %rdx
push %rsi

// Store
mov $0xf09, %r14
nop
xor $38184, %r15
movb $0x51, (%r14)
nop
nop
nop
nop
nop
and $18254, %r14

// Load
mov $0x5639900000000a89, %rax
nop
nop
nop
nop
sub %rdi, %rdi
movb (%rax), %dl
cmp %rax, %rax

// Store
lea addresses_RW+0xb771, %rdx
inc %rsi
movl $0x51525354, (%rdx)
nop
nop
nop
and %r8, %r8

// Load
lea addresses_US+0xe689, %rsi
nop
inc %r8
movb (%rsi), %dl
nop
nop
nop
xor %rax, %rax

// Load
lea addresses_WC+0xf909, %r14
nop
cmp $12460, %rax
mov (%r14), %di
nop
nop
nop
nop
nop
inc %r14

// Store
lea addresses_US+0x13ec9, %r15
inc %rax
mov $0x5152535455565758, %rdx
movq %rdx, %xmm5
movups %xmm5, (%r15)
nop
nop
nop
nop
sub %rdi, %rdi

// Store
mov $0xe49, %rax
nop
nop
nop
add %r15, %r15
movl $0x51525354, (%rax)
nop
nop
nop
nop
nop
sub $41645, %rdx

// Store
lea addresses_D+0x11df9, %rax
nop
nop
nop
sub $22542, %r15
mov $0x5152535455565758, %r8
movq %r8, (%rax)
nop
nop
nop
nop
sub %r14, %r14

// Store
lea addresses_normal+0x179e9, %rax
nop
nop
nop
nop
cmp %r14, %r14
movb $0x51, (%rax)
nop
nop
and %rax, %rax

// Faulty Load
mov $0x6899db0000000509, %rax
nop
nop
nop
nop
and $33546, %r8
movups (%rax), %xmm5
vpextrq $1, %xmm5, %rdi
lea oracles, %rdx
and $0xff, %rdi
shlq $12, %rdi
mov (%rdx,%rdi,1), %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rax
pop %r8
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_P', 'size': 1, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_NC', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_RW', 'size': 4, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_US', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_WC', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_US', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_P', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_D', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_normal', 'size': 1, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'src': {'same': False, 'congruent': 10, 'NT': True, 'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False}}
{'00': 11727, '49': 10102}
49 00 00 00 00 00 00 49 00 00 00 00 00 49 00 49 00 49 00 00 00 49 49 49 00 00 00 49 00 49 00 00 00 00 49 49 00 00 49 00 00 00 00 49 49 00 49 00 00 00 00 00 00 00 49 00 49 49 00 49 00 00 49 00 49 00 49 49 49 49 49 00 00 00 49 49 00 49 00 00 00 49 00 00 00 00 49 49 49 49 49 00 00 00 00 49 00 00 49 00 00 49 49 00 00 00 00 00 00 00 49 00 00 49 00 00 00 49 00 49 00 49 49 00 00 49 00 00 49 49 00 00 00 49 00 49 49 00 00 49 00 00 49 00 00 00 00 49 00 00 49 49 49 49 49 00 49 49 00 00 00 49 00 49 00 49 00 00 49 49 49 00 49 00 00 49 00 49 00 49 00 00 00 00 00 49 49 00 49 49 00 49 00 49 00 49 00 49 00 49 00 49 49 49 00 49 00 49 00 00 49 00 49 00 49 00 00 49 00 49 00 49 49 49 00 49 49 00 00 00 00 00 49 49 00 00 49 00 49 00 49 00 49 00 49 49 00 00 00 49 00 00 49 49 00 49 49 00 49 49 00 49 00 49 00 49 00 00 00 00 49 00 49 49 49 00 49 00 49 00 00 00 00 49 00 00 49 49 00 00 00 49 00 00 49 00 49 00 49 00 49 00 00 49 00 49 00 49 49 49 00 00 49 00 49 00 49 00 00 49 00 00 49 00 49 00 49 00 00 00 00 49 49 00 00 49 00 00 49 00 00 49 00 00 49 00 49 49 00 00 00 49 00 00 49 49 00 49 49 00 00 49 49 00 49 00 00 00 49 00 49 49 00 49 49 00 49 49 00 00 49 49 00 49 00 00 00 49 49 00 00 00 49 00 00 49 00 00 49 00 00 00 49 00 49 49 00 00 49 00 49 00 00 49 00 49 00 49 49 49 49 49 00 49 49 00 49 00 49 49 00 49 00 00 49 49 00 00 49 49 00 00 49 00 49 00 49 49 00 49 00 49 00 49 00 49 49 00 49 00 00 49 49 00 00 49 00 00 00 49 49 00 49 00 00 49 00 49 00 49 49 00 00 49 49 00 49 00 00 00 49 00 00 49 00 00 00 00 00 49 00 49 49 00 49 49 00 00 49 00 00 49 00 00 49 00 49 00 00 00 49 49 00 49 49 00 49 00 00 49 49 00 00 00 49 00 49 00 49 00 49 00 49 00 49 00 49 49 00 00 49 49 49 00 49 49 00 49 00 49 49 00 00 00 49 00 49 00 49 49 00 49 00 49 49 49 00 49 00 49 00 49 00 00 49 00 00 00 49 49 49 00 00 49 00 49 00 49 00 49 00 00 00 00 49 00 00 49 00 00 49 00 49 00 00 00 00 00 00 49 00 49 49 00 00 49 00 49 00 49 49 49 49 49 00 00 49 49 49 49 00 49 00 49 00 49 00 00 00 49 00 49 49 00 49 00 00 49 49 00 49 00 49 00 49 00 49 49 00 49 49 00 00 00 49 00 00 49 00 00 49 00 49 00 49 00 00 00 49 00 00 49 49 49 00 49 00 49 00 00 49 00 00 49 49 49 00 00 49 00 49 00 49 00 00 49 49 00 49 00 49 00 00 49 00 49 49 00 00 49 00 49 00 49 00 00 00 00 49 00 00 49 00 49 00 00 49 00 49 49 00 49 00 00 00 49 49 49 00 00 00 00 00 49 00 49 49 49 00 49 49 49 00 49 00 00 00 49 49 49 49 00 00 00 00 00 49 00 00 00 49 00 00 49 00 49 00 49 00 49 00 00 49 00 49 00 00 00 49 00 49 00 00 00 00 49 00 49 00 00 49 00 49 00 49 00 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 49 00 00 49 00 49 49 00 00 00 49 00 00 00 00 49 00 49 00 49 49 00 49 49 49 00 49 00 00 49 00 49 00 49 00 00 49 00 00 49 00 49 00 49 00 49 49 00 49 00 49 00 00 00 00 49 00 49 49 00 49 00 49 00 49 00 00 49 00 00 00 49 00 00 00 49 00 49 00 49 00 49 00 49 00 49 00 00 49 00 00 00 49 00 00 49 00 49 00 00 00 49 00 49 00 00 00 49 00 49 00 49 00 00 49 00 49 00 00 00 49 00 49 00 00 49 00 49 00 49 00 49 00 00 49 00 49 49 00 49 00 00 00 49 00 00 49 49 00 49 00 49 00 00 00 49
*/
