.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xd3a6, %rsi
lea addresses_WC_ht+0xbfa6, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
inc %rax
mov $80, %rcx
rep movsb
nop
nop
nop
mfence
lea addresses_normal_ht+0xcda6, %rsi
lea addresses_WT_ht+0x1ec2c, %rdi
clflush (%rdi)
xor %rbp, %rbp
mov $95, %rcx
rep movsb
nop
nop
nop
nop
nop
and %rax, %rax
lea addresses_WT_ht+0x12a6, %r10
nop
nop
sub %rax, %rax
mov (%r10), %edi
nop
nop
nop
nop
dec %rdi
lea addresses_D_ht+0x13306, %r10
nop
xor %rax, %rax
movb (%r10), %cl
nop
nop
nop
sub %rcx, %rcx
lea addresses_WC_ht+0x8a86, %r10
nop
nop
nop
nop
nop
and $30792, %r12
movb (%r10), %cl
nop
nop
nop
add $10564, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_RW+0xb3a6, %rsi
lea addresses_WC+0x9aae, %rdi
nop
nop
nop
nop
cmp $64600, %r9
mov $116, %rcx
rep movsb
nop
nop
nop
cmp %rsi, %rsi

// Store
lea addresses_D+0x18e46, %rbx
nop
nop
nop
nop
nop
and %rcx, %rcx
movl $0x51525354, (%rbx)
nop
add %r8, %r8

// Store
lea addresses_RW+0x2da6, %r9
dec %r8
movb $0x51, (%r9)
nop
sub %rdi, %rdi

// Store
lea addresses_PSE+0x1e5a6, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
xor $15849, %rdi
movb $0x51, (%rcx)
nop
nop
nop
nop
nop
and %rcx, %rcx

// Store
lea addresses_WT+0x9a26, %r8
nop
nop
nop
nop
nop
xor %rsi, %rsi
movb $0x51, (%r8)
add %r8, %r8

// Store
lea addresses_D+0x1d716, %rdi
nop
nop
cmp %r9, %r9
mov $0x5152535455565758, %r13
movq %r13, %xmm1
movups %xmm1, (%rdi)
nop
nop
add $55940, %rcx

// Store
lea addresses_RW+0x16166, %rdi
nop
nop
nop
nop
sub $21676, %r13
movw $0x5152, (%rdi)
and %rsi, %rsi

// Load
lea addresses_US+0x63a6, %rsi
nop
and %r13, %r13
mov (%rsi), %r8
nop
nop
dec %r9

// Store
lea addresses_normal+0x19936, %rbx
nop
nop
nop
and $17, %r9
mov $0x5152535455565758, %rsi
movq %rsi, %xmm1
vmovups %ymm1, (%rbx)
nop
nop
add %rsi, %rsi

// Faulty Load
lea addresses_A+0x163a6, %r13
nop
sub %rsi, %rsi
vmovups (%r13), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %r8
lea oracles, %r13
and $0xff, %r8
shlq $12, %r8
mov (%r13,%r8,1), %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_RW', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'32': 880, '00': 42}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 32 32 32 32 00 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 32 32 00 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 00 32 32 32 32 32 32 00 32 32 32 32 32 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 00 32 32 32 32 32 32 32 32 32 32 32 32 00 32 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 32 32 00 32 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 32 32 32 32 00 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 32 32 00 32 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 32 32 32 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 32 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
