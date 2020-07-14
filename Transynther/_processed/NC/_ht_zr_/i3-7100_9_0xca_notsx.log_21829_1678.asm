.global s_prepare_buffers
s_prepare_buffers:
push %r8
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0xd88c, %rsi
lea addresses_normal_ht+0x178d4, %rdi
nop
nop
add $38225, %rbp
mov $45, %rcx
rep movsb
nop
nop
nop
add $19634, %rsi
lea addresses_A_ht+0xdd4c, %rdx
nop
nop
inc %r9
mov $0x6162636465666768, %rbx
movq %rbx, (%rdx)
nop
nop
cmp %r9, %r9
lea addresses_WT_ht+0x7f4c, %rbx
clflush (%rbx)
nop
nop
nop
nop
nop
xor %rsi, %rsi
movw $0x6162, (%rbx)
sub $49249, %r9
lea addresses_WT_ht+0x17dc8, %rsi
lea addresses_A_ht+0x1c44c, %rdi
nop
nop
nop
nop
dec %r8
mov $74, %rcx
rep movsw
nop
nop
nop
nop
dec %rbp
lea addresses_D_ht+0x1c144, %r9
nop
nop
nop
nop
nop
sub %r8, %r8
mov (%r9), %bx
nop
nop
xor %rcx, %rcx
lea addresses_D_ht+0xa4c, %r9
nop
nop
nop
nop
sub %rdi, %rdi
mov (%r9), %rcx
inc %r9
lea addresses_normal_ht+0x894c, %r8
cmp $50099, %rbp
movw $0x6162, (%r8)
add $6510, %rcx
lea addresses_normal_ht+0x1bb64, %rbx
nop
nop
nop
cmp $9375, %rdi
movb $0x61, (%rbx)
nop
dec %r9
lea addresses_WT_ht+0x32ac, %rsi
lea addresses_D_ht+0x15d4c, %rdi
nop
nop
nop
nop
and $57562, %rbp
mov $107, %rcx
rep movsb
nop
nop
sub %r9, %r9
lea addresses_A_ht+0x180cc, %r8
clflush (%r8)
cmp %r9, %r9
mov $0x6162636465666768, %rcx
movq %rcx, %xmm1
movups %xmm1, (%r8)
nop
xor %r8, %r8
lea addresses_D_ht+0x38bc, %rsi
lea addresses_normal_ht+0x1a39e, %rdi
nop
lfence
mov $85, %rcx
rep movsl
nop
nop
nop
dec %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r8
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_PSE+0x4cca, %rsi
lea addresses_UC+0xb94c, %rdi
nop
nop
sub %r12, %r12
mov $0, %rcx
rep movsq
nop
cmp $50025, %rdi

// Store
lea addresses_PSE+0xad4c, %rdi
nop
nop
add %rsi, %rsi
mov $0x5152535455565758, %r9
movq %r9, (%rdi)
cmp $20712, %rdi

// Load
lea addresses_PSE+0xef4c, %rsi
nop
nop
nop
nop
cmp $52462, %rbx
mov (%rsi), %r12d
xor %r12, %r12

// Store
lea addresses_UC+0x1714c, %r9
nop
nop
nop
nop
nop
inc %rdx
movb $0x51, (%r9)
nop
cmp $14331, %rbx

// Load
lea addresses_US+0x514c, %rsi
nop
nop
nop
nop
nop
xor $62788, %rdx
movups (%rsi), %xmm5
vpextrq $1, %xmm5, %r12
nop
nop
xor %r9, %r9

// Store
lea addresses_WT+0x5444, %rbx
nop
nop
nop
nop
nop
xor $39512, %rcx
movb $0x51, (%rbx)
nop
nop
nop
nop
cmp $26330, %rbx

// Store
lea addresses_WC+0xa44, %r9
nop
nop
xor %rdi, %rdi
mov $0x5152535455565758, %rbx
movq %rbx, (%r9)
xor $5311, %rcx

// Store
lea addresses_A+0x199b8, %rsi
nop
nop
nop
xor %rcx, %rcx
movw $0x5152, (%rsi)

// Exception!!!
nop
mov (0), %r9
nop
nop
nop
nop
xor $26615, %r9

// Load
lea addresses_normal+0x17bcc, %rdi
nop
nop
nop
nop
sub %rcx, %rcx
mov (%rdi), %esi
nop
nop
nop
nop
and $9715, %rdi

// Store
lea addresses_PSE+0xf14c, %rcx
nop
nop
nop
add %rdi, %rdi
movw $0x5152, (%rcx)
nop
nop
sub %rdi, %rdi

// Faulty Load
mov $0x2fe86f000000014c, %rsi
nop
nop
nop
nop
nop
xor %rdi, %rdi
vmovups (%rsi), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r9
lea oracles, %rsi
and $0xff, %r9
shlq $12, %r9
mov (%rsi,%r9,1), %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 4, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_PSE', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_PSE', 'size': 8, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_PSE', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_UC', 'size': 1, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_US', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_WT', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_WC', 'size': 8, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_A', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_normal', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_PSE', 'size': 2, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 9, 'NT': False, 'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': True}}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 8, 'NT': False, 'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'45': 1390, '00': 18807, '49': 1625, '46': 7}
00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 49 00 45 00 00 00 49 49 00 00 00 00 45 00 49 00 00 00 00 00 45 00 00 00 00 00 00 00 49 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 49 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 49 00 00 00 00 00 00 45 00 45 00 00 00 49 00 00 45 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 45 00 00 49 00 00 49 00 00 00 00 00 00 00 45 00 00 00 00 00 45 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 45 00 00 49 45 00 00 49 00 00 49 49 00 00 00 49 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 45 00 00 00 45 00 00 45 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 49 00 00 00 00 00 00 00 00 45 00 00 49 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 49 00 00 00 00 49 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 45 00 00 00 49 45 00 49 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 45 00 00 00 49 00 49 00 00 00 49 00 00 00 45 00 00 00 49 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 45 00 00 00 00 00 00 00 49 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 49 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 49 00 00 00 49 00 00 00 00 00 00 00 00 45 00 00 00 00 49 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 45 00 00 00 49 49 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 49 49 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 49 00 00 00 49 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 49 00 00 00 00 00 49 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 45 00 00 00 00 00 49 00 00 00 00 49 49 00 00 00 00 00 00 00 00 00 45 45 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 45 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 49 45 00 00 00 00 00 00 00 49 45 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 45 00 49 00 00 00 45 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 49 49 00 00 00 00 00 00 45 00 45 00 00 00 00 49 00 00 00 00 00 49 00 00 49 00 00 00 49 00 00 00 00 00 00 00 00 49 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 49 00 00 00 00 00 00 00 00
*/
