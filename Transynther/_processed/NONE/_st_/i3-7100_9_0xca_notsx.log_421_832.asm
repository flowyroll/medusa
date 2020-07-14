.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0xdc69, %rsi
lea addresses_WT_ht+0x1aa91, %rdi
cmp %r9, %r9
mov $2, %rcx
rep movsq
nop
nop
xor %r10, %r10
lea addresses_A_ht+0x11291, %r10
and %rdx, %rdx
mov (%r10), %esi
nop
nop
nop
nop
and $48609, %rdi
lea addresses_A_ht+0xf911, %rsi
lea addresses_UC_ht+0x16a91, %rdi
nop
nop
cmp %r9, %r9
mov $44, %rcx
rep movsb
nop
nop
nop
nop
nop
and $16584, %r9
lea addresses_A_ht+0x3e6f, %rdi
nop
nop
nop
nop
nop
sub $29246, %rax
mov (%rdi), %r10w
add %r9, %r9
lea addresses_WT_ht+0x17991, %rsi
lea addresses_D_ht+0xb671, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
sub %r9, %r9
mov $118, %rcx
rep movsl
nop
nop
nop
nop
inc %r9
lea addresses_WT_ht+0x15e91, %r10
sub %rdx, %rdx
mov (%r10), %si
nop
nop
nop
nop
cmp $38124, %rax
lea addresses_WC_ht+0x149e1, %rsi
lea addresses_UC_ht+0x494a, %rdi
clflush (%rsi)
clflush (%rdi)
sub $27068, %rbp
mov $2, %rcx
rep movsw
nop
nop
cmp $25060, %rdx
lea addresses_D_ht+0x12c91, %rsi
lea addresses_A_ht+0x10bc5, %rdi
clflush (%rdi)
nop
add %rdx, %rdx
mov $114, %rcx
rep movsl
xor %rdi, %rdi
lea addresses_normal_ht+0x18c91, %rsi
lea addresses_WT_ht+0xce91, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
sub %rax, %rax
mov $26, %rcx
rep movsl
nop
nop
nop
sub $47001, %r10
lea addresses_A_ht+0xf691, %rsi
lea addresses_WT_ht+0x14a91, %rdi
clflush (%rsi)
nop
nop
sub %rbp, %rbp
mov $68, %rcx
rep movsb
dec %rsi
lea addresses_WT_ht+0x1be91, %rdx
nop
nop
nop
sub $30168, %rcx
mov (%rdx), %r10
nop
nop
cmp %rsi, %rsi
pop %rsi
pop %rdx
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
push %r15
push %r9
push %rax
push %rbp
push %rcx

// Store
lea addresses_PSE+0x15ed1, %rax
clflush (%rax)
nop
nop
dec %r9
mov $0x5152535455565758, %rcx
movq %rcx, (%rax)
nop
nop
nop
dec %rax

// Store
lea addresses_RW+0xf361, %rbp
nop
nop
nop
and $23857, %r13
movw $0x5152, (%rbp)

// Exception!!!
nop
mov (0), %rbp
nop
nop
nop
cmp %rbp, %rbp

// Load
lea addresses_normal+0x6661, %rax
nop
and $56641, %r15
mov (%rax), %r10d
nop
nop
xor %rbp, %rbp

// Load
mov $0x4b29bc0000000f41, %rax
nop
nop
nop
nop
nop
xor %r13, %r13
mov (%rax), %r10

// Exception!!!
nop
nop
nop
nop
nop
mov (0), %rax
nop
nop
nop
inc %r15

// Store
lea addresses_normal+0xce91, %rax
nop
nop
nop
nop
xor %rbp, %rbp
mov $0x5152535455565758, %r15
movq %r15, %xmm6
movups %xmm6, (%rax)
nop
nop
nop
nop
nop
inc %rbp

// Store
lea addresses_D+0xffa1, %rax
nop
nop
nop
nop
nop
cmp $38263, %rcx
mov $0x5152535455565758, %r10
movq %r10, (%rax)
nop
nop
nop
nop
sub $45904, %r10

// Store
lea addresses_US+0x183c1, %r15
nop
nop
nop
xor %rcx, %rcx
mov $0x5152535455565758, %rax
movq %rax, (%r15)
nop
nop
add $36374, %rbp

// Load
lea addresses_A+0x1e91, %rax
nop
nop
nop
nop
xor $29393, %r15
mov (%rax), %rcx
nop
nop
nop
nop
cmp $26888, %r13

// Store
lea addresses_RW+0x7a91, %r15
dec %r10
movw $0x5152, (%r15)
nop
nop
cmp $56420, %r10

// Faulty Load
lea addresses_A+0x1e91, %r9
nop
nop
nop
nop
nop
cmp $38268, %r13
movb (%r9), %r15b
lea oracles, %r9
and $0xff, %r15
shlq $12, %r15
mov (%r9,%r15,1), %r15
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_PSE', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_RW', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_normal', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_NC', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_normal', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_D', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_US', 'size': 8, 'AVXalign': False}}
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_RW', 'size': 2, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': True}}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': True}}
{'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': True}}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': True}, 'OP': 'LOAD'}
{'58': 421}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
