.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x171e2, %rsi
lea addresses_A_ht+0x1768a, %rdi
nop
nop
nop
nop
sub %rbx, %rbx
mov $63, %rcx
rep movsb
nop
nop
nop
nop
xor $18260, %rsi
lea addresses_WT_ht+0x123a, %rsi
lea addresses_WC_ht+0x18a8a, %rdi
clflush (%rdi)
nop
nop
nop
nop
dec %r15
mov $0, %rcx
rep movsb
xor %rsi, %rsi
lea addresses_UC_ht+0x848a, %rbx
nop
nop
and %rbp, %rbp
mov $0x6162636465666768, %r15
movq %r15, %xmm3
vmovups %ymm3, (%rbx)
nop
nop
xor %rbx, %rbx
lea addresses_UC_ht+0x1252a, %rbp
nop
nop
dec %r10
movw $0x6162, (%rbp)
nop
inc %rcx
lea addresses_WT_ht+0xda3e, %r10
sub %r15, %r15
mov (%r10), %si
nop
xor $23223, %rbx
lea addresses_WT_ht+0xe28a, %rsi
nop
nop
nop
nop
and $65139, %r15
mov (%rsi), %edi
nop
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_D_ht+0x16e8a, %rsi
lea addresses_UC_ht+0xf7b1, %rdi
clflush (%rsi)
nop
nop
add $65361, %r12
mov $21, %rcx
rep movsw
nop
nop
nop
nop
nop
xor $36098, %rbp
lea addresses_UC_ht+0xaa3a, %rcx
nop
nop
dec %rbx
mov $0x6162636465666768, %r15
movq %r15, %xmm2
movups %xmm2, (%rcx)
add %rcx, %rcx
lea addresses_A_ht+0x1724a, %rsi
lea addresses_D_ht+0xf0ca, %rdi
nop
nop
nop
nop
add %r12, %r12
mov $22, %rcx
rep movsq
nop
nop
nop
nop
nop
xor $47845, %r15
lea addresses_UC_ht+0x4e32, %r12
nop
nop
sub $8495, %rdi
mov (%r12), %r15d
nop
and $52340, %rbp
lea addresses_normal_ht+0xed6a, %r15
nop
nop
nop
cmp $28752, %rbx
mov $0x6162636465666768, %rbp
movq %rbp, %xmm6
movups %xmm6, (%r15)
nop
nop
nop
nop
xor $50707, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_RW+0x1fe2a, %r11
sub $30687, %rbp
mov (%r11), %rax
and $11218, %rbp

// Store
lea addresses_WC+0x648a, %r10
nop
nop
nop
cmp %r15, %r15
movw $0x5152, (%r10)
nop
nop
add %r11, %r11

// REPMOV
lea addresses_UC+0x11dca, %rsi
lea addresses_A+0x1b14a, %rdi
nop
nop
nop
and %rax, %rax
mov $3, %rcx
rep movsl
nop
nop
nop
nop
nop
inc %r10

// Store
lea addresses_WC+0xe376, %rax
xor %rdi, %rdi
movb $0x51, (%rax)
nop
xor $10682, %r15

// Store
lea addresses_WC+0x15dca, %rsi
nop
nop
nop
nop
nop
add %r15, %r15
mov $0x5152535455565758, %r11
movq %r11, %xmm0
vmovups %ymm0, (%rsi)
mfence

// Load
lea addresses_PSE+0xe536, %r15
nop
nop
cmp %rcx, %rcx
movups (%r15), %xmm4
vpextrq $0, %xmm4, %rdi
nop
nop
nop
nop
sub $9119, %rbp

// Store
mov $0x4f967000000048a, %rax
nop
nop
and $24245, %rbp
mov $0x5152535455565758, %r10
movq %r10, (%rax)
nop
nop
nop
cmp $20634, %rax

// Store
lea addresses_normal+0x1130a, %r10
nop
nop
nop
nop
cmp $47716, %r13
mov $0x5152535455565758, %r11
movq %r11, (%r10)
nop
sub %r15, %r15

// Store
mov $0x4a, %rbp
nop
nop
nop
nop
and %r10, %r10
mov $0x5152535455565758, %rcx
movq %rcx, %xmm0
movups %xmm0, (%rbp)
nop
nop
nop
nop
nop
add $2786, %rdx

// Store
lea addresses_RW+0x9c3a, %rax
nop
nop
nop
nop
nop
xor %rbp, %rbp
mov $0x5152535455565758, %r15
movq %r15, %xmm2
vmovups %ymm2, (%rax)
nop
xor %rdi, %rdi

// Store
lea addresses_WC+0x149ca, %r15
xor $25549, %rcx
mov $0x5152535455565758, %rsi
movq %rsi, (%r15)
nop
nop
and %rsi, %rsi

// Faulty Load
lea addresses_A+0xba8a, %rsi
nop
sub %rax, %rax
mov (%rsi), %di
lea oracles, %r11
and $0xff, %rdi
shlq $12, %rdi
mov (%r11,%rdi,1), %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': True, 'type': 'addresses_A', 'size': 8, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_RW', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WC', 'size': 2, 'AVXalign': False}}
{'src': {'type': 'addresses_UC', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_WC', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_WC', 'size': 32, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_PSE', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_NC', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_normal', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_P', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_RW', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_WC', 'size': 8, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 11, 'NT': True, 'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': True}}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False}}
{'00': 388}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
