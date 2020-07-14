.global s_prepare_buffers
s_prepare_buffers:
push %r9
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x5d4b, %rsi
nop
nop
add $4095, %rax
mov (%rsi), %rbx
nop
nop
nop
sub $21548, %rsi
lea addresses_UC_ht+0x15e9d, %rdi
nop
nop
nop
nop
sub %r9, %r9
mov $0x6162636465666768, %rdx
movq %rdx, %xmm0
vmovups %ymm0, (%rdi)
nop
nop
nop
nop
nop
cmp $12065, %rax
lea addresses_WT_ht+0xb11d, %rsi
lea addresses_D_ht+0x14f8, %rdi
clflush (%rdi)
nop
nop
cmp %rbp, %rbp
mov $38, %rcx
rep movsw
nop
nop
nop
nop
nop
add %r9, %r9
lea addresses_D_ht+0xe024, %rdi
nop
add $60836, %rsi
movw $0x6162, (%rdi)
nop
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_D_ht+0x7625, %rsi
lea addresses_WC_ht+0xbe9d, %rdi
nop
inc %r9
mov $29, %rcx
rep movsq
nop
xor %rax, %rax
lea addresses_WC_ht+0xc49d, %rsi
lea addresses_WC_ht+0x132d, %rdi
nop
nop
nop
nop
xor $63964, %rbx
mov $9, %rcx
rep movsw
dec %rdx
lea addresses_UC_ht+0x1cb9, %rdi
nop
xor $65239, %rdx
movb $0x61, (%rdi)
nop
nop
nop
dec %rcx
lea addresses_A_ht+0x707d, %rsi
lea addresses_normal_ht+0x5d, %rdi
nop
nop
nop
nop
nop
and %r9, %r9
mov $110, %rcx
rep movsq
nop
nop
nop
nop
nop
inc %rax
lea addresses_normal_ht+0x169fd, %rsi
lea addresses_D_ht+0x1601d, %rdi
nop
nop
add $61917, %rbx
mov $10, %rcx
rep movsb
nop
nop
cmp %rsi, %rsi
lea addresses_WC_ht+0x1c66d, %rsi
lea addresses_WT_ht+0x17b9d, %rdi
nop
nop
nop
nop
nop
cmp %rbx, %rbx
mov $37, %rcx
rep movsb
nop
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_normal_ht+0x1b433, %rbp
clflush (%rbp)
nop
nop
nop
add %rdx, %rdx
movups (%rbp), %xmm1
vpextrq $0, %xmm1, %r9
nop
nop
dec %rdx
lea addresses_D_ht+0x1c69d, %rdi
nop
nop
nop
nop
nop
sub %r9, %r9
mov (%rdi), %rcx
nop
nop
and %r9, %r9
lea addresses_WT_ht+0x1579d, %rdi
nop
nop
nop
nop
and %rbx, %rbx
mov (%rdi), %esi
nop
nop
and $47808, %rcx
lea addresses_A_ht+0x9a7d, %rax
clflush (%rax)
nop
nop
nop
nop
nop
and $2135, %rdi
mov $0x6162636465666768, %r9
movq %r9, %xmm7
movups %xmm7, (%rax)
nop
nop
nop
nop
and %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r9
push %rax
push %rcx
push %rdi
push %rdx

// Store
lea addresses_A+0x13f9d, %rdx
clflush (%rdx)
dec %rax
movl $0x51525354, (%rdx)
nop
nop
nop
inc %rax

// Load
lea addresses_WC+0xbc81, %rax
nop
nop
cmp %r14, %r14
vmovups (%rax), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rdx
nop
xor $18131, %rdx

// Store
lea addresses_WC+0x1dcf9, %rdi
nop
and $4705, %r14
movb $0x51, (%rdi)
nop
nop
nop
xor %rcx, %rcx

// Load
lea addresses_D+0x1ea5d, %r9
nop
nop
nop
xor %rcx, %rcx
movups (%r9), %xmm5
vpextrq $0, %xmm5, %r14
cmp $61447, %rax

// Store
lea addresses_PSE+0x889d, %r9
add $3007, %r12
movb $0x51, (%r9)

// Exception!!!
nop
mov (0), %rax
nop
nop
cmp %rdi, %rdi

// Store
lea addresses_WT+0x829d, %r12
clflush (%r12)
nop
nop
nop
nop
nop
sub $30737, %r9
mov $0x5152535455565758, %rax
movq %rax, (%r12)
nop
nop
nop
nop
nop
add %r14, %r14

// Store
lea addresses_WT+0x1a29d, %r12
nop
xor $49595, %rdi
mov $0x5152535455565758, %r14
movq %r14, %xmm4
vmovups %ymm4, (%r12)
sub $21645, %rax

// Load
lea addresses_UC+0x1d7e5, %r12
nop
cmp %rcx, %rcx
mov (%r12), %r9
add $49705, %r14

// Store
lea addresses_WC+0x734d, %rax
add $40720, %r12
movw $0x5152, (%rax)
nop
nop
nop
nop
nop
sub $29371, %r9

// Store
lea addresses_PSE+0x3a9d, %r14
and %rax, %rax
mov $0x5152535455565758, %rcx
movq %rcx, %xmm7
movups %xmm7, (%r14)
nop
add %rdi, %rdi

// Store
lea addresses_normal+0x13675, %r9
nop
nop
nop
inc %rdi
movl $0x51525354, (%r9)
nop
and $4761, %r14

// Store
lea addresses_WT+0xd5fd, %rax
dec %rdx
mov $0x5152535455565758, %r12
movq %r12, %xmm5
movups %xmm5, (%rax)
nop
nop
nop
nop
nop
add $30558, %rdx

// Store
lea addresses_WC+0x1aa9d, %rdx
nop
nop
sub $62953, %r9
mov $0x5152535455565758, %rdi
movq %rdi, %xmm4
vmovups %ymm4, (%rdx)
nop
nop
nop
nop
nop
sub $21173, %r12

// Faulty Load
lea addresses_PSE+0x3a9d, %rax
clflush (%rax)
dec %r9
mov (%rax), %dx
lea oracles, %rcx
and $0xff, %rdx
shlq $12, %rdx
mov (%rcx,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_A', 'size': 4, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_WC', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WC', 'size': 1, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_D', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_PSE', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_WT', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_WT', 'size': 32, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_UC', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WC', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WT', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_WC', 'size': 32, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 2, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_D_ht', 'size': 8, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': True, 'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_D_ht', 'size': 8, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 3, 'NT': False, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False}}
{'58': 14354}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
